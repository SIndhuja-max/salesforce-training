public with sharing class OfferPostProcessingJob implements Queueable {

    private Id offerId;

    public OfferPostProcessingJob(Id offerId){

        this.offerId = offerId;

    }

    public void execute(QueueableContext context){

    System.enqueueJob(
        new ExternalPlacementSyncJob(offerId)
    );

}

}
