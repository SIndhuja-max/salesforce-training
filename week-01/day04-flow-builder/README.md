# Salesforce-training : Day 4  
# Flow Builder and Business Automation

## Overview

This project contains my Day 4 learning activities and tasks from the Salesforce Summer Program. The focus of this day was understanding Salesforce Flow Builder, workflow automation, business process improvement, and no-code automation concepts.

---

# Topics Covered

- Introduction to Flow Builder
- Business Process Automation
- Interactive Experiences
- Behind-the-Scenes Automation
- Types of Flows in Salesforce
- Screen Flows
- Record-Triggered Flows
- Scheduled Flows
- Autolaunched Flows
- Approval Processes
- Flow Variables
- Decision Elements
- Action Elements
- Global Variables
- Record Management in Flows
- Create, Update, and Delete Records
- Email Alerts and Notifications
- Manual vs Automated Processes
- Workflow Logic and Conditions

---

# What is Flow Builder?

Flow Builder is a no-code automation tool in Salesforce used to automate business processes and workflows.

Using Flow Builder, organizations can:
- Automate repetitive tasks
- Update records automatically
- Send notifications and emails
- Manage approvals
- Improve operational efficiency

Flow Builder helps businesses reduce manual effort and improve productivity without writing code.

---

# Types of Flows

## 1. Screen Flow

Screen Flows provide interactive user interfaces where users can enter information through forms and screens.

### Example
Student admission form.

---

## 2. Record-Triggered Flow

Record-Triggered Flows run automatically when records are created, updated, or deleted.

### Example
Automatically sending payment confirmation emails when fees are paid.

---

## 3. Scheduled Flow

Scheduled Flows run automatically at specific times.

### Example
Daily fee reminder notifications.

---

## 4. Autolaunched Flow

Autolaunched Flows run automatically in the background without user interaction.

### Example
Automatic GPA calculation process.

---

# Automation Ideas for College Management System

## 1. Automatic Welcome Email
Send welcome emails automatically after student registration.

## 2. Fee Payment Reminder
Automatically notify students before fee deadlines.

## 3. Auto Generate Student ID
Generate unique IDs after admission confirmation.

## 4. Course Seat Notification
Notify faculty when course capacity is full.

## 5. Attendance Warning Alerts
Automatically alert students with low attendance.

---

# Flow Design

## Process Chosen
Fee Payment Reminder Automation

### Flow Logic

Start  
↓  
Check Fee Status  
↓  
Is Fee Paid?  
├── YES → End Process  
└── NO  
↓  
Check Due Date  
↓  
Send Reminder Email  
↓  
Notify Admin  
↓  
End

---

# Manual vs Automated Process

## Manual Process
Staff manually track unpaid fees and send reminders individually.

### Problems
- Time-consuming
- Human errors
- Delayed communication
- High workload

---

## Automated Process
Salesforce Flow Builder automatically checks fee status and sends reminder emails.

### Benefits
- Faster processing
- Better accuracy
- Improved productivity
- Consistent communication

---

# Reflection – Why Automation Matters

Automation is important because businesses handle repetitive tasks daily. Manual processes reduce efficiency and increase errors.

Salesforce automation helps organizations:
- Save time
- Improve consistency
- Increase scalability
- Reduce manual effort
- Improve business operations

No-code automation tools like Flow Builder make enterprise automation faster and easier to implement.

---

# Files Included

| File Name | Description |
|---|---|
| notes.md | Detailed notes about Flow Builder and automation |
| learnings.md | Key learnings from Day 4 |
| automation-ideas.md | Automation ideas for college management |
| manual-vs-automation.md | Comparison between manual and automated workflows |
| reflection.md | Reflection on business automation |
| doubts-questions.md | Important questions and answers |
| flow-diagram.png | Flow automation diagram |
| screenshots/ | Trailhead completion screenshots |

---

# Key Takeaways

- Learned how Salesforce automates workflows
- Understood different types of flows
- Explored no-code business automation
- Learned flow logic and decision-making
- Understood record automation and email alerts
- Improved business process thinking skills

---

# Conclusion

Day 4 helped me understand how Salesforce Flow Builder automates enterprise workflows and improves business efficiency. I learned how automation reduces repetitive manual work and helps organizations build scalable and reliable systems.
