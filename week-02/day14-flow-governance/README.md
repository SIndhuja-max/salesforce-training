# Salesforce training - Day 14
## Flow Builder, Approval Processes, and Governance

---

# Objective

The objective of Day 14 is to understand how Salesforce supports enterprise-grade workflow automation through:

- Flow Builder
- Decision-Based Logic
- Variables and Formula Logic
- Branching Workflows
- Approval Processes
- Governance and Enterprise Controls

This module focuses on designing structured, secure, and auditable business processes that align with real-world organizational requirements.

---

# Topics Covered

## 1. Salesforce Flow Builder

Salesforce Flow Builder is a declarative automation tool that allows administrators to automate business processes without writing code.

### Key Components

- Start Element
- Get Records
- Create Records
- Update Records
- Delete Records
- Assignment
- Decision Element
- Loop Element
- Action Element

### Benefits

- Reduces manual work
- Improves efficiency
- Enforces business rules
- Supports enterprise automation
- Improves process consistency

---

# How to Create a Flow in Salesforce

### Step 1: Open Flow Builder

1. Login to Salesforce
2. Open Setup
3. Search for Flows
4. Click Flows
5. Click New Flow

---

### Step 2: Select Flow Type

Common Flow Types:

- Record-Triggered Flow
- Screen Flow
- Scheduled Flow
- Autolaunched Flow

---

### Step 3: Configure Start Element

Define:

- Object
- Trigger Event
- Entry Conditions

Example:

Student Record Updated

---

### Step 4: Add Flow Elements

Examples:

- Get Records
- Decision
- Assignment
- Create Records
- Update Records
- Action

---

### Step 5: Connect Elements

Design workflow paths using connectors.

---

### Step 6: Save and Debug

Verify all flow paths and conditions.

---

### Step 7: Activate Flow

Only activated flows execute in Salesforce.

---

# Flow Logic and Branching

Branching Logic allows a flow to take different actions depending on conditions.

This is implemented using the Decision Element.

---

## Attendance Monitoring Example

### Condition 1

Attendance < 50%

Action:

- Admin Escalation
- Critical Alert

---

### Condition 2

Attendance < 60%

Action:

- Parent Notification
- Counseling Recommendation

---

### Condition 3

Attendance < 75%

Action:

- Warning Email

---

### Condition 4

Attendance ≥ 75%

Action:

- No Action Required

---

# Multi-Level Approval Workflows

Approval Processes ensure that important business actions are reviewed before execution.

---

## Course Creation Approval

Faculty
↓
Department Head
↓
Academic Committee
↓
Principal
↓
Course Created

---

## Faculty Leave Request

Faculty
↓
Department Head
↓
HR Department
↓
Leave Approved

---

## Student Scholarship Request

Student
↓
Scholarship Committee
↓
Finance Department
↓
Principal
↓
Scholarship Granted

---

## Budget Approval

Department
↓
Finance Manager
↓
Vice Principal
↓
Principal
↓
Budget Approved

---

# Governance Thinking

Enterprise systems cannot allow unrestricted access to important records.

Governance ensures:

- Security
- Accountability
- Compliance
- Risk Reduction
- Auditability

---

## Risks Without Governance

- Unauthorized approvals
- Data manipulation
- Financial loss
- Compliance violations
- Operational disruptions

---

# Salesforce Governance Features

## Approval Processes

Control record approvals.

---

## Flow Builder

Automates business processes while enforcing rules.

---

## Role Hierarchy

Controls access based on organizational structure.

---

## Profiles and Permission Sets

Manage user permissions.

---

## Field-Level Security

Protects sensitive information.

---

# Reflection

Controlled workflows are essential because enterprises must balance automation with governance.

Organizations require:

- Structured approvals
- Business rule enforcement
- Security controls
- Audit trails
- Compliance mechanisms

Salesforce provides powerful tools that help organizations automate operations while maintaining accountability and control.

---

# Key Learnings

Through Day 14, I learned:

- How Flow Builder automates business processes
- How Decision Elements create branching workflows
- How variables and formulas support automation
- How Approval Processes control critical actions
- Why governance is essential in enterprise systems
- How auditability and accountability improve organizational reliability

---

# Revision Questions

1. Why are approval workflows important?
2. Why do businesses require governance?
3. What are branching workflows?
4. Why should automation follow business rules?
5. Why are decision nodes important in flows?
6. Why should enterprises restrict sensitive operations?
7. Why are approvals important in large organizations?
8. Why should workflows be auditable?

---

# Repository Structure

```text
day14-flow-governance/
│
├── README.md
├── flow-builder-notes.md
├── approval-workflows.md
├── branching-flow-logic.md
├── governance-thinking.md
├── reflection.md
└── revision-questions.md
