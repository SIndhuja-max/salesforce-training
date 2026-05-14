# Salesforce Flow Builder – Detailed Notes

# Introduction to Flow Builder

Flow Builder is a no-code automation tool in Salesforce used to automate business processes. It helps organizations reduce repetitive manual work and improve efficiency without writing code.

Using Flow Builder, businesses can:
- Automate tasks
- Update records automatically
- Send notifications
- Create approvals
- Handle workflows
- Improve productivity

Flow Builder works using logic-based automation where a trigger starts a process and actions are executed automatically.

---

# Why Automation Matters

Businesses perform many repetitive tasks every day such as:
- Sending emails
- Updating records
- Assigning tasks
- Managing approvals
- Following up with customers

Doing these tasks manually causes:
- Human errors
- Delays
- Duplicate work
- Reduced productivity
- Inconsistent processes

Automation solves these problems by:
- Increasing speed
- Improving accuracy
- Saving employee time
- Maintaining consistency
- Scaling operations efficiently

Automation is important in enterprise systems because companies handle thousands of records daily.

---

# What is a Flow?

A Flow is an automation process built inside Salesforce.

A flow usually follows this structure:

Trigger → Decision → Action

Example:
When a student registers:
1. System checks course availability
2. Creates student record
3. Sends welcome email
4. Notifies administration

Everything happens automatically.

---
# Interactive Experiences in Salesforce Automation

Interactive experiences are automations where users directly interact with screens, forms, or approval steps.

These automations usually require user input during execution.

---

## 1. Screen Flows

Screen Flows provide an interactive interface for users.

### Features
- Accept user input
- Display forms and screens
- Guide users step-by-step

### Example
Student admission form where users enter personal details and submit documents.

---

## 2. Autolaunched Flows

Autolaunched Flows run automatically without displaying screens.

### Features
- Runs in background
- Can be triggered by buttons or other automations
- No user interaction needed

### Example
Automatically calculating student GPA after exam marks are updated.

---

## 3. Approval Processes

Approval Processes automate approval workflows.

### Features
- Multiple approval steps
- Assigned approvers
- Automatic record updates

### Example
Faculty leave request approval process.

---

## 4. Lightning Components

Lightning Components are reusable UI components built using HTML, JavaScript, and Salesforce technologies.

### Features
- Interactive user experience
- Custom functionality
- Reusable components

### Example
Custom attendance dashboard.

---

## 5. Visualforce Pages

Visualforce Pages are custom Salesforce pages built using HTML and Apex.

### Features
- Advanced customization
- Dynamic pages
- Server-side processing

### Example
Custom student portal page.

---

# Behind-the-Scenes Automation

Behind-the-scenes automation runs automatically without user interaction.

These automations improve efficiency by executing processes automatically in the background.

---

## 1. Record-Triggered Flows

These flows run automatically when records are:
- Created
- Updated
- Deleted

### Example
When fee payment status changes to “Paid”, a confirmation email is automatically sent.

---

## 2. Schedule-Triggered Flows

These flows run automatically at scheduled times.

### Example
Daily attendance reminder emails sent every morning.

---

## 3. Platform Event-Triggered Flows

These flows start when Salesforce receives a platform event message.

### Example
Automatically notifying departments when emergency announcements are published.

---

## 4. Data Cloud-Triggered Flows

These flows run when changes happen in Data Cloud data.

### Example
Updating student analytics dashboards automatically.

---

## 5. Apex Automation

Apex is Salesforce’s programming language used for advanced automation.

### Features
- Reusable logic
- Complex business rules
- Custom automation

### Example
Advanced scholarship eligibility calculation.

---

# Flow Variables

Flow variables are containers used to store and pass data inside a flow.

Variables help flows manage information dynamically during execution.

### Uses of Variables
- Store user input
- Store record values
- Pass data between elements
- Perform calculations

### Example
A variable storing student attendance percentage.

---

# Types of Variables

## Input Variables
Receive values from external sources.

## Output Variables
Send values outside the flow.

## Collection Variables
Store multiple records together.

## Formula Variables
Perform calculations dynamically.

---


# Flow Automation Process

A flow automation process usually follows these steps:

1. Trigger starts automation
2. Flow retrieves records
3. Decision checks conditions
4. Actions execute
5. Records are updated
6. Notifications are sent
7. Process ends

---

# Global Variables and Values

Global variables are predefined Salesforce variables available in flows.

They provide system information automatically.

### Common Global Variables

| Global Variable | Purpose |
|---|---|
| $User | Current logged-in user |
| $Record | Current record in flow |
| $Organization | Organization details |
| $Flow | Flow information |
| $System | System-level values |

### Example
Using `$User.Email` to send notifications to the current user.

Global variables make automation dynamic and context-aware.

---

# Importance of Flow Builder in Enterprise Systems

Flow Builder is one of the most important automation tools in Salesforce because it allows organizations to:
- Reduce repetitive work
- Improve productivity
- Maintain consistent business processes
- Minimize human errors
- Build no-code enterprise automation

Businesses use Flow Builder extensively for CRM operations, approvals, notifications, and workflow management.

# Working with Records

Salesforce stores data as records inside objects.

Examples:
- Student record
- Course record
- Faculty record
- Fee record

Flows mainly work with records by:
- Creating records
- Updating records
- Deleting records
- Retrieving records

---
# Create Records in Flow Builder

The Create Records element is used to automatically create new records in Salesforce during flow execution.

### Purpose
- Add new data automatically
- Reduce manual data entry
- Improve processing speed

### Example
When a student submits an admission form:
- Create Student Record
- Create Enrollment Record
- Create Fee Record

### Steps to Create Records in Flow
1. Add “Create Records” element
2. Select object type
3. Assign field values
4. Save and activate flow

### Benefits
- Faster record creation
- Improved accuracy
- Reduced manual effort

---

# Update Records in Flow Builder

The Update Records element is used to modify existing Salesforce records automatically.

### Purpose
- Keep data updated
- Automate status changes
- Maintain real-time information

### Example
When fee payment is completed:
- Update payment status to “Paid”
- Update payment date
- Update receipt status

### Steps to Update Records in Flow
1. Add “Update Records” element
2. Select record to update
3. Specify fields and values
4. Save flow

### Benefits
- Real-time updates
- Better consistency
- Reduced manual work

---

# Delete Records in Flow Builder

The Delete Records element removes unnecessary records automatically.

### Purpose
- Clean unwanted data
- Maintain database quality
- Remove temporary records

### Example
Delete duplicate student applications automatically.

### Steps to Delete Records in Flow
1. Add “Delete Records” element
2. Select records to delete
3. Confirm conditions
4. Save flow

### Benefits
- Cleaner database
- Reduced storage usage
- Better data management

---

# Sending Emails Using Action Elements

Action Elements allow flows to perform important business operations such as sending emails and notifications.

---

## Send Email Action

The “Send Email” action automatically sends emails during flow execution.

### Example
When a student successfully registers:
- Send welcome email automatically

### Fee Reminder Example
If fee due date is near:
- Flow sends reminder email to student

### Steps
1. Add Action Element
2. Select “Send Email”
3. Enter recipient email
4. Add subject and body
5. Save and activate flow

### Benefits
- Instant communication
- Faster notifications
- Improved user experience

---

# Email Alerts in Flow Builder

Email Alerts are predefined email notifications used inside flows and automation processes.

### Purpose
- Notify users automatically
- Send business alerts
- Improve communication

### Example
When course seats become full:
- Send alert email to faculty and administration

### Features
- Reusable email templates
- Automatic notifications
- Consistent communication

---

# Example of Flow Automation Using Action Elements

## Scenario: Fee Payment Reminder

### Process Flow

1. Record-Triggered Flow starts
2. System checks fee status
3. Decision element verifies payment status
4. If fee is unpaid:
   - Action element sends reminder email
   - Admin receives alert notification
5. Flow ends

This automation removes manual follow-up work and improves efficiency.

---

# Importance of Action Elements

Action elements are important because they allow flows to:
- Send emails
- Create tasks
- Notify users
- Update records
- Trigger approvals
- Call Apex logic

Without action elements, flows cannot perform actual business operations.
# Trigger in Automation

A trigger is the event that starts automation.

Examples:
- Student registration
- Fee payment update
- Course completion
- Attendance shortage

Without a trigger, automation does not start.

---

# Decision Elements

Decision elements are used for conditions and branching logic.

They work like IF-ELSE statements.

### Example

IF attendance < 75%
→ Send warning email

ELSE
→ No action

Decision elements make automation intelligent.

---

# Actions in Flows

Actions are tasks performed by the flow.

Common actions:
- Send email
- Update record
- Create task
- Display message
- Notify users

Actions happen automatically after conditions are checked.

---

# Flow Logic

Flow logic represents business rules.

Basic structure:

1. Trigger starts process
2. Decision checks conditions
3. Actions execute automatically

Example:

Student submits application
↓
Check eligibility
↓
IF eligible
→ Approve application
ELSE
→ Reject application

---

# Manual Process vs Automated Process

## Manual Process
Humans perform tasks manually.

### Problems
- Slow execution
- Human mistakes
- Delays
- High workload
- Difficult scaling

---

## Automated Process
System performs tasks automatically.

### Benefits
- Faster processing
- Better accuracy
- Reduced workload
- Consistent operations
- Improved productivity

Automation is more reliable for large organizations.

---

# No-Code Automation

Salesforce Flow Builder allows users to automate processes without programming knowledge.

Advantages:
- Faster development
- Easy maintenance
- Business-friendly
- Reduced dependency on developers

This makes automation accessible to administrators and business users.

---

# Real-World Use Cases of Automation

## Education
- Student registration
- Attendance alerts
- Fee reminders

## Healthcare
- Appointment scheduling
- Patient notifications

## Banking
- Loan approvals
- Fraud alerts

## E-Commerce
- Order confirmation
- Delivery updates

Automation improves operational efficiency in every industry.

---


# Key Learnings

- Flow Builder automates business workflows
- Automation reduces repetitive manual work
- Record-Triggered Flows are highly important
- Decision logic controls automation behavior
- Businesses use automation to improve efficiency
- No-code tools simplify enterprise automation
