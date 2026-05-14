# Salesforce Summer Program – Day 5 Notes
# Apex Introduction and Business Logic

---

# Goal of Day 5

The main goal of Day 5 is to understand:
- What Apex is
- Why Salesforce needs programming
- Difference between declarative and programmatic development
- How business logic works in Salesforce
- How all Salesforce concepts connect together in a real application

This day focuses on moving from only configuration-based development to understanding coding and enterprise-level logic.

---

# What is Apex?

Apex is Salesforce’s programming language.

It is an object-oriented and strongly typed language similar to Java.

Apex is used to:
- automate complex business processes
- manipulate Salesforce records
- create custom business logic
- perform calculations
- integrate external systems
- build scalable enterprise applications

Apex code runs directly on Salesforce servers.

---

# Why Salesforce Needs Apex

Salesforce provides many declarative tools such as:
- Flows
- Validation Rules
- Formula Fields
- Process Automation

These tools are excellent for simple and medium-level automation.

However, enterprise systems often require:
- advanced calculations
- reusable logic
- integrations with external systems
- performance optimization
- complex validations

Declarative tools become difficult to maintain in such scenarios.

Apex solves these problems by providing:
- flexibility
- scalability
- advanced automation
- better control over logic

---

# Declarative vs Programmatic Development

## Declarative Development

Declarative development means building applications using clicks instead of code.

Examples:
- Flows
- Validation Rules
- Formula Fields
- Page Layouts

### Advantages
- Easy to build
- Faster development
- Admin-friendly
- No coding required

### Limitations
- Difficult for advanced logic
- Limited flexibility
- Complex flows become difficult to maintain

---

## Programmatic Development

Programmatic development means building applications using code.

In Salesforce, Apex is used for programmatic development.

### Advantages
- Highly flexible
- Better for complex business logic
- Supports integrations
- Reusable code structure
- Better scalability

### Limitations
- Requires programming knowledge
- More testing required
- Higher maintenance effort

---

# Understanding Business Logic

Business logic refers to the rules that control how a business process works.

Examples:
- Students cannot register if seats are full
- Attendance below 75% should trigger a warning
- Scholarship approval depends on marks and attendance

Business logic is essential because it ensures:
- process consistency
- rule enforcement
- data accuracy
- automation reliability

Apex is often used to implement advanced business logic.

---

# Basic Apex Concepts

---

# Variables

Variables are used to store data temporarily.

Every variable contains:
- datatype
- variable name
- value

## Example

```apex
String studentName = 'Rahul';
Integer marks = 90;
Boolean isEligible = true;
```

# Common Datatypes

| Datatype | Purpose                      |
| -------- | ---------------------------- |
| String   | Stores text                  |
| Integer  | Stores whole numbers         |
| Decimal  | Stores decimal values        |
| Boolean  | Stores true or false         |
| Date     | Stores dates                 |
| List     | Stores collections of values |

## Conditional Statements

Conditional statements help make decisions based on conditions.

### Example
if(marks > 35){
   System.debug('Pass');
}
else{
   System.debug('Fail');
}
### Real Business Example
IF attendance < 75%
THEN send warning notification

- Conditional logic is heavily used in automation and validation.

## Loops

Loops are used to repeat operations multiple times.

### Example
for(Integer i=0; i<5; i++){
   System.debug(i);
}
### Why Loops are Important

Loops help process:
- multiple records
- bulk operations
- repeated calculations
- large datasets
Salesforce applications often process many records together, making loops very important.

## Classes
Classes organize Apex code into reusable structures.
A class can contain:
- variables
- methods
- logic
### Example
public class StudentManager {

}
### Why Classes are Important

Classes improve:
code organization
readability
reusability
scalability
maintenance
Large enterprise applications may contain hundreds of classes.
# DML Operations

DML stands for Data Manipulation Language.
DML operations are used to interact with Salesforce database records.
## Types of DML Operations
Operation	Purpose
- insert	:Create records
- update	:Modify records
- delete	::Remove records
- undelete	Restore deleted records
### Insert Example
Student__c s = new Student__c(Name='Rahul');
insert s;

- This creates a new student record.

### Update Example
s.Name = 'Rahul Sharma';
update s;

- This updates an existing record.

### Delete Example
delete s;

- This deletes the record.

# SOQL

SOQL stands for Salesforce Object Query Language.

SOQL is used to retrieve records from Salesforce.

It is similar to SQL but designed specifically for Salesforce objects.

## SOQL Example
SELECT Name FROM Student__c

- This retrieves student records from Salesforce.

### Why SOQL is Important
SOQL is used to:
- retrieve data
- generate reports
- process records
- perform business operations

Almost every Salesforce application uses SOQL.

# College Management System Design

The PDF requires integrating all learned concepts into one system.

The system includes:

## CRM concepts
- objects
- relationships
- validations
- flows
- Apex logic
## CRM Mapping
| Salesforce CRM Concept | College Management Example |
| ---------------------- | -------------------------- |
| Lead                   | Prospective Student        |
| Contact                | Student                    |
| Account                | Department                 |
| Opportunity            | Admission Application      |
| Case                   | Student Complaint          |

## Objects Used
### Student__c
Stores:
- student name
- email
- attendance
- department
### Course__c
Stores:
- course information
- seat capacity
- duration
### Faculty__c
Stores:
- faculty details
- specialization
- department
### Enrollment__c
Tracks:
- student-course enrollment
- enrollment status
- enrollment date
### Attendance__c
Tracks:
- attendance percentage
- warnings
- attendance history
## Relationships

Relationships connect objects together.

### Master-Detail Relationship

Used between:

Student and Enrollment
Course and Enrollment
Why?
Enrollment depends on both:
- student
- course

Benefits:
strong relationship
roll-up summary support
automatic child deletion
### Lookup Relationship
Used between:
Faculty and Course
Why?

Faculty records can exist independently.

Deleting faculty should not delete courses.

# Validation Rules

Validation rules maintain accurate and clean data.

## Example 1 – Email Validation

Rule:
Student email cannot be empty.

Formula:

ISBLANK(Email__c)
## Example 2 – Attendance Validation

Rule:
Attendance cannot exceed 100%.

Formula:

Attendance_Percentage__c > 100
## Example 3 – Seat Availability Validation

Rule:
Prevent registration if seats are full.

This can be implemented using:

validation rules
Apex logic
# Formula Fields

Formula fields automatically calculate values.

## Example – Remaining Seats
Remaining Seats = Total Seats - Enrolled Students

Benefits:

automatic updates
no manual calculations
real-time values
# Flows

Flows automate business processes in Salesforce.

They are declarative automation tools.

## Flow Example 1 – Welcome Email

Trigger:

student admission completed

Action:

send welcome email automatically
## Flow Example 2 – Attendance Warning

Trigger:

attendance below 75%

Action:

notify student automatically
## Flow Example 3 – Faculty Assignment

Trigger:

new course created

Action:

assign faculty automatically
# Real Scenarios Where Apex is Needed
1. Complex Fee Calculation

Fee depends on:

scholarship
hostel fee
attendance
discounts
penalties

This logic becomes difficult in Flows.

Apex provides:

cleaner code
reusable methods
easier maintenance

2. External Payment Integration

Salesforce may need to connect with:

Razorpay
Stripe
PayPal

Apex supports:

API callouts
authentication
response handling
error handling

3. Advanced Eligibility Logic

Eligibility depends on:

marks
attendance
prerequisites
department rules

Apex handles multi-condition logic more efficiently.

# Pseudocode Examples
## Example 1
IF remaining seats = 0
THEN block registration
ELSE allow enrollment
## Example 2
IF attendance < 75%
THEN send warning notification
## Example 3
IF marks > 90
AND attendance > 85
THEN approve scholarship
# Reflection

Enterprise systems cannot rely only on declarative tools because business requirements eventually become highly complex.

Declarative tools are excellent for:

simple automation
quick development
standard business processes

However, advanced enterprise applications require:

complex calculations
integrations
scalable architecture
reusable logic
optimized performance

Apex provides:

flexibility
scalability
precision
advanced automation capabilities

A good Salesforce developer should always use declarative tools first whenever possible, but use Apex when business requirements exceed declarative capabilities.
