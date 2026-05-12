# Salesforce Day 3 Detailed Notes – Data Modeling

# Introduction to Data Modeling

Data Modeling is the process of organizing and structuring data in Salesforce using Objects, Fields, Records, and Relationships.

It helps businesses:
- Store data efficiently
- Maintain consistency
- Reduce duplicate information
- Improve reporting
- Enable automation
- Build scalable enterprise systems

In Salesforce, everything revolves around structured and connected data.

---

# Objects, Fields, and Records

## Object

An Object is a container used to store a particular type of information.

Objects are similar to tables in a database.

### Examples
- Student
- Faculty
- Course
- Department

### Real-World Example

A Student Object stores:
- Student Name
- Roll Number
- Email
- Phone Number
- Department

---

## Field

A Field stores a specific piece of information inside an object.

Fields are similar to columns in a table.

### Examples
- Student Name
- Email
- Age
- Course Name

### Types of Fields
- Text
- Number
- Date
- Checkbox
- Formula
- Email
- Picklist

---

## Record

A Record is a single entry inside an object.

Records are similar to rows in a table.

### Example

| Student Name | Roll Number | Department |
|--------------|-------------|-------------|
| Sindhu       | 23CS101     | CSE        |

This entire row represents one record.

---

# Standard vs Custom Objects

## Standard Objects

Standard Objects are already provided by Salesforce.

### Examples
- Account
- Contact
- Opportunity
- Lead

Used for common business processes like sales and customer management.

---

## Custom Objects

Custom Objects are created by users according to business requirements.

### Examples
- Student
- Faculty
- Department
- Course

Used for organization-specific systems.

---

# App vs Object vs Tab

| Component | Meaning |
|-----------|----------|
| App | Collection of related tabs and objects |
| Object | Stores a particular type of data |
| Tab | User interface used to access an object |

---

## Example

### College Management App
Contains:
- Student Tab
- Faculty Tab
- Course Tab
- Department Tab

Each tab opens its corresponding object.

---

# Relationships in Salesforce

Relationships connect objects together.

They help businesses organize related data properly.

Without relationships:
- Data becomes repetitive
- Systems become difficult to manage
- Reporting becomes inaccurate

Relationships are one of the most important concepts in Salesforce.

---

# One-to-Many Relationship

A One-to-Many Relationship means:
- One parent record is connected to multiple child records.

---

## Real-World Example

### Department and Students

One Department:
- CSE Department

Can have many Students:
- Sindhu
- Rahul
- Priya
## Another Example
Faculty and Courses

One Faculty:
- Dr. Kumar
Can teach many Courses:
- DBMS
- Java
- Operating Systems

# Lookup Relationship
A Lookup Relationship creates a loose connection between two objects.
The child object can exist independently even if the parent record is deleted
## Characteristics of Lookup Relationship
- Optional relationship
- Child record can exist without parent
- Parent and child are loosely connected
- Commonly used for flexible business relationships
## Example of Lookup Relationship
Student → Department
Each Student can belong to a Department
- Example
|Student	| Department|
|---------|-----------|
|Sindhu 	| CSE       |
|Rahul  	| ECE       |

If the Department record is deleted:
- Student records can still remain.
This is why Lookup is considered a loose relationship.

# Master-Detail Relationship

Master-Detail Relationship creates a strong dependency between parent and child objects.
The child record cannot exist without the parent record.

## Characteristics of Master-Detail Relationship
- Strong relationship
- Child depends on parent
- Parent controls child behavior
- If parent is deleted, child is also deleted
- Security and sharing controlled by parent
## Example of Master-Detail Relationship
Department → Student
Suppose:
- Student cannot exist without Department
If CSE Department is deleted:
- All related student records are also deleted automatically.
# Difference Between Lookup and Master-Detail
| Feature                 | Lookup Relationship | Master-Detail Relationship |
| ----------------------- | ------------------- | -------------------------- |
| Relationship Type       | Loose               | Strong                     |
| Child Record Dependency | Independent         | Dependent                  |
| Parent Deletion Effect  | Child remains       | Child deleted              |
| Ownership               | Separate ownership  | Parent controls ownership  |
| Security                | Independent         | Inherited from parent      |

---
# Junction Object

A Junction Object is used to create a Many-to-Many Relationship between two objects.

Salesforce does not directly support Many-to-Many relationships, so Junction Objects are used.

## Many-to-Many Relationship

Means:

- One record can be connected to many records.
- Many records can be connected back.
## Example
Students and Courses
A Student can enroll in many Courses.
A Course can contain many Students.
## Problem

Direct many-to-many relationship is not possible.
So Salesforce uses a Junction Object.
Enrollment Junction Object

Enrollment stores:

- Student
- Course
- Enrollment Date
- Semester
  | Student | Course |
| ------- | ------ |
| Sindhu  | Java   |
| Sindhu  | DBMS   |
| Rahul   | Java   |
## Why Junction Objects Are Important

They:
- Reduce duplicate data
- Handle complex relationships
- Improve scalability
- Help enterprise systems manage connected data efficiently
---
# Schema Builder

Schema Builder is a visual Salesforce tool used to:
- Create Objects
- Create Fields
- Create Relationships
- Visualize entire data structure
- It provides a graphical representation of how objects are connected.

## Why Schema Builder Is Useful

Without Schema Builder:
- Understanding large systems becomes difficult.
With Schema Builder:
- Relationships become visually clear.
- Developers and admins can understand system structure quickly.
# Example of Schema Builder in College Management System

Objects:
- Student
- Faculty
- Course
- Department
- Enrollment

Relationships:
- Department → Student
- Department → Faculty
- Faculty → Course
- Student ↔ Course using Enrollment
---
# Formula Fields

Formula Fields automatically calculate values.
They reduce manual calculations and improve accuracy.

## Example 1 – Percentage

Formula:
(Marks Obtained / Total Marks) × 100

- Automatically calculates student percentage.

## Example 2 – Full Name

Combines:
- First Name
- Last Name
Into one Full Name field.

## Example 3 – Remaining Seats

Formula:
Total Seats - Filled Seats

- Tracks available seats automatically.

# Validation Rules

- Validation Rules prevent invalid data entry.
- They improve data quality.

## Example 1 – Email Cannot Be Empty

Ensures communication information is available.

## Example 2 – Age Cannot Be Negative

Prevents invalid student data.

## Example 3 – Seats Cannot Exceed Limit

Prevents course overbooking.

# Why Structured Data Matters

Structured enterprise data:

- Improves organization
- Enables automation
- Improves reporting
- Supports scalability
- Prevents inconsistency

Random spreadsheets become difficult when:

- Multiple teams work together
- Data grows large
- Relationships become complex
- Metadata-Driven Platform

# Salesforce is called a metadata-driven platform because:

- Applications are customized using configuration
- Admins can create objects, fields, automation without coding
- Core application code is not modified

This makes Salesforce:

- Flexible
- Scalable
- Easy to customize

  
