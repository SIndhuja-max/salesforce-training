# StudentController Apex Class

## Purpose

The StudentController class provides student data to the Student Dashboard Lightning Web Component.

## Apex Code

```apex
public with sharing class StudentController {

    @AuraEnabled(cacheable=true)
    public static List<Student__c> getStudents() {

        return [
            SELECT Id,
                   Name,
                   Email__c,
                   Attendance__c,
                   Student_Eligibility_Status__c
            FROM Student__c
            LIMIT 20
        ];
    }
}
```

## SOQL Fields Retrieved

* Id
* Name
* Email__c
* Attendance__c
* Student_Eligibility_Status__c

## Features

* Uses SOQL Query
* Supports LWC Integration
* Uses @AuraEnabled(cacheable=true)
* Uses with sharing security model

## Architecture

```text
Student Dashboard
        ↓
StudentController
        ↓
SOQL Query
        ↓
Student Records
```

## Business Benefits

* Displays student information dynamically
* Reduces manual data retrieval
* Supports dashboard analytics
