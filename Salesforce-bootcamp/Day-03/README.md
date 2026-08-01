#  Salesforce Interview Readiness Bootcamp – Day 3

##  Project Overview

Day 3 focuses on **Salesforce Automation** using **Record-Triggered Flows** and **Validation Rules** to automate a Placement Management System.

The objective was to reduce manual work by using Salesforce's declarative tools wherever possible while using Apex only for business logic that required cross-object validation.

---

#  Objectives

- Learn Record-Triggered Flows
- Understand Before-Save and After-Save Flows
- Automate field updates
- Send Email Notifications
- Create related records using Flow
- Implement Validation Rules
- Understand when to use Flow and when to use Apex Trigger

---

#  Business Scenario

A college Placement Cell manually manages student job applications.

To improve efficiency, the following automation requirements were implemented:

- Automatically populate the Application Date.
- Send an email notification when a student submits an application.
- Validate mandatory fields before saving records.
- Automatically generate an Offer Letter when an application status becomes **Selected**.
- Decide whether each requirement should be implemented using **Flow**, **Validation Rule**, or **Apex Trigger**.

---

#  Implementation

##  Flow 1 – Application Date Automation

### Trigger

**Record Created**

### Flow Type

**Before-Save Record-Triggered Flow**

### Purpose

Automatically sets the **Application Date** to the current date whenever a new Application record is created.

---

##  Flow 2 – Email Notification

### Trigger

**Record Created**

### Flow Type

**After-Save Record-Triggered Flow**

### Purpose

Automatically sends an email notification to the Placement Officer whenever a student submits a new application.

---

##  Flow 3 – Offer Letter Automation

### Trigger

**Record Updated**

### Condition

```
Status = Selected
```

### Flow Type

**After-Save Record-Triggered Flow**

### Purpose

Automatically creates an **Offer Letter** record when the application status changes to **Selected**.

> **Note:** The flow was successfully designed and configured as part of the assignment. During testing, automatic Offer Letter creation required additional debugging.

---

#  Validation Rules

The following validations were implemented for the Placement Management System.

---

## 1️ Mandatory Fields Validation

### Purpose

Ensures that both **Student** and **Job** are selected before an Application record can be saved.

### Formula

```salesforce
OR(
    ISBLANK(Student__c),
    ISBLANK(Job__c)
)
```

### Error Message

```
Student and Job fields are mandatory.
```

---

##  Student CGPA Validation

### Business Rule

A student can apply only if the student's CGPA is greater than or equal to the minimum CGPA required for the selected job.

### Implementation

Implemented using an **Apex Trigger** because the validation compares data from two different related objects:

- Student__c
- Job__c

---

##  Job Closing Date Validation

### Business Rule

Students cannot apply for a job after the job's closing date.

### Implementation

Implemented using an **Apex Trigger** because the validation compares:

- Application Date
- Job Closing Date from the related Job record

---

##  Validation Summary

| Validation | Implementation |
|------------|----------------|
| Mandatory Student & Job Fields | Validation Rule |
| Student CGPA ≥ Minimum Job CGPA | Apex Trigger |
| Application Date ≤ Job Closing Date | Apex Trigger |

---

#  Flow vs Apex

| Requirement | Solution Used |
|--------------|---------------|
| Auto Populate Application Date | Flow |
| Send Email Notification | Flow |
| Create Offer Letter | Flow |
| Duplicate Application Validation | Apex Trigger |
| Student CGPA Validation | Apex Trigger |
| Job Closing Date Validation | Apex Trigger |

---

#  Project Screenshots

## Application Date Automation Flow

![Application Date Flow](Flow_Application_Date.png)

---

## Email Notification Flow

![Email Notification](Email_Notification.png)

---

## Validation Rule

![Validation Rule](Validation_Rule.png)

---

## Application Date Test

![Application Date Test](Application_Date_Test.png)

---

## Email Notification Test

![Email Test](Email_Test.png)

---

## Offer Letter Automation Flow

![Offer Letter Flow](Offer_Letter_Flow.png)

---

#  Learning Outcomes

Through this project I learned:

- Salesforce Record-Triggered Flows
- Before-Save Flow
- After-Save Flow
- Flow Actions
- Email Notifications
- Validation Rules
- Declarative Automation
- Business Rule Enforcement
- Choosing between Flow and Apex Trigger
- Cross-Object Validation using Apex

---

#  Interview Questions

### What is Salesforce Flow?

Salesforce Flow is a declarative automation tool used to automate business processes without writing code.

---

### Difference between Before-Save and After-Save Flow?

| Before-Save Flow | After-Save Flow |
|------------------|-----------------|
| Updates the current record | Creates related records |
| Faster execution | Slightly slower |
| Cannot send email | Can send email |
| Used for field updates | Used for automation actions |

---

### When should you use Apex instead of Flow?

Use Apex when:

- Complex business logic is required
- Multiple related objects are involved
- Bulk processing is required
- External API integrations are needed
- Advanced validations cannot be implemented declaratively

---

### Can Flow replace Apex?

No.

Flow is suitable for declarative automation, while Apex is required for advanced business logic, integrations, and complex validations.

---

### Why did you use both Flow and Apex in this project?

Flow was used for declarative automation such as:

- Updating fields
- Sending email notifications
- Creating related records

Apex Trigger was used for:

- Duplicate Application Validation
- Student CGPA Validation
- Job Closing Date Validation

because these involve cross-object business logic.

---

#  Technologies Used

- Salesforce Flow Builder
- Validation Rules
- Apex Trigger
- SOQL
- Salesforce Developer Edition

