# 🎓 College Management System - Salesforce Project

## 📌 Project Overview

The College Management System is a Salesforce-based application designed to manage students, faculty, departments, courses, and registrations efficiently.

The project automates student registration approval, course enrollment tracking, attendance monitoring, seat management, and reporting through Salesforce customization, automation, Apex development, Lightning Web Components (LWC), reports, and dashboards.

---

# 🚀 Features

## Student Management

- Create and manage student records
- Track attendance percentage
- Monitor eligibility status
- Store contact information

## Faculty Management

- Manage faculty records
- Assign faculty to departments
- Link faculty members to courses

## Department Management

- Maintain department information
- Associate students and faculty with departments

## Course Management

- Create and manage courses
- Track total seats
- Track filled seats
- Calculate remaining seats automatically
- Monitor course availability

## Registration Management

- Student course registration
- Registration approval process
- Registration status tracking
- Approval comments tracking
- Approval date tracking

---

# 🏗️ Custom Objects

| Object | Purpose |
|----------|----------|
| Student | Student information |
| Faculty | Faculty information |
| Department | Department details |
| Course | Course management |
| Registration | Student course enrollment |

---

# 🔗 Relationships

## Student → Department

Lookup Relationship

Each student belongs to a department.

## Faculty → Department

Lookup Relationship

Each faculty member belongs to a department.

## Course → Faculty

Lookup Relationship

Each course is assigned to a faculty member.

## Registration → Student

Lookup Relationship

Each registration belongs to a student.

## Registration → Course

Lookup Relationship

Each registration belongs to a course.

---

# 🧮 Formula Fields

## Student Object

### Attendance Status

Automatically determines attendance standing.

```text
Attendance >= 75%
→ Good Standing

Attendance < 75%
→ Low Attendance
```

### Student Eligibility Status

Determines student eligibility.

```text
Attendance >= 75%
→ Eligible

Attendance < 75%
→ Not Eligible
```

---

## Course Object

### Remaining Seats

```text
Total Seats - Filled Seats
```

### Course Full Status

```text
Remaining Seats = 0
→ Course Full

Remaining Seats > 0
→ Seats Available
```

### Course Full Check

Checkbox formula used to block registrations when the course is full.

---

# ✅ Validation Rules

## Student Object

### Email Mandatory

Ensures student email is provided.

### Attendance Max 100

Prevents attendance values greater than 100%.

---

## Course Object

### Seat Limit Check

Filled seats cannot exceed total seats.

### Total Seats Must Be Positive

Total seats must be greater than zero.

---

## Registration Object

### Registration Date Cannot Be Future Date

Prevents invalid future registration dates.

### Course Capacity Check

Blocks registration when the course is already full.

### Duplicate Registration Prevention

Prevents the same student from registering for the same course multiple times.

---

# ⚙️ Automation

## Registration Approval Flow

When a registration is created:

```text
Status = Approved
```

The registration is automatically approved.

---

## Seat Count Update Flow

When a registration is created:

```text
Filled Seats = Filled Seats + 1
```

The course enrollment count updates automatically.

---

# 💻 Apex Development

## Apex Trigger

### CourseTrigger

Monitors course seat availability.

```apex
if(course.Filled_Seats__c >= course.Total_Seats__c)
```

Logs courses that have reached capacity.

---

## Apex Classes

### StudentController

Returns student records for the Student Dashboard.

### FacultyController

Returns faculty records for the Faculty Dashboard.

---

# 📊 Reports

## Student Attendance Report

Displays:

- Student Name
- Email
- Attendance
- Attendance Status
- Eligibility Status

---

## Course Enrollment Report

Displays:

- Course Name
- Course Code
- Total Seats
- Filled Seats
- Remaining Seats

---

## Registration Status Report

Displays:

- Student
- Course
- Registration Status
- Approval Date

---

# 📈 Dashboards

## College Management Dashboard

Provides overall project analytics.

Includes:

- Student Attendance Report
- Course Enrollment Report
- Registration Status Report

---

## Student Dashboard

Lightning Web Component displaying student information.

---

## Faculty Dashboard

Lightning Web Component displaying faculty information.

---

# 🛠 Technologies Used

- Salesforce Platform
- Salesforce Objects
- Validation Rules
- Formula Fields
- Record Triggered Flows
- Apex Classes
- Apex Triggers
- Lightning Web Components (LWC)
- Reports
- Dashboards

---

# 🎯 Learning Outcomes

This project helped in understanding:

- Salesforce Data Modeling
- Object Relationships
- Validation Rules
- Formula Fields
- Record Triggered Flows
- Apex Programming
- Lightning Web Components
- Reports and Dashboards
- Business Process Automation

---

# 📸 Project Screenshots

Screenshots are available in the `/screenshots` folder.

---

# 👨‍💻 Author

Sindhuja Bobbili

Salesforce Training Project

College Management System
