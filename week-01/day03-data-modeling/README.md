# 🚀 Salesforce Day 3 – Data Modeling

## 📌 Objective

The goal of Day 3 was to understand how Salesforce stores and manages enterprise data using:
- Objects
- Fields
- Records
- Relationships
- Formula Fields
- Validation Rules

This task also focused on understanding how structured data helps businesses manage information efficiently.

---

# 📖 Difference Between App, Object, Record, and Field

| Component | Meaning | Example |
|-----------|----------|----------|
| App | Collection of related tabs and objects | College Management App |
| Object | Stores a specific type of data | Student Object |
| Record | Single entry inside an object | One Student Data |
| Field | Stores individual information | Student Name |

---

# 📖 Standard vs Custom Objects

| Standard Objects | Custom Objects |
|------------------|-----------------|
| Already provided by Salesforce | Created based on business needs |
| Examples: Account, Contact, Opportunity | Examples: Student, Faculty, Course |
| Used for common CRM processes | Used for organization-specific systems |

---

# 🏫 College Management System Data Model

## Objects Created

- Student
- Faculty
- Course
- Department
- Enrollment

---

# 🔗 Relationships

## One-to-Many Relationships

- One Department can have many Students
- One Department can have many Faculty members
- One Faculty can teach many Courses

---

## Lookup Relationships

- Student → Department
- Course → Faculty

Lookup relationships create loose connections between objects.

---

## Master-Detail Relationships

- Enrollment → Student
- Enrollment → Course

Master-detail relationships create strong parent-child dependency.

---

## Junction Object

Enrollment acts as a Junction Object between:
- Student
- Course

This creates a Many-to-Many relationship.

---

# 📊 Data Model Diagram

```text
Department
   |
   |--- Student
   |
   |--- Faculty
            |
            |--- Course

Student
    |
    |--- Enrollment
    |
Course
```

---

# 🛠️ Schema Builder

Schema Builder is a visual Salesforce tool used to:
- Create Objects
- Create Fields
- Create Relationships
- Visualize connected business data

It helps admins and developers understand system structure easily.

---

# ⚡ Formula Fields

## 1. Full Name Formula

Combines:
- First Name
- Last Name

### Why?
- Reduces manual work
- Improves consistency

---

## 2. Percentage Formula

Formula:

```text
(Marks Obtained / Total Marks) × 100
```

### Why?
- Automates calculations
- Prevents manual mistakes

---

## 3. Remaining Seats Formula

Formula:

```text
Total Seats - Filled Seats
```

### Why?
- Tracks course availability automatically
- Prevents overbooking

---

# ✅ Validation Rules

## 1. Email Cannot Be Empty

### Purpose
Prevents incomplete student records.

---

## 2. Student Age Cannot Be Negative

### Purpose
Prevents invalid data entry.

---

## 3. Course Seats Cannot Exceed Maximum Limit

### Purpose
Prevents course overbooking.

---

# 💡 Reflection

## Why do companies need structured data instead of random spreadsheets?

Companies manage huge amounts of connected data daily. Structured data helps organize information using objects, fields, and relationships. It improves consistency, reduces duplication, enables automation, and makes reporting easier.

Enterprise systems like Salesforce are scalable, secure, and collaborative compared to random spreadsheets.

---

# ✨ Reflective Questions

## 1. Why can’t companies manage everything using Excel sheets?

Excel sheets become difficult to manage when data grows large. They create duplication, inconsistency, and collaboration issues.

---

## 2. Why are relationships important between objects?

Relationships connect related business data and help organizations understand how information is linked together.

---

## 3. What problems happen if data is inconsistent?

Inconsistent data can cause:
- Wrong reports
- Duplicate records
- Poor business decisions
- Operational confusion

---

## 4. Why should repetitive calculations be automated?

Automation:
- Saves time
- Reduces manual effort
- Prevents human errors
- Improves productivity

---

## 5. Why should invalid data be blocked early?

Blocking invalid data improves:
- Data quality
- System reliability
- Business accuracy

---

## 6. Why is Salesforce called a metadata-driven platform?

Salesforce is metadata-driven because applications can be customized using configuration instead of changing core application code.

---

# 📚 Key Learnings

- Understood how Salesforce stores enterprise data
- Learned different relationship types
- Explored Schema Builder
- Learned Formula Fields and Validation Rules
- Understood structured business data concepts
- Learned how Salesforce supports no-code business logic

---

# 🚀 Outcome of Day 3

By completing this task, I understood:
- How enterprise systems organize data
- Importance of relationships
- Difference between Formula Fields and Validation Rules
- How Salesforce enables scalable and connected business systems
