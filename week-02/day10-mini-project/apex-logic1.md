# Apex Logic

## Introduction

Apex is Salesforce's programming language used to implement custom business logic.

In this project, an Apex Controller was developed to provide student information to a Lightning Web Component dashboard.

The controller retrieves student records using SOQL and exposes them to the Lightning framework.

---

# Apex Class Overview

## Class Name

```text
StudentController
```

## Purpose

Retrieve student records and provide them to the Student Dashboard Lightning Web Component.

---

# Business Requirement

The Student Dashboard should display student information dynamically from Salesforce records.

Instead of manually entering information into the UI, the dashboard retrieves data directly from Salesforce.

---

# Apex Class Code

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

---

# Architecture

```text
Student Records
        ↓
SOQL Query
        ↓
StudentController
        ↓
LWC Student Dashboard
        ↓
Display Data
```

---

# Code Explanation

## Class Declaration

```apex
public with sharing class StudentController
```

Ensures record-level security is respected.

---

## AuraEnabled Annotation

```apex
@AuraEnabled(cacheable=true)
```

Allows the method to be called from Lightning Web Components.

Caching improves performance.

---

## Method

```apex
public static List<Student__c> getStudents()
```

Returns a collection of Student records.

---

## SOQL Query

```apex
SELECT Id,
       Name,
       Email__c,
       Attendance__c,
       Student_Eligibility_Status__c
FROM Student__c
LIMIT 20
```

Retrieves student information from Salesforce.

---

# Data Retrieved

| Field | Purpose |
|---------|---------|
| Name | Student Name |
| Email__c | Student Email |
| Attendance__c | Attendance Percentage |
| Student_Eligibility_Status__c | Eligibility Status |

---

# Test Scenario

## Student Record

| Name | Attendance | Eligibility |
|--------|------------|------------|
| Sindhuja | 90% | Eligible |

---

## Expected Result

Dashboard displays student information.

---

## Actual Result

Dashboard displays student information successfully.

---

## Status

✅ Passed

---

# Screenshot

![Student Controller](screenshots/student-controller.png)

---

# Benefits

The controller provides:

- Centralized business logic
- Dynamic data retrieval
- Lightning Web Component integration
- Better scalability

---

# Learning Outcome

Through Apex Controllers, I learned how Salesforce connects backend data with Lightning Web Components.

This implementation demonstrates:

- Apex Classes
- SOQL Queries
- AuraEnabled Methods
- LWC Integration
- Backend Development

---

# Conclusion

The StudentController class successfully retrieves student information and provides it to the Lightning Web Component dashboard, enabling dynamic and scalable UI development.
