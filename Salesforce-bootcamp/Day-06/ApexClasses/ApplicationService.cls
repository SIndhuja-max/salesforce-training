public with sharing class ApplicationService {

    public static String submitApplication(
    Id studentId,
    Id jobId,
    Date applicationDate
){
    Student__c student = getStudent(studentId);
    Job__c job = getJob(jobId);

    if(checkDuplicate(studentId, jobId)){
        return 'You have already applied for this job.';
    }

    if(!validateEligibility(student, job)){
    return 'Student is not eligible for this job.';
    }

    if(!validateDeadline(job, applicationDate)){
        return 'Application deadline has expired.';
    }

    try{

    Application__c application = createApplication(
        studentId,
        jobId,
        applicationDate
    );

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
    private static Student__c getStudent(Id studentId){

    return [

        SELECT Id,
               Name,
               CGPA__c
        FROM Student__c
        WHERE Id = :studentId
        LIMIT 1

    ];

}
private static Job__c getJob(Id jobId){

    return [

        SELECT Id,
               Name,
               Minimum_CGPA__c,
               Last_Date__c
        FROM Job__c
        WHERE Id = :jobId
        LIMIT 1

    ];

}


    private static Boolean validateEligibility(
         Student__c student,
         Job__c job
    ){

    if(student.CGPA__c < job.Minimum_CGPA__c){

        return false;

    }

        return true;

    }
    private static Boolean validateDeadline(
    Job__c job,
    Date applicationDate
){

    return applicationDate <= job.Last_Date__c;

}
private static Application__c createApplication(
    Id studentId,
    Id jobId,
    Date applicationDate
){

    Application__c application = new Application__c();

    application.Student__c = studentId;
    application.Job__c = jobId;
    application.Application_Date__c = applicationDate;

    return application;

}
public static String updateApplicationStatus(
    Id applicationId,
    String status
){

    try{

        Application__c application = [

            SELECT Id, Status__c
            FROM Application__c
            WHERE Id = :applicationId
            LIMIT 1

        ];

        application.Status__c = status;

        update application;

        return 'Application status updated successfully.';

    }
    catch(Exception e){

        return 'Error: ' + e.getMessage();

    }

}

}
