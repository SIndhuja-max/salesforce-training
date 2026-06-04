# Day 8 - Lightning Web Components (LWC) Detailed Notes

# Introduction

Lightning Web Components (LWC) is Salesforce's modern UI framework used to build fast, reusable, and scalable user interfaces.

LWC is built on modern web standards and uses:

* HTML
* JavaScript
* CSS
* Metadata XML

Salesforce introduced LWC to provide better performance, improved developer experience, and a modern component-based architecture.

---

# Why Salesforce Uses LWC

Salesforce moved from Aura Components to Lightning Web Components because:

* Better Performance
* Faster Rendering
* Easier Development
* Modern JavaScript Standards
* Improved Reusability
* Better Maintainability

## Benefits of LWC

* Lightweight Framework
* Component Reusability
* Faster Page Load
* Improved User Experience
* Easier Testing
* Better Scalability

---

# What is a Component?

A component is an independent and reusable building block of a user interface.

Examples:

* Header
* Navigation Bar
* Search Box
* Notification Panel
* Student Card

Instead of building one large page, developers create smaller components and combine them to create applications.

---

# Component-Based Architecture

Component-based architecture divides a system into smaller reusable modules.

Example:

Student Dashboard

* Header Component
* Student Profile Component
* Attendance Component
* Course Component
* Notification Component

Benefits:

* Reusability
* Easier Maintenance
* Better Scalability
* Faster Development
* Consistent UI

---

# Structure of a Lightning Web Component

Every Lightning Web Component contains:

```text
studentDashboard
│
├── studentDashboard.html
├── studentDashboard.js
└── studentDashboard.js-meta.xml
```

## HTML File

Responsible for UI structure.

Example:

```html
<template>
    <h1>Student Dashboard</h1>
</template>
```

## JavaScript File

Responsible for component logic.

Example:

```javascript
import { LightningElement } from 'lwc';

export default class StudentDashboard extends LightningElement {

}
```

## Meta XML File

Responsible for Salesforce configuration.

Example:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<LightningComponentBundle xmlns="http://soap.sforce.com/2006/04/metadata">
    <apiVersion>64.0</apiVersion>
    <isExposed>true</isExposed>
</LightningComponentBundle>
```

---

# Prerequisites for LWC Development

Before creating an LWC component, install:

## Salesforce CLI

Used to connect and deploy code to Salesforce orgs.

## Visual Studio Code

Recommended IDE for Salesforce development.

## Salesforce Extension Pack

Provides:

* Apex Support
* LWC Support
* Deployment Tools
* Debugging Tools

## Salesforce Developer Org

Required to test and deploy components.

---

# Step-by-Step: Creating an LWC Component

## Step 1: Open Salesforce Project

Open VS Code and navigate to your Salesforce project.

Example:

```text
force-app/main/default/lwc
```

---

## Step 2: Create a New LWC Component

Run:

```bash
sf lightning generate component --type lwc --name studentDashboard --output-dir force-app/main/default/lwc
```

This creates:

```text
studentDashboard
│
├── studentDashboard.html
├── studentDashboard.js
└── studentDashboard.js-meta.xml
```

---

## Step 3: Write HTML Code

studentDashboard.html

```html
<template>
    <lightning-card title="Student Dashboard">
        <p>Hello Student</p>
    </lightning-card>
</template>
```

---

## Step 4: Write JavaScript Code

studentDashboard.js

```javascript
import { LightningElement } from 'lwc';

export default class StudentDashboard extends LightningElement {

}
```

---

## Step 5: Configure Meta XML

studentDashboard.js-meta.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>

<LightningComponentBundle xmlns="http://soap.sforce.com/2006/04/metadata">

    <apiVersion>64.0</apiVersion>

    <isExposed>true</isExposed>

    <targets>
        <target>lightning__AppPage</target>
        <target>lightning__HomePage</target>
        <target>lightning__RecordPage</target>
    </targets>

</LightningComponentBundle>
```

---

# Deploying an LWC Component

Deploy component using:

```bash
sf project deploy start --source-dir force-app/main/default/lwc/studentDashboard
```

Deployment uploads component to Salesforce Org.

---

# Adding Component to Lightning App Builder

Steps:

1. Login to Salesforce
2. Open Setup
3. Search Lightning App Builder
4. Open Existing Page
5. Drag LWC Component
6. Save
7. Activate

The component will now appear on Salesforce pages.

---

# LWC Lifecycle Hooks

Lifecycle hooks execute automatically at specific stages.

## connectedCallback()

Runs when component loads.

```javascript
connectedCallback() {
    console.log('Component Loaded');
}
```

## renderedCallback()

Runs after rendering.

```javascript
renderedCallback() {
    console.log('Rendered');
}
```

## disconnectedCallback()

Runs when component is removed.

```javascript
disconnectedCallback() {
    console.log('Removed');
}
```

---

# Frontend vs Backend

## Frontend (LWC)

Responsibilities:

* User Interface
* User Experience
* Form Handling
* Button Click Events
* Displaying Data

Examples:

* Registration Form
* Attendance Screen
* Notifications

## Backend (Apex)

Responsibilities:

* Business Logic
* Database Operations
* Security
* Record Processing
* Validations

Examples:

* Fee Calculation
* Attendance Processing
* Student Record Creation

---

# LWC and Apex Communication

LWC can communicate with Apex classes.

Example:

```javascript
import getStudents from '@salesforce/apex/StudentController.getStudents';
```

Uses:

* Fetch Data
* Save Data
* Update Records
* Delete Records

---

# Secure Server-Side Development

Security is critical in Salesforce.

Important concepts:

* Profiles
* Permission Sets
* Object-Level Security
* Field-Level Security
* Record-Level Security

Benefits:

* Protects Sensitive Data
* Prevents Unauthorized Access
* Improves Reliability

---

# Real-World Use Cases of LWC

LWC is widely used in:

* CRM Systems
* Student Management Systems
* Banking Applications
* Healthcare Platforms
* HR Portals
* Customer Service Applications

---

# Key Concepts Learned

1. Lightning Web Components (LWC)
2. Component-Based Architecture
3. Reusable Components
4. Frontend vs Backend Separation
5. LWC File Structure
6. LWC Lifecycle Hooks
7. Apex Integration
8. Secure Server-Side Development
9. Modern Salesforce UI Development
10. Enterprise Application Architecture
