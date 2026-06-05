# CourseTrigger Apex Trigger

## Purpose

The CourseTrigger monitors course seat capacity during record updates.

## Trigger Code

```apex
trigger CourseTrigger on Course__c (before update) {

    for(Course__c course : Trigger.new) {

        if(course.Filled_Seats__c >= course.Total_Seats__c) {
            System.debug('Course is Full: ' + course.Name);
        }

    }
}
```

## Trigger Type

```text
Before Update
```

## Business Logic

```text
Filled Seats >= Total Seats
            ↓
Course Full Detected
```

## Example

### Before Update

```text
Course Name: Salesforce Development
Total Seats: 60
Filled Seats: 59
```

### After Update

```text
Course Name: Salesforce Development
Total Seats: 60
Filled Seats: 60
```

### Result

```text
Course is Full: Salesforce Development
```

## Architecture

```text
Course Record Updated
          ↓
CourseTrigger Executes
          ↓
Seat Validation Logic
          ↓
Debug Message Generated
```

## Features

* Uses Trigger Context Variables
* Executes Before Update
* Detects Full Courses
* Supports Enrollment Monitoring

## Business Benefits

* Helps monitor course capacity
* Supports enrollment management
* Demonstrates Apex Trigger development
