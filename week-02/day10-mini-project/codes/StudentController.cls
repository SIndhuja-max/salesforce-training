public with sharing class StudentController {

    @AuraEnabled(cacheable=true)
    public static List<Student__c> getStudents() {

        return [
            SELECT Id,
                   Name,
                   Email__c,
                   Attendance__c,
                   Student_Eligibility_Status__c
            FROM Student__c
            LIMIT 20
        ];
    }
}
