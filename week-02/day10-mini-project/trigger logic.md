# Apex Trigger Logic

## Introduction

Apex Triggers allow Salesforce developers to execute custom logic automatically when records are inserted, updated, deleted, or restored.

In this project, a trigger was created to monitor course capacity and identify when a course becomes full.

This demonstrates event-driven programming within Salesforce.

---

# Trigger Overview

## Trigger Name

```text
CourseTrigger
```

## Object

```text
Course__c
```

## Event

```text
Before Update
```

---

# Business Requirement

When the number of filled seats reaches or exceeds the total number of seats available in a course, the system should identify the course as full.

Without automation:

- Administrators must manually check enrollment counts.
- Full courses may continue accepting registrations.
- Reporting may become inaccurate.

The trigger automatically monitors seat availability.

---

# Trigger Code

```apex
trigger CourseTrigger on Course__c (before update) {

    for(Course__c course : Trigger.new) {

        if(course.Filled_Seats__c >= course.Total_Seats__c) {

            System.debug('Course is Full: ' + course.Name);

        }

    }

}
```

---

# Trigger Architecture

```text
Course Record Updated
           ↓
Trigger Fires
           ↓
Check Filled Seats
           ↓
Filled Seats >= Total Seats ?
         /          \
       Yes          No
        ↓            ↓
 Log Message     Continue
```

---

# Code Explanation

## Trigger Declaration

```apex
trigger CourseTrigger on Course__c (before update)
```

The trigger executes whenever a Course record is updated.

---

## Loop Through Records

```apex
for(Course__c course : Trigger.new)
```

Processes each Course record being updated.

---

## Capacity Check

```apex
course.Filled_Seats__c >= course.Total_Seats__c
```

Checks whether course capacity has been reached.

---

## Debug Statement

```apex
System.debug('Course is Full: ' + course.Name);
```

Outputs a message to Salesforce debug logs.

---

# Test Scenario

## Input

| Total Seats | Filled Seats |
|------------|------------|
| 60 | 60 |

---

## Trigger Execution

Course record updated.

---

## Expected Result

```text
Course is Full: Salesforce Development
```

---

## Actual Result

Debug message generated.

---

## Status

✅ Passed

---

# Screenshot

![Course Trigger](screenshots/course-trigger.png)

---

# Benefits

The trigger provides:

- Automatic course capacity monitoring
- Event-driven processing
- Reduced manual checking
- Better enrollment tracking

---

# Learning Outcome

Through Apex Triggers, I learned how Salesforce responds automatically to record events.

This implementation demonstrates:

- Trigger Events
- Trigger Context Variables
- Conditional Logic
- Event-Driven Programming
- Debug Logging

These concepts are essential for building enterprise Salesforce applications.

---

# Conclusion

The CourseTrigger successfully monitors course enrollment and detects when a course reaches maximum capacity.

This demonstrates how Apex Triggers can automate business logic and react to database events in real time.
