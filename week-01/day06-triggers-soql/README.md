# Salesforce Summer Program – Day 6
## SOQL, Apex Triggers & Event-Driven Automation

This project contains my learning and understanding of Salesforce querying, Apex Triggers, automation logic, and event-driven systems.

---

# Objectives

By completing this task, I learned:

- How Salesforce stores and retrieves data
- What SOQL and SOSL are
- How DML operations work
- What Apex Triggers do
- Difference between Flows and Triggers
- Difference between Before and After Triggers
- How enterprise systems react automatically to events

---

# What is SOQL?

SOQL (Salesforce Object Query Language) is used to retrieve data from Salesforce objects.

It is similar to SQL but designed specifically for Salesforce.

SOQL helps developers:
- Fetch records
- Filter data
- Retrieve related records
- Build dynamic applications

## Example

```sql
SELECT Name, Email FROM Student__c
WHERE Attendance__c < 75
```
This query retrieves students whose attendance is below 75%.

# What is SOSL?

SOSL (Salesforce Object Search Language) is used to search text across multiple Salesforce objects.

Unlike SOQL:

- SOQL retrieves records from a single object
- SOSL searches across many objects at once
## Example
```text
FIND 'John' IN ALL FIELDS
RETURNING Student__c(Name), Faculty__c(Name)
```
This searches for the keyword "John" in multiple objects.

# What are DML Operations?

DML (Data Manipulation Language) operations are used to modify Salesforce records.

Main DML Operations:

Insert
Update
Delete
Upsert
## Example
```text
Student__c s = new Student__c(Name='Rahul');
insert s;
```
This inserts a new student record.

# What is an Apex Trigger?

An Apex Trigger is Salesforce automation code that runs automatically when data changes occur.

Triggers help systems react intelligently to:

- Insert
- Update
- Delete
- Undelete events

Triggers are event-driven.

## Before Trigger vs After Trigger
| Before Trigger                          | After Trigger                 |
| --------------------------------------- | ----------------------------- |
| Runs before record is saved             | Runs after record is saved    |
| Used for validation or modifying values | Used for related actions      |
| Faster because no database commit yet   | Used when record ID is needed |

## Example
Before Trigger
Automatically set default attendance.

After Trigger
Send welcome email after student registration.

# Flow vs Trigger
| Flow                   | Apex Trigger            |
| ---------------------- | ----------------------- |
| Declarative automation | Programmatic automation |
| Easy to build          | Requires coding         |
| Best for simple logic  | Best for complex logic  |
| Faster development     | More powerful           |
| Admin-friendly         | Developer-focused       |

## When to Use Flow
- Email notifications
- Simple approvals
- Updating fields
- Basic automation
## When to Use Trigger
- Complex validations
- Multi-object logic
- External API integration
- Advanced business rules
# Trigger Use Cases in College Management System
1. Welcome Email After Student Registration
### Event:
After student record insertion
### Action:
Automatically send welcome email to student.

2. Attendance Warning System

### Event:
After attendance update

### Action:
Send warning notification if attendance falls below 75%.

3. Course Capacity Alert

### Event:
After student enrollment

### Action:
Notify faculty when course becomes full.

4. Fee Payment Confirmation

### Event:
After payment update

### Action:
Generate payment confirmation message.

5. Scholarship Eligibility Check

### Event:
Before student record update

### Action:
Automatically verify eligibility criteria.

# Query Examples
## Student Queries
- Find all students enrolled in Java course
- Find students with attendance below 75%
- Find students with pending fees
- Find final year students
## Faculty Queries
- Find all courses handled by Faculty Ravi
- Find faculty teaching more than 3 courses
## Course Queries
- Find courses with maximum enrollments
- Find courses with available seats
# Why Enterprise Systems Need Event-Driven Behavior

Enterprise systems handle thousands of real-time operations daily.

### Without automation:

- Processes become slow
- Errors increase
- Manual work increases
- Notifications are delayed

### Event-driven systems improve:

- Efficiency
- Accuracy
- Scalability
- Real-time response

Triggers and Flows help Salesforce automate business processes intelligently.

# Key Learnings
Understood Salesforce querying concepts
Learned SOQL and SOSL basics
Learned DML operations
Understood Apex Trigger lifecycle
Learned difference between Flow and Trigger
Learned event-driven architecture thinking
