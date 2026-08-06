public with sharing class ApplicationService {

    public static String submitApplication(
    Id studentId,
    Id jobId,
    Date applicationDate
){

    if(checkDuplicate(studentId, jobId)){
        return 'You have already applied for this job.';
    }

    if(!validateEligibility(studentId, jobId)){
        return 'Student is not eligible for this job.';
    }

    if(!validateDeadline(jobId, applicationDate)){
        return 'Application deadline has expired.';
    }

    try{

        Application__c application = new Application__c();

        application.Student__c = studentId;
        application.Job__c = jobId;
        application.Application_Date__c = applicationDate;

        insert application;

        return 'Application submitted successfully.';

    }
    catch(Exception e){

        return 'Error: ' + e.getMessage();

    }

}

    private static Boolean checkDuplicate(Id studentId, Id jobId){

        List<Application__c> existingApplications = [

            SELECT Id
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job__c = :jobId
            LIMIT 1

        ];

        return !existingApplications.isEmpty();

    }

    private static Boolean validateEligibility(
        Id studentId,
        Id jobId
    ){

         Student__c student = [

        SELECT CGPA__c
        FROM Student__c
        WHERE Id = :studentId

    ];

    Job__c job = [

        SELECT Minimum_CGPA__c
        FROM Job__c
        WHERE Id = :jobId

    ];

    if(student.CGPA__c < job.Minimum_CGPA__c){

        return false;

    }

        return true;

    }
    private static Boolean validateDeadline(
    Id jobId,
    Date applicationDate
){

    Job__c job = [

        SELECT Last_Date__c
        FROM Job__c
        WHERE Id = :jobId

    ];

    return applicationDate <= job.Last_Date__c;

}

}
