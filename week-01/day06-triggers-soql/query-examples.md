# Query Examples
## SOQL Thinking & Business Queries

This document contains example queries for a College Management System using Salesforce query concepts.

The purpose is to understand how enterprise systems retrieve and analyze data.

---

# What is Querying?

Querying means retrieving useful information from a database.

In Salesforce:
- SOQL retrieves structured records
- SOSL searches keywords across objects

Queries help organizations:
- Analyze business data
- Generate reports
- Track performance
- Make decisions

---

# Student Queries

## 1. Find all students enrolled in Java course

Query:
Retrieve all students who are enrolled in the Java course.

### SOQL Example

```sql
SELECT Name
FROM Student__c
WHERE Course__c = 'Java'
```
## 2. Find students with attendance below 75%
Query:
Retrieve students whose attendance percentage is below 75%.
### SOQL Example
```sql
SELECT Name, Attendance__c
FROM Student__c
WHERE Attendance__c < 75
```
## 3. Find students with pending fee payments
Query:
Retrieve students whose fee payment status is pending.

### SOQL Example
```sql
SELECT Name, Fee_Status__c
FROM Student__c
WHERE Fee_Status__c = 'Pending'
```
## 4. Find final year students
Query:
Retrieve all students currently studying in final year.

### SOQL Example
```sql
SELECT Name, Year__c
FROM Student__c
WHERE Year__c = 'Final Year'
```
# Faculty Queries
## 5. Find all courses handled by Faculty Ravi
Query:
Retrieve all courses assigned to Faculty Ravi.
### SOQL Example
```sql
SELECT Name
FROM Course__c
WHERE Faculty__c = 'Ravi'
```
## 6. Find faculty teaching more than 3 courses
Query:
Retrieve faculty members handling multiple courses.
### SOQL Thinking
This may require:
- Aggregate queries
- Relationship queries
- Record counting
# Course Queries
## 7. Find courses with maximum enrollments
Query:
Retrieve courses having the highest number of enrolled students.
### Business Purpose
Helps management:
- Analyze course demand
- Allocate faculty properly
- Plan infrastructure
## 8. Find courses with available seats
Query:
Retrieve courses where seats are still available.
## SOQL Thinking
Compare:
- Maximum capacity
- Current enrollment count
- Attendance Queries
## 9. Find students with perfect attendance
Query:
Retrieve students with 100% attendance.

### SOQL Example
```sql
SELECT Name
FROM Student__c
WHERE Attendance__c = 100
```
## 10. Find students eligible for attendance warning
Query:
Retrieve students whose attendance is critically low.
### SOQL Example
```sql
SELECT Name, Attendance__c
FROM Student__c
WHERE Attendance__c < 60
```
# Payment Queries
## 11. Find students who completed fee payment
Query:

Retrieve students who fully paid their fees.

### SOQL Example
```sql
SELECT Name
FROM Student__c
WHERE Fee_Status__c = 'Paid'
```
## 12. Find students with overdue payments
Query:

Retrieve students whose payment deadline has passed.

### Business Importance

Helps finance department:

- Track pending payments
- Send reminders
- Maintain financial records
# SOSL Search Examples
## Example 1
```sql
FIND 'Rahul'
IN ALL FIELDS
RETURNING Student__c(Name)
```
Searches for student records containing Rahul.

## Example 2
```sql
FIND 'Java'
IN ALL FIELDS
RETURNING Course__c(Name)
```
Searches for Java-related courses.

# Why Queries Are Important

Enterprise systems contain huge amounts of data.

Queries help organizations:

- Retrieve information quickly
- Generate reports
- Analyze trends
- Support decision-making
- Improve business operations

Without efficient querying:

- Systems become slow
- Data becomes difficult to manage
- Reporting becomes inaccurate
# Key Understanding

SOQL is not just about syntax.

Developers must think:

- What information is needed?
- Why is the data important?
- How will the business use it?

Good querying improves:

- Application performance
- Reporting quality
- Business intelligence
- User experience
