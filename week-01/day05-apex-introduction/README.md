# Salesforce-training : Day 5
# Apex Introduction and Business Logic

---

# Overview

This repository contains the work completed for Day 5 of the Salesforce Summer Program.

The main focus of this module was understanding:
- What Apex is
- Why Salesforce needs programming
- Difference between declarative and programmatic development
- How business logic works in enterprise applications
- How Salesforce concepts connect together in a real-world system

This module introduced Apex as Salesforce’s programming language and explained when coding becomes necessary in enterprise development.

---

# What is Apex?

Apex is Salesforce’s object-oriented programming language used to implement custom business logic on the Salesforce platform.

It is similar to Java and allows developers to:
- automate complex business processes
- manipulate Salesforce records
- create reusable business logic
- perform advanced calculations
- integrate external systems
- build scalable enterprise applications

Apex runs directly on Salesforce servers and is tightly integrated with Salesforce databases and objects.

---

# Why Salesforce Needs Apex

Salesforce provides powerful declarative tools such as:
- Flows
- Validation Rules
- Formula Fields
- Process Automation

These tools are excellent for simple and medium-level automation.

However, enterprise systems often require:
- advanced calculations
- integrations with external systems
- reusable business logic
- large-scale processing
- performance optimization

In such situations, declarative tools become difficult to maintain.

Apex provides:
- flexibility
- scalability
- advanced automation capabilities
- better control over business processes

---

# Declarative vs Programmatic Development

| Declarative Development | Programmatic Development |
|---|---|
| Uses clicks and configuration | Uses coding |
| Faster for simple automation | Better for complex logic |
| Admin-friendly | Developer-focused |
| Easier maintenance | More flexibility |
| Limited advanced control | Highly customizable |

---

# Real Scenarios Where Apex is Needed

## 1. Complex Fee Calculation

A college fee system may depend on:
- scholarship percentage
- attendance
- hostel fee
- penalties
- discounts

Managing this logic using only Flows becomes difficult.

Apex provides:
- reusable logic
- cleaner architecture
- easier maintenance

---

## 2. External Payment Gateway Integration

Salesforce may need to connect with:
- Razorpay
- Stripe
- PayPal

Apex is required for:
- API callouts
- authentication
- response handling
- error management

---

## 3. Advanced Eligibility Logic

Student eligibility may depend on:
- marks
- attendance
- prerequisite courses
- department-specific rules

Apex handles such advanced conditional logic efficiently.

---

# College Management System Design

This module integrates all Salesforce concepts into a College Management System.

---

# CRM Mapping

| Salesforce CRM Concept | College Management Example |
|---|---|
| Lead | Prospective Student |
| Contact | Student |
| Account | Department |
| Opportunity | Admission Application |
| Case | Student Complaint |

---

# Objects Used

## Student__c
Stores student information.

## Course__c
Stores course details and seat capacity.

## Faculty__c
Stores faculty information.

## Enrollment__c
Tracks student-course enrollments.

## Attendance__c
Tracks attendance records.

---

# Relationships

| Relationship | Type |
|---|---|
| Student → Enrollment | Master-Detail |
| Course → Enrollment | Master-Detail |
| Faculty → Course | Lookup |

---

# Validation Rules

Validation rules help maintain clean and accurate data.

Examples:
- Email field cannot be empty
- Attendance cannot exceed 100%
- Prevent enrollment if seats are full

---

# Formula Fields

Formula fields automatically calculate values.

Example:

Remaining Seats = Total Seats - Enrolled Students

Benefits:
- automatic calculations
- no manual updates
- real-time data

---

# Flows

Flows automate standard business processes.

Examples:
- welcome email automation
- attendance notifications
- automatic faculty assignment

Flows are excellent for declarative automation.

---

# Why Enterprise Systems Eventually Need Programming

Enterprise systems become increasingly complex over time.

Declarative tools alone cannot efficiently handle:
- advanced business logic
- integrations
- reusable architecture
- optimized processing
- highly customized workflows

Apex programming provides:
- flexibility
- scalability
- precision
- advanced control

A good Salesforce developer should:
- prefer declarative solutions first
- use Apex when business complexity requires programming

---

# Pseudocode Examples

## Seat Availability

```text
IF remaining seats = 0
THEN block registration
ELSE allow enrollment
```
## Attendance Warning
```text
IF attendance < 75%
THEN send warning notification
```
## Scholarship Eligibility
```text
IF marks > 90
AND attendance > 85
THEN approve scholarship
```
# Key Learnings
- Learned what Apex is and why it is important
- Understood declarative vs programmatic development
- Learned Apex basics including variables, loops, conditions, and classes
- Learned DML operations and SOQL basics
- Understood how enterprise business logic works
- Designed a College Management System using Salesforce concepts
- Learned when to use Flows and when Apex is required

# Conclusion
Day 5 provided a strong foundation for understanding how programming fits into Salesforce development.

The module explained:

why Apex exists
when declarative tools are sufficient
when custom programming becomes necessary

This understanding is essential for building scalable and maintainable enterprise Salesforce applications.
