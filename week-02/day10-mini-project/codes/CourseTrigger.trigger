trigger CourseTrigger on Course__c (before update) {

    for(Course__c course : Trigger.new) {

        if(course.Filled_Seats__c >= course.Total_Seats__c) {

            System.debug('Course is Full: ' + course.Name);

        }

    }

}
