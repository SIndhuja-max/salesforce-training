public with sharing class CandidateSyncQueueable implements Queueable, Database.AllowsCallouts {

    private Id applicationId;

    public CandidateSyncQueueable(Id applicationId) {
        this.applicationId = applicationId;
    }

    public void execute(QueueableContext context) {

        Application__c applicationRecord;

        try {

            applicationRecord = [
                SELECT
                    Id,
                    Status__c,
                    Application_Date__c,
                    Integration_Status__c,
                    External_Candidate_Id__c,
                    Last_Integration_Attempt__c,
                    Integration_Error__c,

                    Student__c,
                    Student__r.Name,
                    Student__r.Email__c,
                    Student__r.Branch__c,
                    Student__r.CGPA__c,

                    Job__c,
                    Job__r.Name,
                    Job__r.Company__c,
                    Job__r.Role__c

                FROM Application__c
                WHERE Id = :applicationId
                LIMIT 1
            ];

        } catch (Exception e) {

            System.debug(
                'Unable to load Application: ' + e.getMessage()
            );

            return;
        }


        /*
         * Only Selected applications should be synchronized.
         */
        if (applicationRecord.Status__c != 'Selected') {
            return;
        }


        /*
         * Idempotency protection.
         *
         * If an external candidate already exists,
         * do not submit the candidate again.
         */
        if (
            String.isNotBlank(
                applicationRecord.External_Candidate_Id__c
            )
        ) {
            return;
        }


        /*
         * Record the attempt in memory.
         *
         * IMPORTANT:
         * Do NOT perform DML here because the HTTP callout
         * must happen before any DML in this transaction.
         */
        applicationRecord.Last_Integration_Attempt__c =
            System.now();

        applicationRecord.Integration_Status__c =
            'Pending';

        applicationRecord.Integration_Error__c =
            null;


        /*
         * Prepare candidate payload.
         */
        Map<String, Object> candidateData =
            new Map<String, Object>();

        candidateData.put(
            'studentId',
            String.valueOf(applicationRecord.Student__c)
        );

        candidateData.put(
            'name',
            applicationRecord.Student__r.Name
        );

        candidateData.put(
            'email',
            applicationRecord.Student__r.Email__c
        );

        candidateData.put(
            'branch',
            applicationRecord.Student__r.Branch__c
        );

        candidateData.put(
            'cgpa',
            applicationRecord.Student__r.CGPA__c
        );

        candidateData.put(
            'jobId',
            String.valueOf(applicationRecord.Job__c)
        );

        candidateData.put(
            'company',
            applicationRecord.Job__r.Company__c
        );

        candidateData.put(
            'role',
            applicationRecord.Job__r.Role__c
        );

        candidateData.put(
            'selectionDate',
            String.valueOf(
                applicationRecord.Application_Date__c
            )
        );


        String requestBody =
            JSON.serialize(candidateData);


        /*
         * Create HTTP request.
         */
        HttpRequest request =
            new HttpRequest();

        request.setEndpoint(
            'callout:Recruitment_API/post'
        );

        request.setMethod('POST');

        request.setHeader(
            'Content-Type',
            'application/json'
        );

        request.setBody(requestBody);

        request.setTimeout(120000);


        Http http =
            new Http();

        HttpResponse response;


        /*
         * Perform the callout BEFORE any DML.
         */
        try {

            response =
                http.send(request);

        } catch (Exception e) {

            handleFailure(
                applicationRecord,
                'Callout exception: ' +
                e.getMessage()
            );

            return;
        }


        Integer statusCode =
            response.getStatusCode();

        String responseBody =
            response.getBody();


        /*
         * Successful response.
         *
         * Postman Echo returns 200.
         * Our real recruitment API contract expects 201.
         *
         * The prototype accepts both.
         */
        if (
            statusCode == 200 ||
            statusCode == 201
        ) {

            String externalCandidateId =
                extractExternalCandidateId(
                    responseBody
                );


            /*
             * Postman Echo does not create a real
             * recruitment candidate ID.
             *
             * Therefore generate a mock ID for
             * demonstration purposes.
             */
            if (
                String.isBlank(
                    externalCandidateId
                )
            ) {

                externalCandidateId =
                    'MOCK-' +
                    String.valueOf(
                        applicationRecord.Id
                    );
            }


            applicationRecord.External_Candidate_Id__c =
                externalCandidateId;

            applicationRecord.Integration_Status__c =
                'Sent';

            applicationRecord.Integration_Error__c =
                null;


            /*
             * DML happens AFTER the callout.
             */
            update applicationRecord;

        } else if (
            statusCode == 400
        ) {

            handleFailure(
                applicationRecord,
                '400 Bad Request: ' +
                responseBody
            );

        } else if (
            statusCode == 401
        ) {

            handleFailure(
                applicationRecord,
                '401 Unauthorized: ' +
                responseBody
            );

        } else if (
            statusCode == 403
        ) {

            handleFailure(
                applicationRecord,
                '403 Forbidden: ' +
                responseBody
            );

        } else if (
            statusCode >= 500
        ) {

            applicationRecord.Integration_Status__c =
                'Retry Required';

            applicationRecord.Integration_Error__c =
                truncateError(
                    'HTTP ' +
                    statusCode +
                    ': ' +
                    responseBody
                );


            /*
             * DML happens AFTER the callout.
             */
            update applicationRecord;

        } else {

            handleFailure(
                applicationRecord,
                'Unexpected HTTP ' +
                statusCode +
                ': ' +
                responseBody
            );
        }
    }


    private static void handleFailure(
        Application__c applicationRecord,
        String errorMessage
    ) {

        applicationRecord.Integration_Status__c =
            'Failed';

        applicationRecord.Integration_Error__c =
            truncateError(errorMessage);


        /*
         * DML happens after the callout attempt.
         */
        update applicationRecord;
    }


    private static String truncateError(
        String errorMessage
    ) {

        if (String.isBlank(errorMessage)) {

            return 'Unknown integration error';
        }

        Integer maxLength = 32000;

        if (
            errorMessage.length() >
            maxLength
        ) {

            return errorMessage.substring(
                0,
                maxLength
            );
        }

        return errorMessage;
    }


    private static String extractExternalCandidateId(
        String responseBody
    ) {

        if (String.isBlank(responseBody)) {
            return null;
        }

        try {

            Map<String, Object> responseData =
                (Map<String, Object>)
                JSON.deserializeUntyped(
                    responseBody
                );

            if (
                responseData.containsKey(
                    'externalCandidateId'
                )
            ) {

                Object value =
                    responseData.get(
                        'externalCandidateId'
                    );

                if (value != null) {

                    return String.valueOf(value);
                }
            }

        } catch (Exception e) {

            System.debug(
                'Unable to parse external candidate ID: ' +
                e.getMessage()
            );
        }

        return null;
    }
}