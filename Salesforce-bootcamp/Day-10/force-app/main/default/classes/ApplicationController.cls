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
}