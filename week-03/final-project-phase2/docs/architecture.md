# 🏗️ College Management System Architecture

## Overview

The College Management System is built on the Salesforce Platform using custom objects, relationships, validation rules, formula fields, automation flows, Apex, Lightning Web Components, reports, and dashboards.

The architecture follows a layered approach:

```text
User Interface Layer
        ↓
Business Logic Layer
        ↓
Data Layer
        ↓
Analytics Layer
```

---

# System Architecture

```text
+--------------------------------------------------+
|                  User Interface                  |
+--------------------------------------------------+
| Student Dashboard (LWC)                          |
| Faculty Dashboard (LWC)                          |
| Reports                                          |
| Dashboards                                       |
+--------------------------------------------------+

                    ↓

+--------------------------------------------------+
|                Business Logic Layer              |
+--------------------------------------------------+
| Validation Rules                                |
| Formula Fields                                  |
| Record Triggered Flows                          |
| Apex Trigger                                    |
| Apex Classes                                    |
+--------------------------------------------------+

                    ↓

+--------------------------------------------------+
|                    Data Layer                    |
+--------------------------------------------------+
| Student Object                                  |
| Faculty Object                                  |
| Department Object                               |
| Course Object                                   |
| Registration Object                             |
+--------------------------------------------------+

                    ↓

+--------------------------------------------------+
|                 Analytics Layer                  |
+--------------------------------------------------+
| Student Attendance Report                        |
| Course Enrollment Report                         |
| Registration Status Report                       |
| College Management Dashboard                     |
+--------------------------------------------------+
```

---

# Data Model

## Student Object

Stores student information.

### Fields

| Field | Type |
|---------|---------|
| Student ID | Auto Number |
| Student Name | Text |
| Email | Email |
| Phone | Phone |
| Attendance | Percent |
| Department | Lookup(Department) |

### Formula Fields

- Attendance Status
- Student Eligibility Status

---

## Faculty Object

Stores faculty information.

### Fields

| Field | Type |
|---------|---------|
| Faculty Name | Text |
| Email | Email |
| Department | Lookup(Department) |

---

## Department Object

Stores department information.

### Fields

| Field | Type |
|---------|---------|
| Department Name | Text |

---

## Course Object

Stores course information.

### Fields

| Field | Type |
|---------|---------|
| Course Name | Text |
| Course Code | Text |
| Faculty | Lookup(Faculty) |
| Total Seats | Number |
| Filled Seats | Number |

### Formula Fields

- Remaining Seats
- Course Full Status
- Course Full Check

---

## Registration Object

Stores course registrations.

### Fields

| Field | Type |
|---------|---------|
| Student | Lookup(Student) |
| Course | Lookup(Course) |
| Registration Date | Date |
| Status | Picklist |
| Approval Date | Date |
| Approval Comments | Long Text Area |

### Formula Fields

- Registration Key

---

# Relationship Architecture

## Student → Department

```text
Many Students
      ↓
One Department
```

Relationship Type:

```text
Lookup Relationship
```

---

## Faculty → Department

```text
Many Faculty
      ↓
One Department
```

Relationship Type:

```text
Lookup Relationship
```

---

## Course → Faculty

```text
Many Courses
      ↓
One Faculty
```

Relationship Type:

```text
Lookup Relationship
```

---

## Registration → Student

```text
Many Registrations
      ↓
One Student
```

Relationship Type:

```text
Lookup Relationship
```

---

## Registration → Course

```text
Many Registrations
      ↓
One Course
```

Relationship Type:

```text
Lookup Relationship
```

---

# Automation Architecture

## Registration Approval Flow

Trigger:

```text
Registration Created
```

Action:

```text
Status → Approved
```

Purpose:

Automatically approves new registrations.

---

## Seat Count Update Flow

Trigger:

```text
Registration Created
```

Actions:

```text
Get Course
      ↓
Increase Filled Seats
      ↓
Update Course
```

Purpose:

Automatically updates course enrollment count.

---

# Apex Architecture

## Apex Trigger

### CourseTrigger

Runs before course updates.

Purpose:

```text
Detect Full Courses
```

Logic:

```apex
Filled Seats >= Total Seats
```

---

## Apex Classes

### StudentController

Provides student data to Student Dashboard.

### FacultyController

Provides faculty data to Faculty Dashboard.

---

# Security & Data Integrity

The system maintains data quality through:

## Validation Rules

- Email Mandatory
- Attendance Maximum 100
- Seat Limit Check
- Total Seats Must Be Positive
- Registration Date Validation
- Course Capacity Validation
- Duplicate Registration Prevention

---

## Formula Fields

Used to eliminate manual calculations and ensure consistency.

Examples:

- Remaining Seats
- Attendance Status
- Eligibility Status
- Course Full Status

---

# Reporting Architecture

## Student Attendance Report

Tracks student attendance and eligibility.

---

## Course Enrollment Report

Tracks seat allocation and enrollment status.

---

## Registration Status Report

Tracks registration approval information.

---

# Dashboard Architecture

## College Management Dashboard

Provides:

- Attendance Insights
- Enrollment Insights
- Registration Analytics

---

## Student Dashboard

Custom Lightning Web Component.

Displays student records dynamically using Apex.

---

## Faculty Dashboard

Custom Lightning Web Component.

Displays faculty records dynamically using Apex.

---

# Scalability

The architecture supports:

- Additional Departments
- Additional Courses
- Additional Faculty
- Additional Students
- New Reports
- New Dashboards
- Future Approval Processes

without major redesign.

---

# Conclusion

The College Management System demonstrates Salesforce customization, automation, development, reporting, and dashboard capabilities in a real-world educational management scenario.
