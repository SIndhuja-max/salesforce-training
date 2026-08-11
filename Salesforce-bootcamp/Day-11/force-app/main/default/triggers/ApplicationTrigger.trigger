trigger ApplicationTrigger on Application__c (
    before insert,
    after update
) {

    if (Trigger.isBefore && Trigger.isInsert) {

        ApplicationService.handleBeforeInsert(Trigger.new);

    }

    if (Trigger.isAfter && Trigger.isUpdate) {

        ApplicationService.handleAfterUpdate(
            Trigger.new,
            Trigger.oldMap
        );

    }

}