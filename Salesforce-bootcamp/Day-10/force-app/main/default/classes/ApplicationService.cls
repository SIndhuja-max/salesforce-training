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

    private static Set<String> getExistingApplications(
    Set<Id> studentIds,
    Set<Id> jobIds
){

    Set<String> existingApplications = new Set<String>();

    for(Application__c app : [

        SELECT Student__c, Job__c
        FROM Application__c
        WHERE Student__c IN :studentIds
        AND Job__c IN :jobIds

    ]){

        existingApplications.add(
            app.Student__c + '-' + app.Job__c
        );

    }

    return existingApplications;

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

// Queue background processing
if(status == 'Selected'){

    System.enqueueJob(
        new OfferPostProcessingJob(application.Id)
    );

}

return 'Application status updated successfully.';

    }
    catch(Exception e){

        return 'Error: ' + e.getMessage();

    }

}
public static void handleBeforeInsert(
    List<Application__c> newApplications
){

    Set<Id> studentIds = new Set<Id>();
    Set<Id> jobIds = new Set<Id>();

    for(Application__c app : newApplications){

        if(app.Student__c != null){
            studentIds.add(app.Student__c);
        }

        if(app.Job__c != null){
            jobIds.add(app.Job__c);
        }

    }

    Map<Id, Student__c> studentsById =
        new Map<Id, Student__c>([
            SELECT Id,
                   CGPA__c
            FROM Student__c
            WHERE Id IN :studentIds
        ]);

    Map<Id, Job__c> jobsById =
        new Map<Id, Job__c>([
            SELECT Id,
                   Minimum_CGPA__c,
                   Last_Date__c
            FROM Job__c
            WHERE Id IN :jobIds
        ]);

    Set<String> existingApplications =
        getExistingApplications(studentIds, jobIds);

    for(Application__c app : newApplications){

        Student__c student = studentsById.get(app.Student__c);
        Job__c job = jobsById.get(app.Job__c);

        if(student == null || job == null){
            continue;
        }

        String key = app.Student__c + '-' + app.Job__c;

        if(existingApplications.contains(key)){
            app.addError(
                'You have already applied for this job.'
            );
            continue;
        }

        if(!validateEligibility(student, job)){
            app.addError(
                'Student is not eligible for this job.'
            );
            continue;
        }

        if(!validateDeadline(job, app.Application_Date__c)){
            app.addError(
                'Application deadline has expired.'
            );
        }

    }

}

    


public static void handleAfterUpdate(
    List<Application__c> newApplications,
    Map<Id, Application__c> oldMap
){

    List<Application__c> selectedApplications =
        new List<Application__c>();

    for(Application__c application : newApplications){

        Application__c oldApplication =
            oldMap.get(application.Id);

        if(application.Status__c == 'Selected'
        && oldApplication.Status__c != 'Selected'){

            selectedApplications.add(application);

        }
    }

    if(!selectedApplications.isEmpty()){

    StatisticsService.updatePlacementStatistics(
        selectedApplications
    );

    NotificationService.sendNotifications(
        selectedApplications
    );

}

}

public static List<Job__c> getEligibleJobs(Id studentId) {

    Student__c student = getStudent(studentId);

    List<Job__c> jobs = [
        SELECT Id,
               Name,
               Minimum_CGPA__c,
               Last_Date__c
        FROM Job__c
        WHERE Last_Date__c >= :Date.today()
    ];

    List<Job__c> eligibleJobs = new List<Job__c>();

    for (Job__c job : jobs) {

        if (validateEligibility(student, job)) {
            eligibleJobs.add(job);
        }

    }

    return eligibleJobs;
}
}