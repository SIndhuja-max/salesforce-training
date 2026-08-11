public with sharing class PlacementCategoryBatch
implements Database.Batchable<SObject> {

    public Database.QueryLocator start(
        Database.BatchableContext context
    ){

        return Database.getQueryLocator([

            SELECT Id
            FROM Application__c
            WHERE Id != NULL

        ]);

    }

    public void execute(
        Database.BatchableContext context,
        List<Application__c> scope
    ){

        for(Application__c app : scope){

            // Calculate Placement Category

        }

        update scope;

    }

    public void finish(
        Database.BatchableContext context
    ){

        // Completion Activity

    }

}