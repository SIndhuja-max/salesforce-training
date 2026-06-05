# Salesforce Training - Day 10 Mini Project

# College Management System

## Project Overview

The College Management System is a Salesforce-based application developed to demonstrate CRM concepts, data modeling, automation, Apex programming, and Lightning Web Components.

The system manages students, faculty, departments, courses, and registrations while automating business processes using Salesforce declarative and programmatic tools.

---

# Objectives

The objectives of this project were:

- Create a scalable Salesforce data model
- Implement relationships between objects
- Apply validation rules
- Automate business processes using Flows
- Develop custom business logic using Apex
- Build a Lightning Web Component dashboard
- Integrate frontend and backend components

---

# Technologies Used

| Technology | Purpose |
|------------|----------|
| Salesforce CRM | Platform |
| Custom Objects | Data Modeling |
| Validation Rules | Data Validation |
| Formula Fields | Automated Calculations |
| Flow Builder | Process Automation |
| Apex Classes | Business Logic |
| Apex Triggers | Event Processing |
| SOQL | Data Retrieval |
| Lightning Web Components | User Interface |
| VS Code | Development |
| Salesforce CLI | Deployment |

---

# Custom Objects Created

## Student

Stores student information.

Fields:

- Student Name
- Student ID
- Email
- Phone
- Attendance
- Department

---

## Faculty

Stores faculty information.

Fields:

- Faculty Name
- Email
- Department

---

## Course

Stores course details.

Fields:

- Course Name
- Course Code
- Faculty
- Total Seats
- Filled Seats

---

## Department

Stores department information.

Fields:

- Department Name
- Department Code

---

## Registration

Stores student course registrations.

Fields:

- Student
- Course
- Registration Date
- Status

---

# Relationships Implemented

```text
Department
├── Student
├── Faculty

Faculty
├── Course

Student
├── Registration

Course
├── Registration
```

---

# Formula Fields

Implemented Formula Fields:

1. Remaining Seats
2. Attendance Status
3. Student Eligibility Status
4. Course Full Status

---

# Validation Rules

Implemented Validation Rules:

1. Email Mandatory
2. Attendance Cannot Exceed 100%
3. Seat Limit Check
4. Total Seats Must Be Positive
5. Registration Date Cannot Be Future Date

---

# Flow Automation

## Registration Auto Approval Flow

Automatically approves registration records.

## Course Seat Update Flow

Automatically updates course enrollment count.

---

# Apex Components

## Apex Class

StudentController

Purpose:

Retrieve student records for Lightning Web Components.

---

## Apex Trigger

CourseTrigger

Purpose:

Monitor course capacity.

---

# Lightning Web Component

## Student Dashboard

Displays:

- Student Name
- Email
- Attendance
- Eligibility Status

Data is retrieved dynamically through Apex.

---

# Project Architecture

```text
Objects
    ↓
Relationships
    ↓
Validation Rules
    ↓
Formula Fields
    ↓
Flow Automation
    ↓
Apex Logic
    ↓
Lightning Web Component
```

---

# Screenshots

See the screenshots folder for:

- Object Creation
- Relationships
- Formula Fields
- Validation Rules
- Flow Automation
- Apex Classes
- Apex Trigger
- Student Dashboard

---

# Learning Outcomes

Through this project I learned:

- Salesforce Data Modeling
- Lookup Relationships
- Validation Rules
- Formula Fields
- Record Triggered Flows
- Apex Programming
- Apex Triggers
- SOQL Queries
- Lightning Web Components
- Salesforce Development Lifecycle

---

# Conclusion

The College Management System successfully demonstrates the integration of Salesforce declarative and programmatic development tools.

The project combines data management, automation, business logic, and modern UI development into a complete enterprise application.
