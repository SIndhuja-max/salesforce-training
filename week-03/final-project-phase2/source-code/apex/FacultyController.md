# FacultyController Apex Class

## Purpose

Provides faculty records to the Faculty Dashboard Lightning Web Component.

## Apex Code

```apex
public with sharing class FacultyController {

    @AuraEnabled(cacheable=true)
    public static List<Faculty__c> getFaculty() {

        return [
           SELECT Id,
                  Name,
                  Email__c,
                  Department__c,
                  Department__r.Name
           FROM Faculty__c
           LIMIT 20
        ];
    }
}
```

## Features

* Uses SOQL Query
* Uses @AuraEnabled(cacheable=true)
* Supports LWC Integration
* Uses with sharing for security

```
```
