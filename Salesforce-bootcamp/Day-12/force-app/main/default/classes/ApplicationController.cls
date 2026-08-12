public with sharing class ApplicationController {

    @AuraEnabled
    public static String submitApplication(
        Id studentId,
        Id jobId
    ) {

        return ApplicationService.submitApplication(
            studentId,
            jobId,
            Date.today()
        );
    }


    @AuraEnabled(cacheable=true)
    public static List<Application__c> getMyApplications(
        Id studentId
    ) {

        return [
            SELECT Id,
                   Job__c,
                   Job__r.Name,
                   Application_Date__c,
                   Status__c
            FROM Application__c
            WHERE Student__c = :studentId
            ORDER BY Application_Date__c DESC
        ];
    }


    @AuraEnabled(cacheable=true)
    public static Map<String, Integer> getJobStatistics() {

        Map<String, Integer> statistics =
            new Map<String, Integer>();

        Integer totalJobs = [
            SELECT COUNT()
            FROM Job__c
        ];

        Integer openJobs = [
            SELECT COUNT()
            FROM Job__c
            WHERE Last_Date__c >= TODAY
        ];

        statistics.put('companies', totalJobs);
        statistics.put('openJobs', openJobs);

        return statistics;
    }


    @AuraEnabled
    public static String retryCandidateSync(
        Id applicationId
    ) {

        return ApplicationService.retryCandidateSync(
            applicationId
        );
    }

    @AuraEnabled(cacheable=true)
public static List<Application__c> getApplicationsForIntegration() {

    return [
        SELECT
            Id,
            Student__c,
            Student__r.Name,
            Job__c,
            Job__r.Name,
            Status__c,
            Application_Date__c,
            Integration_Status__c,
            External_Candidate_Id__c,
            Last_Integration_Attempt__c,
            Integration_Error__c
        FROM Application__c
        WHERE Status__c = 'Selected'
        ORDER BY Last_Integration_Attempt__c DESC NULLS LAST
    ];
}
}