# Salesforce training- Day 9

## Lightning Web Components Communication and Application Architecture

---

# Objective

The objective of Day 9 is to understand how Lightning Web Components communicate with each other, how data flows through Salesforce applications, and why modular architecture is important in enterprise systems.

Key concepts covered:

- Lightning Web Component Communication
- Parent to Child Communication
- Child to Parent Communication
- Data Flow Architecture
- Dashboard Design
- Visualforce Basics
- Aura Components Basics
- Aura vs LWC
- Modular Enterprise Architecture

---

# Component Communication in LWC

Component communication allows different Lightning Web Components to exchange data and work together.

## Parent to Child Communication

The parent component sends data to the child component using the `@api` decorator.

### Parent Component

```html
<c-student-card
    student-name={studentName}>
</c-student-card>
```

### Child Component

```javascript
import { LightningElement, api } from 'lwc';

export default class StudentCard extends LightningElement {
    @api studentName;
}
```

### Output

```

Sindhu

```

### Benefits

- Easy data sharing
- Better reusability
- Clear component hierarchy

---

## Child to Parent Communication

A child component communicates with its parent using Custom Events.

### Child Component

```javascript
handleClick() {
    const event = new CustomEvent('save');
    this.dispatchEvent(event);
}
```

### Parent Component

```html
<c-child onsave={handleSave}></c-child>
```

### Parent JavaScript

```javascript
handleSave() {
    console.log('Record Saved');
}
```

### Benefits

- Loose coupling
- Event-driven architecture
- Better maintainability

---

# Dashboard Architecture

## Student Dashboard

### Components

- Student Profile
- Course List
- Attendance Tracker
- Assignment Panel
- Notification Center

### Communication Flow

```

Student Profile
↓
Course List
↓
Attendance Tracker
↓
Notification Center

```

### Example

If attendance falls below 75%, the Attendance Tracker component sends information to the Notification Center component to display a warning message.

---

## Faculty Dashboard

### Components

- Faculty Profile
- Course Management
- Attendance Management
- Student Performance
- Notification Center

### Communication Flow

```

Course Management
↓
Attendance Management
↓
Student Performance
↓
Notification Center

```

---

## Admin Dashboard

### Components

- User Management
- Course Allocation
- Reports
- System Settings
- Notification Center

### Communication Flow

```

User Management
↓
Course Allocation
↓
Reports
↓
Notification Center

```

---

# Data Flow Explanation

## Student Registration Process

### Step 1: User Interface

User enters:

- Name
- Email
- Phone Number
- Course

### Step 2: Validation

System checks:

- Required fields
- Valid email format
- Correct phone number

### Step 3: Business Flow

System:

- Creates student record
- Assigns course
- Generates student ID

### Step 4: Apex Processing

```apex
public with sharing class StudentController {

    @AuraEnabled
    public static String registerStudent(
        String studentName,
        String email
    ){

        Student__c student = new Student__c(
            Name = studentName,
            Email__c = email
        );

        insert student;

        return 'Success';
    }
}
```

### Step 5: Database

Student information is stored in Salesforce objects.

### Step 6: Notification

User receives:

```

Registration Successful

```

### Complete Flow

```

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

---

# Visualforce Overview

Visualforce is Salesforce's older page-based UI framework.

### Characteristics

- Server-centric architecture
- Page-based development
- Limited modern UI capabilities

### Limitations

- Slower performance
- More server requests
- Less reusable design

---

# Aura Components Overview

Aura introduced component-based architecture to Salesforce.

### Advantages

- Reusable components
- Event-driven communication
- Better UI organization

### Limitations

- Complex structure
- More framework overhead
- Difficult maintenance

---

# Why Salesforce Moved to LWC

Salesforce adopted Lightning Web Components because:

- Better performance
- Modern web standards
- Easier development
- Better security
- Improved reusability
- Faster rendering

### Evolution

```

Visualforce
↓
Aura
↓
LWC

```

---

# Visualforce vs Aura vs LWC

| Feature | Visualforce | Aura | LWC |
|----------|------------|------|------|
| Architecture | Page Based | Component Based | Component Based |
| Performance | Low | Medium | High |
| Reusability | Limited | Good | Excellent |
| Mobile Support | Limited | Good | Excellent |
| Learning Curve | Easy | Complex | Easy |
| Web Standards | No | Partial | Yes |
| Future Support | Legacy | Maintenance | Primary Framework |

---

# Reflection

## Why Do Enterprise Applications Need Modular Architecture?

Enterprise applications require modular architecture because it improves:

- Maintainability
- Scalability
- Reusability
- Testing
- Team Collaboration
- System Reliability

---

## Problems in Tightly Coupled Systems

- Difficult maintenance
- Complex debugging
- Poor scalability
- High dependency
- Low flexibility

---

## Why UI and Backend Should Remain Separate

### Frontend

- User interaction
- Display data

### Backend

- Business logic
- Database operations

### Benefits

- Better security
- Easier maintenance
- Scalability
- Independent development

---

# Key Learnings

- Components communicate using APIs and Events.
- Parent components pass data using @api.
- Child components communicate using Custom Events.
- Salesforce applications follow structured data flow.
- LWC provides better performance than Aura and Visualforce.
- Modular architecture improves scalability and maintainability.
- Enterprise applications rely on reusable components.

---

# Conclusion

Day 9 focused on component communication, enterprise application architecture, data flow design, and understanding why Lightning Web Components are the future of Salesforce development. These concepts are essential for building scalable and maintainable Salesforce applications.
