# 🚀 Salesforce Interview Readiness Bootcamp – Day 4

## 📌 Project Overview

This project demonstrates the fundamentals of **Lightning Web Components (LWC)** by building the first user interface for the Placement Management System.

The component displays student information, placement statistics, and demonstrates data binding, event handling, and JavaScript interaction without connecting to Apex or the Salesforce database.

---

# 🎯 Objectives

The objectives of this project are:

- Learn the structure of a Lightning Web Component.
- Build a reusable UI using HTML and JavaScript.
- Understand data binding.
- Handle button click events.
- Deploy an LWC to a Lightning Page.
- Prepare for future integration with Apex.

---

# 💡 What is Lightning Web Components (LWC)?

Lightning Web Components (LWC) is Salesforce's modern UI framework built on standard web technologies such as **HTML**, **JavaScript**, and **CSS**.

It enables developers to build reusable, fast, and maintainable user interfaces that interact with Salesforce data.

---

# 📂 LWC Structure

Every Lightning Web Component contains three files.

| File | Purpose |
|------|---------|
| placementHome.html | Defines the user interface |
| placementHome.js | Contains JavaScript logic, variables, and event handling |
| placementHome.js-meta.xml | Makes the component available in Lightning App Builder |

---

# 🖥️ Component Features

The Placement Portal displays:

- Welcome message
- Student Name
- Roll Number
- Department
- Current Date
- Registered Companies
- Available Jobs
- Applications Submitted

The component also includes:

- **Show Welcome Message** button
- **Apply** button
- Dynamic status update from **Not Applied** to **Applied**

---

# 🔄 Data Binding

The project uses **one-way data binding**.

JavaScript variables are displayed in HTML using:

```html
{studentName}
```

Whenever the JavaScript property changes, the user interface automatically reflects the updated value.

---

# ⚙️ Event Handling

Two button click events are implemented.

### Show Welcome Message

Displays:

```
Welcome to Salesforce Development.
```

### Apply

Changes

```
Status : Not Applied
```

to

```
Status : Applied
```

using JavaScript only.

---

# 📸 Project Screenshots

## Placement Portal

![Placement Portal](Screenshots/01_PlacementPortal.png)

---

## Welcome Message

![Welcome Message](Screenshots/02_ShowWelcomeMessage.png)

---

## Status Updated

![Status Applied](Screenshots/03_StatusApplied.png)

---

## Lightning App Builder

![Lightning App Builder](Screenshots/04_LightningAppBuilder.png)

---

## VS Code Project Structure

![VS Code](Screenshots/05_VSCodeProject.png)

---

# 🎓 Learning Outcomes

During this project I learned:

- Lightning Web Components (LWC)
- HTML in LWC
- JavaScript in LWC
- Meta XML configuration
- Lightning App Builder
- Data Binding
- Event Handling
- Component Deployment


