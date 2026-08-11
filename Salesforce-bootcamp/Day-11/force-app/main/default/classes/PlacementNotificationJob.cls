public with sharing class PlacementNotificationJob
implements Queueable {

    private Id offerId;

    public PlacementNotificationJob(Id offerId){

        this.offerId = offerId;

    }

    public void execute(QueueableContext context){

        // Notification processing

    }

}