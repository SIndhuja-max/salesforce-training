# Salesforce Summer Program - Day 8

# Lightning Web Components (LWC) Basics

## Overview

This repository contains my Day 8 learning activities from the Salesforce Summer Program.

The focus of Day 8 was understanding Lightning Web Components (LWC), component-based architecture, frontend vs backend separation, reusable UI design, and secure enterprise application development.

Through this module, I learned how Salesforce builds modern user interfaces using reusable components and how frontend and backend systems work together in enterprise applications.

---

# Learning Objectives

By completing Day 8, I gained knowledge about:

* Lightning Web Components (LWC)
* Modern Salesforce UI Development
* Component-Based Architecture
* Reusable UI Components
* Frontend vs Backend Responsibilities
* Secure Server-Side Development
* Enterprise Application Design Principles

---

# What is Lightning Web Components (LWC)?

Lightning Web Components (LWC) is Salesforce's modern UI framework used to build fast, reusable, and scalable user interfaces.

LWC is based on modern web standards and uses:

* HTML
* JavaScript
* CSS
* Metadata XML

LWC enables developers to create modular components that can be reused across Salesforce applications.

---

# Why Salesforce Uses LWC

Salesforce introduced LWC to provide:

* Better Performance
* Faster Rendering
* Improved Scalability
* Easier Maintenance
* Modern Development Experience
* Reusable UI Components

### Benefits

* Lightweight Framework
* Modern JavaScript Support
* Better User Experience
* Reduced Code Duplication
* Improved Application Maintainability

---

# Key Concepts Covered

## 1. Component-Based Architecture

Applications are built using multiple reusable components instead of one large page.

Example:

Student Dashboard

* Header Component
* Student Profile Component
* Attendance Component
* Course Component
* Notification Component

Benefits:

* Reusability
* Scalability
* Maintainability
* Faster Development

---

## 2. Reusable Components

Reusable components can be developed once and used across multiple pages.

Examples:

* Navigation Bar
* Search Component
* Notification Widget
* Student Information Card

Benefits:

* Consistent UI
* Reduced Development Time
* Easier Maintenance

---

## 3. Frontend vs Backend

### Frontend (LWC)

Responsibilities:

* User Interface
* User Interaction
* Form Handling
* Data Display

Examples:

* Button Clicks
* Forms
* Notifications

### Backend (Apex)

Responsibilities:

* Business Logic
* Security
* Data Processing
* Database Operations

Examples:

* Fee Calculation
* Attendance Processing
* Student Record Creation

---

# UI Thinking Exercise

## College Management System Screens

### Student Registration Screen

Features:

* Student Name
* Roll Number
* Email
* Department

### Student Dashboard

Features:

* Student Profile
* Attendance
* Course Information
* Notifications

### Attendance Management Screen

Features:

* Attendance Percentage
* Subject-Wise Attendance
* Attendance History

### Course Management Screen

Features:

* Course Details
* Schedule
* Faculty Information

### Faculty Dashboard

Features:

* Student Records
* Attendance Updates
* Announcements

---

# Component Breakdown

## Student Dashboard Architecture

Student Dashboard

* Header Component
* Student Profile Component
* Attendance Component
* Course Component
* Notification Component

### Why Reusable Components Matter

* Faster Development
* Easier Maintenance
* Better Scalability
* Improved User Experience
* Reduced Code Duplication

---

# LWC Development Process

### Step 1: Create Component

```bash
sf lightning generate component --type lwc --name studentDashboard --output-dir force-app/main/default/lwc
```

### Step 2: Develop Component Files

* HTML
* JavaScript
* Meta XML

### Step 3: Deploy to Salesforce

```bash
sf project deploy start --source-dir force-app/main/default/lwc/studentDashboard
```

### Step 4: Add to Lightning App Builder

* Open Salesforce Setup
* Launch Lightning App Builder
* Drag Component to Page
* Save and Activate

---

# Security Awareness

Important Salesforce security concepts:

* Profiles
* Permission Sets
* Field-Level Security
* Object-Level Security
* Record-Level Security

Security ensures users access only authorized information.

---

# Key Learnings

* Learned Salesforce UI architecture.
* Understood Lightning Web Components.
* Learned component-based thinking.
* Understood reusable component design.
* Learned frontend and backend separation.
* Understood enterprise security fundamentals.
* Explored modern Salesforce development practices.

---

# Repository Structure

```text
day8-lwc-basics/
│
├── README.md
├── NOTES.md
├── LEARNINGS.md
├── QUESTIONS.md
└── screenshots/
```

---

# Files Included

## NOTES.md

Detailed theoretical concepts, LWC architecture, lifecycle hooks, deployment process, security concepts, and practical examples.

## LEARNINGS.md

Personal understanding, reflections, and key takeaways from Day 8.

## QUESTIONS.md

Interview questions, viva questions, revision questions, scenario-based questions, and answers.

---

# Outcome

By completing Day 8, I successfully understood:

* Lightning Web Components (LWC)
* Modern Salesforce UI Architecture
* Reusable Component Design
* Component-Based Development
* Frontend vs Backend Separation
* Secure Enterprise Application Development

This knowledge forms the foundation for advanced Salesforce UI development using Lightning Web Components.

---


