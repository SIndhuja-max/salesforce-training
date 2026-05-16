# Salesforce Day 6 Notes
## SOQL, SOSL, DML & Apex Triggers

---

# Introduction

Salesforce is a cloud-based CRM platform that stores large amounts of business data such as customers, students, faculty, payments, courses, and activities.

To work with this data effectively, Salesforce provides:
- SOQL
- SOSL
- DML Operations
- Apex Triggers
- Automation Tools

These components help enterprise systems become intelligent and event-driven.

---

# What is SOQL?

SOQL stands for Salesforce Object Query Language.

It is used to retrieve data from Salesforce objects.

SOQL is similar to SQL but designed specifically for Salesforce databases.

---

# Features of SOQL

- Retrieves records from Salesforce objects
- Supports filtering using WHERE clause
- Supports sorting using ORDER BY
- Retrieves related object data
- Used inside Apex code
- Optimized for Salesforce architecture

---

# Basic SOQL Syntax

```sql
SELECT fields
FROM ObjectName
WHERE condition
```
## Example 1
```sql
SELECT Name, Email__c
FROM Student__c
```
This query retrieves student names and email addresses.

#3 Example 2
```sql
SELECT Name, Attendance__c
FROM Student__c
WHERE Attendance__c < 75
```
This retrieves students whose attendance is below 75%.

## Example 3
```sql
SELECT Name
FROM Course__c
ORDER BY Name
```
This retrieves all courses sorted alphabetically.

## Real-World Uses of SOQL
- Fetch student records
- Generate attendance reports
- Find pending fee payments
- Retrieve faculty information
- Build dashboards and reports
#  What is SOSL?

SOSL stands for Salesforce Object Search Language.

It is used to search text across multiple Salesforce objects simultaneously.

Unlike SOQL, SOSL focuses on searching rather than retrieving structured records.

## Features of SOSL
- Searches multiple objects together
- Faster text searching
- Useful for global search functionality
- Finds matching keywords
## Basic SOSL Syntax
```sql
FIND 'keyword'
IN ALL FIELDS
RETURNING ObjectName(fields)
```
### Example
```sql
FIND 'Rahul'
IN ALL FIELDS
RETURNING Student__c(Name), Faculty__c(Name)
```
This searches for the keyword "Rahul" in multiple objects.

# SOQL vs SOSL
| SOQL                | SOSL                      |
| ------------------- | ------------------------- |
| Retrieves records   | Searches text             |
| Works on one object | Works on multiple objects |
| Similar to SQL      | Similar to search engine  |
| Structured queries  | Keyword-based searching   |

# What are DML Operations?

DML stands for Data Manipulation Language.

DML operations are used to create and modify Salesforce records.

## Types of DML Operations
1. Insert

Adds new records.
```apex
Student__c s = new Student__c(Name='Aman');
insert s;
```
2. Update

Modifies existing records.
```apex
s.Name = 'Rahul';
update s;
```
3. Delete
Removes records.
```apex
delete s;
```
4. Upsert

Updates existing records or inserts new records if they do not exist.
```apex
upsert s;
```
# What is Apex?

Apex is Salesforce’s programming language.
It is strongly typed and object-oriented.
Developers use Apex to:
- Write business logic
- Automate operations
- Create triggers
- Integrate external systems
# What is an Apex Trigger?

An Apex Trigger is code that executes automatically when data changes happen in Salesforce.

Triggers react to events such as:

- Insert
- Update
- Delete
- Undelete

Triggers are part of event-driven architecture.

Trigger Syntax
```apex
trigger StudentTrigger on Student__c(before insert) {

    for(Student__c s : Trigger.new) {
        s.Status__c = 'Active';
    }
}
```
# Trigger Events
| Event          | Description                     |
| -------------- | ------------------------------- |
| before insert  | Before record creation          |
| after insert   | After record creation           |
| before update  | Before updating records         |
| after update   | After updating records          |
| before delete  | Before deletion                 |
| after delete   | After deletion                  |
| after undelete | After restoring deleted records |

## Before Trigger

Before triggers run before records are saved to the database.
Used for:
- Validation
- Modifying field values
- Preventing invalid data
### Example

Automatically set attendance status before saving.

## After Trigger

After triggers run after records are committed to the database.
Used for:
- Sending emails
- Updating related records
- Logging actions
- API integrations
### Example

Send welcome email after student registration.

# Trigger Lifecycle
1.User performs action
2.Trigger event occurs
3.Before trigger executes
4.Validation rules execute
5.Record saved to database
6.After trigger executes
7.Additional automation runs

This sequence is called the trigger lifecycle.

# What is Event-Driven Architecture?

Event-driven architecture means systems react automatically when events occur.

### Example:

- Student registers
- System automatically sends email
- Attendance changes
- Warning notification generated

Enterprise systems rely heavily on event-driven behavior.

## Why Event-Driven Systems Are Important
- Reduce manual work
- Increase automation
- Improve efficiency
- Provide real-time response
- Reduce human errors
# Flow vs Trigger
| Flow                       | Trigger                |
| -------------------------- | ---------------------- |
| No-code/low-code           | Code-based             |
| Easier to maintain         | More flexible          |
| Best for simple automation | Best for complex logic |
| Admin-friendly             | Developer-focused      |

# When to Use Flow

Use Flow when:
- Logic is simple
- No complex calculations required
- Automation is straightforward
- Quick development is needed

### Examples:

- Email alerts
- Field updates
- Approval notifications
# When to Use Trigger

Use Trigger when:

- Complex business rules exist
- Multiple related objects involved
- External API integration needed
- Advanced calculations required

### Examples:

- Scholarship eligibility validation
-Fee calculation systems
-Cross-object synchronization
# Real-World Trigger Examples
## Student Registration
After student registration:
- Send welcome email
- Generate student ID
 ##  Attendance Monitoring
After attendance update:
- Detect attendance shortage
- Send warnings automatically
## Fee Management
After payment update:
- Generate payment receipt
- Update finance records
# Important Learning Outcome
- This topic explains how enterprise software behaves intelligently using automation and event-driven logic.
- SOQL retrieves data.
- DML modifies data.
- Triggers automate reactions to events.
- Flows simplify automation without heavy coding.

Together, these features make Salesforce powerful for enterprise applications.
