# Flow Automation

## Introduction

Salesforce Flow is a declarative automation tool that enables organizations to automate business processes without writing code.

In this project, two Record-Triggered Flows were implemented:

1. Registration Auto Approval Flow
2. Course Seat Update Flow

These automations reduce manual work, improve data consistency, and ensure that business processes are executed automatically.

---

# Overview of Implemented Flows

| Flow Name | Purpose |
|------------|------------|
| Registration Auto Approval Flow | Automatically approves student registrations |
| Course Seat Update Flow | Automatically updates course enrollment count |

---

# Flow 1: Registration Auto Approval Flow

## Business Requirement

Whenever a student registers for a course, the registration should be automatically approved.

Without automation:

- Administrators must manually review registrations.
- Approval delays may occur.
- Human errors may occur.

The flow automates this process.

---

## Flow Type

Record-Triggered Flow

---

## Object

Registration

---

## Trigger Condition

The flow runs when:

```text
A Registration record is created
```

---

## Flow Architecture

```text
Registration Created
        ↓
Flow Triggered
        ↓
Approve Registration
        ↓
Status Updated
        ↓
Registration Approved
```

---

## Flow Creation Steps

### Step 1

Navigate to:

```text
Setup
↓
Flows
↓
New Flow
```

---

### Step 2

Select:

```text
Record-Triggered Flow
```

Click:

```text
Create
```

---

### Step 3

Configure Start Element

#### Object

```text
Registration
```

#### Trigger

```text
A record is created
```

#### Condition Requirements

```text
None
```

#### Optimize For

```text
Actions and Related Records
```

---

### Step 4

Add Update Records Element

Click:

```text
+
↓
Update Records
```

---

### Step 5

Configure Update Records

#### Label

```text
Approve Registration
```

#### Record To Update

```text
Use the registration record that triggered the flow
```

#### Field

```text
Status
```

#### Value

```text
Approved
```

---

### Step 6

Save and Activate

Flow Label:

```text
Registration Auto Approval
```

---

## Screenshot

![Registration Auto Approval Flow](screenshots/registration-auto-approval-flow.png)

---

## Testing

### Before Flow

| Status |
|----------|
| Pending |

### Registration Created

A new registration record was created.

### After Flow

| Status |
|----------|
| Approved |

### Result

✅ Registration approved automatically.

---

## Business Value

- Eliminates manual approval work.
- Reduces processing time.
- Ensures consistency.
- Improves operational efficiency.

---

# Flow 2: Course Seat Update Flow

## Business Requirement

Whenever a student registers for a course, the course enrollment count should automatically increase.

Without automation:

- Administrators must manually update seat counts.
- Enrollment data may become inaccurate.
- Reporting may become unreliable.

This flow automates seat management.

---

## Flow Type

Record-Triggered Flow

---

## Object

Registration

---

## Flow Architecture

```text
Registration Created
        ↓
Get Course Record
        ↓
Increase Seat Count
        ↓
Update Course Record
        ↓
Enrollment Updated
```

---

## Flow Elements Used

### Start

Triggered when a Registration record is created.

---

### Get Records

Retrieves the associated Course record.

Label:

```text
Get Course
```

Purpose:

Retrieve current course information.

---

### Assignment

Label:

```text
Increase Seat Count
```

Purpose:

Increase Filled Seats by 1.

Example:

```text
Filled Seats = Filled Seats + 1
```

---

### Update Records

Label:

```text
Update Course
```

Purpose:

Save updated seat count.

---

## Screenshot

![Course Seat Update Flow](screenshots/course-seat-update-flow.png)

---

## Flow Creation Steps

### Step 1

Create a new Record-Triggered Flow.

---

### Step 2

Select:

```text
Object = Registration
Trigger = Record Created
```

---

### Step 3

Add Get Records Element.

Retrieve Course record.

```text
Get Course
```

---

### Step 4

Add Assignment Element.

Increase Filled Seats by 1.

```text
Filled Seats = Filled Seats + 1
```

---

### Step 5

Add Update Records Element.

Save updated Course record.

---

### Step 6

Save and Activate Flow.

---

## Testing

### Before Registration

| Total Seats | Filled Seats |
|------------|------------|
| 60 | 20 |

---

### Registration Created

Student enrolled in course.

---

### After Registration

| Total Seats | Filled Seats |
|------------|------------|
| 60 | 21 |

---

### Result

✅ Course enrollment updated automatically.

---

## Business Value

- Maintains accurate seat counts.
- Eliminates manual updates.
- Improves reporting accuracy.
- Demonstrates cross-object automation.

---

# Automation Summary

| Flow | Status |
|--------|--------|
| Registration Auto Approval Flow | Implemented |
| Course Seat Update Flow | Implemented |

---

# Learning Outcome

Through Salesforce Flow Builder, I learned how to automate business processes without writing code.

The project demonstrated:

- Record-Triggered Flows
- Update Records Elements
- Get Records Elements
- Assignment Elements
- Cross-Object Automation
- Process Automation

These automations improve efficiency, reduce manual effort, and ensure consistent execution of business processes.

---

# Screenshots Folder Structure

```text
screenshots/
├── registration-auto-approval-flow.png
├── course-seat-update-flow.png
```

---

# Conclusion

The implemented flows successfully automate registration processing and enrollment management.

These automations demonstrate how Salesforce Flow Builder can be used to streamline business operations and reduce repetitive manual tasks.
