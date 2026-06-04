# Salesforce Flow Builder Notes

## Introduction

Salesforce Flow Builder is a declarative automation tool that allows administrators to automate business processes without writing code.

Flow Builder can:

- Create records
- Update records
- Delete records
- Send emails
- Make decisions
- Run approvals
- Execute business logic

---

# Why Flow Builder?

Organizations need automation to:

- Reduce manual work
- Improve efficiency
- Ensure consistency
- Follow business rules
- Improve user productivity

---

# Components of a Flow

## 1. Start Element

The Start Element defines when the flow begins.

Examples:

- Record Created
- Record Updated
- Screen Flow Launch
- Scheduled Flow

---

## 2. Decision Element

Decision Elements act like IF-ELSE statements.

Example:

If Attendance < 75%
→ Send Warning

Else
→ No Action

---

## 3. Assignment Element

Used to assign values to variables.

Example:

Student_Status = "Warning"

---

## 4. Create Records

Creates new records automatically.

Example:

Create Scholarship Review Record

---

## 5. Update Records

Updates existing records.

Example:

Update Leave Request Status

---

## 6. Delete Records

Removes records from Salesforce.

Example:

Delete Temporary Application

---

## 7. Get Records

Retrieves data from Salesforce.

Example:

Get Student Record

---

## 8. Loop Element

Processes multiple records one by one.

Example:

Loop through all students in a department.

---

## Variables in Flow

Variables store temporary information.

Examples:

StudentName

AttendancePercentage

CourseStatus

BudgetAmount

---

# Formula Logic

Formula fields allow calculations.

Examples:

Attendance Percentage

Total Budget Cost

Scholarship Eligibility

---

# Multi-Step Workflow Example

Student Scholarship Process

Step 1:
Student submits request

Step 2:
Department verifies eligibility

Step 3:
Finance reviews budget

Step 4:
Principal approves

Step 5:
Scholarship granted

---

# Benefits of Flow Builder

- No code required
- Easy maintenance
- Faster automation
- Better governance
- Enterprise scalability

---

# How to Create a Flow Using Salesforce Flow Builder

## Step 1: Open Flow Builder

1. Login to Salesforce.
2. Click Setup (⚙️).
3. Search for "Flows" in Quick Find.
4. Select Flows.
5. Click New Flow.

---

## Step 2: Choose Flow Type

Salesforce provides different flow types.

Common Types:

### Record-Triggered Flow

Runs automatically when a record is created or updated.

Example:
- Student record created
- Leave request submitted

### Screen Flow

Displays screens and collects user input.

Example:
- Scholarship application form

### Scheduled Flow

Runs automatically at a specified time.

Example:
- Daily attendance check

### Autolaunched Flow

Runs behind the scenes without screens.

Example:
- Automatic record updates

---

## Step 3: Configure Start Element

Define when the flow starts.

Example:

Object:
Student

Trigger:
When Record is Created or Updated

Condition:
Attendance Percentage is updated

---

## Step 4: Add Flow Elements

Drag and drop elements from the toolbox.

Common Elements:

### Get Records

Retrieve existing Salesforce records.

Example:
Get Student Information

---

### Decision

Create branching logic.

Example:

If Attendance < 50
→ Admin Escalation

If Attendance < 60
→ Parent Notification

If Attendance < 75
→ Warning Email

Else
→ No Action

---

### Assignment

Assign values to variables.

Example:

Status = "Warning"

---

### Create Records

Create new records automatically.

Example:

Create Scholarship Review Record

---

### Update Records

Modify existing records.

Example:

Update Leave Status = Approved

---

### Action

Perform actions.

Examples:

- Send Email
- Submit for Approval
- Call Apex Action

---

## Step 5: Connect Elements

Use connectors to define workflow paths.

Example:

Start
↓
Get Student Record
↓
Decision
↓
Send Email
↓
Update Status
↓
End

---

## Step 6: Save the Flow

Click Save.

Provide:

Flow Label:
Student Attendance Monitoring

API Name:
Student_Attendance_Monitoring

Description:
Monitors attendance and sends notifications.

---

## Step 7: Debug the Flow

Click Debug.

Verify:

- Conditions work correctly
- Records update correctly
- Emails are sent correctly

---

## Step 8: Activate the Flow

Click Activate.

Only activated flows run in Salesforce.

---

# Real Example

Attendance Monitoring Flow

Start:
Student Record Updated

↓

Decision

Attendance < 50
→ Escalate to Admin

Attendance < 60
→ Notify Parents

Attendance < 75
→ Send Warning Email

Attendance ≥ 75
→ No Action

↓

Update Student Status

↓

End

---

# Best Practices

1. Keep flows simple and modular.
2. Use meaningful names for variables.
3. Test every path using Debug.
4. Avoid unnecessary complexity.
5. Document flow logic.
6. Follow business rules and governance policies.
7. Maintain auditability for enterprise processes.

---

# Key Learning

Flow Builder enables organizations to automate business processes using visual workflow design while maintaining control, governance, and scalability.

---

# Key Learning

Flow Builder is the backbone of Salesforce automation and helps organizations create controlled, efficient, and auditable business processes.
