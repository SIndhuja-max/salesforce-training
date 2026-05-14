# Day 5 Learnings
# Apex Introduction and Business Logic

---

# Core Learnings

Today focused on understanding how programming fits into Salesforce development and why Apex is important for enterprise applications.

---

# What I Learned About Apex

- Apex is Salesforce’s programming language.
- It is similar to Java and supports object-oriented programming.
- Apex is used to build custom business logic inside Salesforce.
- Apex helps automate complex business processes that declarative tools cannot handle efficiently.
- Apex runs directly on Salesforce servers.

---

# Understanding Declarative vs Programmatic Development

## Declarative Development

I learned that declarative development means building applications using clicks instead of code.

Examples:
- Flows
- Validation Rules
- Formula Fields
- Page Layouts

Advantages:
- faster development
- easier maintenance
- admin-friendly

Limitations:
- limited flexibility
- difficult for advanced business logic

---

## Programmatic Development

I learned that programmatic development uses coding to build advanced functionality.

In Salesforce, Apex is used for programmatic development.

Advantages:
- highly flexible
- reusable logic
- better scalability
- supports integrations

Limitations:
- requires programming knowledge
- higher maintenance effort

---

# Apex Concepts Learned

## Variables

Variables are used to store data temporarily.

Examples of datatypes learned:
- String
- Integer
- Boolean
- Decimal
- Date

---

## Conditional Statements

Conditional statements help systems make decisions based on conditions.

Example:
- checking attendance percentage
- validating eligibility
- approving scholarships

---

## Loops

Loops are used to repeat operations multiple times.

I learned that loops are very important for:
- bulk record processing
- repeated calculations
- handling collections of records

---

## Classes

Classes help organize Apex code into reusable structures.

I learned that enterprise applications use classes to:
- improve readability
- maintain clean architecture
- create reusable business logic

---

# DML Operations Learned

DML operations are used to interact with Salesforce database records.

Operations learned:
- insert
- update
- delete
- undelete

These operations allow developers to create and manipulate Salesforce records using Apex.

---

# SOQL Learnings

SOQL is used to retrieve records from Salesforce.

I learned:
- SOQL is similar to SQL
- SOQL is specifically designed for Salesforce objects
- SOQL is used extensively in Apex applications

---

# Business Logic Understanding

I learned that business logic defines how enterprise systems behave.

Examples:
- block registration when seats are full
- notify students if attendance is low
- approve scholarships based on conditions

Business logic is the core of enterprise applications.

---

# College Management System Understanding

I designed a College Management System using Salesforce concepts.

Objects used:
- Student__c
- Course__c
- Faculty__c
- Enrollment__c
- Attendance__c

I learned how objects and relationships model real-world systems.

---

# Relationships Learned

## Master-Detail Relationship

Used when child records depend completely on parent records.

Examples:
- Student → Enrollment
- Course → Enrollment

Benefits:
- strong relationship
- roll-up summaries
- automatic child deletion

---

## Lookup Relationship

Used when objects should remain independent.

Example:
- Faculty → Course

---

# Validation Rules Learnings

Validation rules ensure accurate and clean data.

Examples:
- email cannot be blank
- attendance cannot exceed 100
- prevent invalid registrations

---

# Formula Fields Learnings

Formula fields automatically calculate values without coding.

Example:
Remaining Seats = Total Seats - Enrolled Students

I learned that formula fields help automate calculations efficiently.

---

# Flows Learnings

Flows automate business processes using declarative tools.

Examples:
- welcome email automation
- attendance warning notifications
- automatic faculty assignment

I learned that flows are powerful for standard automation.

---

# When Apex is Needed

I learned that Apex becomes necessary when:
- business logic becomes complex
- integrations are required
- calculations become advanced
- reusable logic is needed
- performance optimization matters

---

# Real-World Apex Use Cases Learned

## Complex Fee Calculation
Apex handles complicated calculations more efficiently than Flows.

---

## External Payment Integration
Apex supports API integrations with payment gateways.

---

## Advanced Eligibility Logic
Apex handles multiple conditions and advanced validations effectively.

---

# Reflection Learnings

The most important learning from Day 5 is understanding that:

- declarative tools are excellent for simple automation
- Apex is necessary for advanced enterprise requirements

A good Salesforce developer should:
- prefer declarative solutions first
- use Apex only when necessary
- build scalable and maintainable systems
