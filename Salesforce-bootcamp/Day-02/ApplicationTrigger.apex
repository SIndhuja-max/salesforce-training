trigger ApplicationTrigger on Application__c (before insert) {

    Set<Id> studentIds=new Set<Id>();
    Set<Id> jobIds=new Set<Id>();

     for (Application__c app : Trigger.new) {
        if (app.Student__c != null) {

            studentIds.add(app.Student__c);

        }
       if (app.Job__c != null) {

            jobIds.add(app.Job__c);

        }

    }

    Map<Id, Student__c> studentMap = new Map<Id, Student__c>(

    [

        SELECT Id, Name, CGPA__c

        FROM Student__c

        WHERE Id IN :studentIds

    ]

);

Map<Id, Job__c> jobMap = new Map<Id, Job__c>(

    [

        SELECT Id,

               Name,

               Minimum_CGPA__c,

               Last_Date__c

        FROM Job__c

        WHERE Id IN :jobIds

    ]

);

List<Application__c> existingApplications = [

    SELECT Student__c, Job__c

    FROM Application__c

    WHERE Student__c IN :studentIds

    AND Job__c IN :jobIds

];

Set<String> existingApplicationKeys = new Set<String>();

for (Application__c app : existingApplications) {

  String key = app.Student__c + '-' + app.Job__c;

    existingApplicationKeys.add(key);

}

for(Application__c app : Trigger.new){

    Student__c student = studentMap.get(app.Student__c);

    Job__c job = jobMap.get(app.Job__c);

    String key = app.Student__c + '-' + app.Job__c;

if(existingApplicationKeys.contains(key)){

    app.addError('Student has already applied for this job.');

}

if(student.CGPA__c < job.Minimum_CGPA__c){

    app.addError('Student CGPA is below the minimum required CGPA.');

}

if(Date.today() > job.Last_Date__c){

    app.addError('Application deadline has passed.');

}

   app.Status__c = 'Applied';

}





}
