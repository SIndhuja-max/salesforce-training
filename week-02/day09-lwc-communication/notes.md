# Day 9 Notes – Lightning Web Component Communication and Application Architecture

## Introduction

Modern Salesforce applications are built using multiple Lightning Web Components (LWCs). These components work together to create dynamic, scalable, and maintainable applications.

To build enterprise-grade applications, developers must understand:

- Component Communication
- Data Flow
- Event-Driven Architecture
- Dashboard Design
- Modular System Design
- Aura and Visualforce Basics
- Why Salesforce Uses LWC

---

# Lightning Web Component Communication

## What is Component Communication?

Component communication is the process of sharing information between Lightning Web Components.

Without communication:

- Components work independently.
- Data becomes inconsistent.
- User experience suffers.

With communication:

- Components remain synchronized.
- Information updates automatically.
- Applications become interactive.

---

# Parent to Child Communication

Parent components send data to child components using the `@api` decorator.

## Process

```text
Parent Component
        ↓
     @api
        ↓
Child Component
```

## Parent Example

```html
<c-student-card
    student-name={studentName}>
</c-student-card>
```

## Child JavaScript

```javascript
import { LightningElement, api } from 'lwc';

export default class StudentCard extends LightningElement {
    @api studentName;
}
```

## Child HTML

```html
<p>{studentName}</p>
```

## Output

```text
Sindhu
```

## Advantages

- Simple implementation
- Clear data flow
- Reusable components

---

# Child to Parent Communication

Children cannot directly modify parent data.

Instead, they send Custom Events.

## Process

```text
Child Component
        ↓
  Custom Event
        ↓
Parent Component
```

## Child JavaScript

```javascript
handleSave() {
    const event = new CustomEvent('save');
    this.dispatchEvent(event);
}
```

## Parent HTML

```html
<c-child onsave={handleSave}></c-child>
```

## Parent JavaScript

```javascript
handleSave() {
    console.log('Data Saved');
}
```

## Advantages

- Loose coupling
- Better maintainability
- Event-driven architecture

---

# Event-Driven Architecture

An event-driven system reacts to actions performed by users or components.

Example:

```text
Attendance Updated
        ↓
Custom Event
        ↓
Notification Component
        ↓
Warning Message
```

Benefits:

- Better scalability
- Flexible design
- Improved responsiveness

---

# Dashboard Architecture

Enterprise applications often organize functionality through dashboards.

---

# Student Dashboard

## Components

- Student Profile
- Course List
- Attendance Tracker
- Assignment Panel
- Notification Center

## Communication Flow

```text
Student Profile
        ↓
Course List
        ↓
Attendance Tracker
        ↓
Notification Center
```

## Example

If attendance falls below 75%:

```text
Attendance Tracker
        ↓
Notification Center
```

Displays:

```text
Attendance Warning
```

---

# Faculty Dashboard

## Components

- Faculty Profile
- Course Management
- Attendance Management
- Student Performance
- Notification Center

## Communication Flow

```text
Course Management
        ↓
Attendance Management
        ↓
Student Performance
        ↓
Notification Center
```

---

# Admin Dashboard

## Components

- User Management
- Course Allocation
- Reports
- System Settings
- Notification Center

## Communication Flow

```text
User Management
        ↓
Course Allocation
        ↓
Reports
        ↓
Notification Center
```

---

# Salesforce Data Flow

Every enterprise application follows a structured flow.

## Architecture

```text
UI
↓
Validation
↓
Flow
↓
Apex
↓
Database
↓
Notification
```

Each layer has a specific responsibility.

---

# UI Layer

The User Interface collects information from users.

Example:

```text
Name
Email
Phone Number
Course
```

Responsibilities:

- Display data
- Collect input
- Trigger actions

---

# Validation Layer

Validation ensures data accuracy.

Checks:

- Required fields
- Email format
- Phone format
- Business rules

Example:

```text
Email Required
```

or

```text
Invalid Email Format
```

---

# Flow Layer

Flow contains business logic.

Example:

Student Registration Process:

```text
Create Student
Assign Course
Generate Student ID
```

Responsibilities:

- Process business rules
- Coordinate actions
- Trigger backend logic

---

# Apex Layer

Apex executes server-side operations.

Example:

```apex
insert studentRecord;
```

Responsibilities:

- Data processing
- Database interaction
- Complex business logic

---

# Database Layer

Stores application data permanently.

Example Object:

```text
Student__c
```

Fields:

```text
Name
Email
Course
Student ID
```

---

# Notification Layer

Provides feedback to users.

Examples:

```text
Registration Successful
Course Assigned
Attendance Warning
```

Notification Channels:

- Toast Messages
- Email
- SMS
- Notification Panel

---

# Visualforce Basics

Visualforce is Salesforce's older UI technology.

Example:

```html
<apex:page>
    Hello Salesforce
</apex:page>
```

Characteristics:

- Page-based architecture
- Server-side rendering
- Legacy framework

Limitations:

- Slower performance
- Less reusable
- Limited modern UI capabilities

---

# Aura Components Basics

Aura introduced component-based development.

Advantages:

- Reusable components
- Event handling
- Better organization

Challenges:

- Multiple files
- Framework overhead
- Complex structure

Typical Aura Structure:

```text
Component.cmp
Controller.js
Helper.js
Renderer.js
Design File
```

---

# Lightning Web Components (LWC)

LWC is Salesforce's modern framework.

Uses:

- HTML
- CSS
- JavaScript
- Web Standards

Typical LWC Structure:

```text
studentCard
│
├── studentCard.html
├── studentCard.js
├── studentCard.css
└── studentCard.js-meta.xml
```

---

# Why Salesforce Moved to LWC

Reasons:

1. Better Performance
2. Native Browser Support
3. Easier Development
4. Better Security
5. Improved Reusability
6. Reduced Framework Overhead

---

# Visualforce vs Aura vs LWC

| Feature | Visualforce | Aura | LWC |
|----------|------------|------|------|
| Architecture | Page-Based | Component-Based | Component-Based |
| Performance | Low | Medium | High |
| Reusability | Limited | Good | Excellent |
| Mobile Support | Limited | Good | Excellent |
| Web Standards | No | Partial | Yes |
| Future Direction | Legacy | Maintenance | Preferred |

---

# Modular Architecture

Modular architecture divides large systems into independent modules.

Example:

```text
Student Module
Faculty Module
Attendance Module
Course Module
Notification Module
Reports Module
```

Advantages:

- Easier maintenance
- Better scalability
- Faster development
- Reusable code
- Easier testing

---

# Tightly Coupled Systems

A tightly coupled system has components that heavily depend on each other.

Example:

```text
Attendance
↓
Course
↓
Reports
↓
Notifications
```

Problems:

- Difficult maintenance
- Poor scalability
- Complex debugging
- Higher risk of failures

---

# UI and Backend Separation

Frontend Responsibilities:

- Display information
- User interaction

Backend Responsibilities:

- Business logic
- Database operations

Benefits:

- Better security
- Independent development
- Easier maintenance
- Scalability

---

# Summary

Day 9 focused on:

- Component Communication
- Parent-Child Data Transfer
- Custom Events
- Dashboard Architecture
- Data Flow
- Aura vs LWC
- Visualforce Basics
- Modular Enterprise Design

These concepts form the foundation of modern Salesforce application development.
