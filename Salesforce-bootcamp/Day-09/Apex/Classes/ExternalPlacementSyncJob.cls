public with sharing class ExternalPlacementSyncJob
implements Queueable {

    private Id offerId;

    public ExternalPlacementSyncJob(Id offerId){

        this.offerId = offerId;

    }

    public void execute(QueueableContext context){

        // External system synchronization

        System.enqueueJob(
            new PlacementNotificationJob(offerId)
        );

    }

}
