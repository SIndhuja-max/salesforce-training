public with sharing class ExpiredJobScheduler
implements Schedulable {

    public void execute(
        SchedulableContext context
    ){

        Database.executeBatch(
            new PlacementCategoryBatch(),
            200
        );

    }

}
