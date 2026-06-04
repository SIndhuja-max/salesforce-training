# Branching Flow Logic in Salesforce

## Introduction

Branching Logic allows a Salesforce Flow to follow different paths based on specific conditions.

This is achieved using the Decision Element in Flow Builder.

Similar to:

IF → ELSE IF → ELSE

statements in programming.

Branching helps organizations automate business processes intelligently by applying different actions to different situations.

---

# College Management System Example

## Attendance Monitoring Flow

Business Requirement:

Monitor student attendance and take appropriate action based on attendance percentage.

---

# Flow Overview

Start
↓
Get Student Record
↓
Decision Element
↓
Different Actions
↓
End

---

# Decision Logic

Attendance Percentage?

├── Attendance < 50%
│   ↓
│   Admin Escalation
│
├── Attendance < 60%
│   ↓
│   Parent Notification
│
├── Attendance < 75%
│   ↓
│   Warning Email
│
└── Attendance ≥ 75%
    ↓
    No Action

---

# Flow Design in Salesforce

## Start Element

Object:

Student

Trigger:

Record Updated

Condition:

Attendance Percentage Changes

---

## Get Records

Retrieve:

- Student Name
- Attendance Percentage
- Parent Contact
- Department Information

---

## Decision Element

Label:

Attendance Evaluation

Purpose:

Determine which action should be executed.

---

# Branch 1

## Attendance Less Than 50%

Condition:

Attendance < 50

Action:

- Escalate to Academic Administrator
- Create Case Record
- Send Escalation Email
- Mark Student as Critical

Reason:

Student is at high risk of academic failure.

---

# Branch 2

## Attendance Less Than 60%

Condition:

Attendance >= 50
AND
Attendance < 60

Action:

- Notify Parents
- Send Attendance Alert
- Schedule Counseling Session

Reason:

Early intervention can improve attendance.

---

# Branch 3

## Attendance Less Than 75%

Condition:

Attendance >= 60
AND
Attendance < 75

Action:

- Send Warning Email
- Update Student Status

Reason:

Attendance is below acceptable threshold.

---

# Branch 4

## Attendance 75% or Above

Condition:

Attendance >= 75

Action:

No Action Required

Reason:

Student meets attendance requirements.

---

# Visual Decision Tree

Student Attendance
        │
        ▼
Is Attendance < 50?
        │
      Yes
        ▼
Admin Escalation
        │
      No
        ▼
Is Attendance < 60?
        │
      Yes
        ▼
Parent Notification
        │
      No
        ▼
Is Attendance < 75?
        │
      Yes
        ▼
Warning Email
        │
      No
        ▼
No Action

---

# Salesforce Flow Elements Used

1. Start Element
2. Get Records
3. Decision Element
4. Action Element
5. Update Records
6. Email Alert
7. End Element

---

# Benefits of Branching Logic

- Intelligent automation
- Faster decision making
- Reduced manual effort
- Consistent business rules
- Improved student monitoring
- Better operational efficiency

---

# Real-World Enterprise Examples

## Banking

Loan Amount > ₹10 Lakhs

→ Senior Manager Approval

Loan Amount > ₹50 Lakhs

→ Regional Director Approval

---

## Healthcare

Critical Patient

→ Immediate Doctor Notification

Non-Critical Patient

→ Standard Processing

---

## Human Resources

Leave Days > 10

→ HR Approval

Leave Days ≤ 10

→ Manager Approval

---

# Key Learning

Branching Logic enables Salesforce Flows to make decisions automatically and execute different actions based on business rules, making enterprise processes smarter, scalable, and more efficient.
