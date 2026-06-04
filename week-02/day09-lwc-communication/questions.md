# Day 9 Revision Questions and Answers

## 1. Why do components communicate?

### Answer

Components communicate to exchange data and coordinate actions within an application.

In Salesforce, applications are built using multiple Lightning Web Components (LWCs). These components often depend on information from one another.

Example:

```text
Attendance Component
        ↓
Notification Component
```

If attendance falls below the required percentage, the notification component must display a warning message.

### Importance

- Data sharing
- Synchronization
- Better user experience
- Improved application functionality

---

## 2. Difference between parent-child communication and events?

### Parent-to-Child Communication

The parent component sends data to the child component using the `@api` decorator.

Example:

```javascript
@api studentName;
```

Flow:

```text
Parent
   ↓
 Child
```

### Child-to-Parent Communication

The child component sends information to the parent using Custom Events.

Example:

```javascript
const event = new CustomEvent('save');
this.dispatchEvent(event);
```

Flow:

```text
Child
   ↓
 Event
   ↓
Parent
```

### Comparison

| Parent to Child | Child to Parent |
|---------------|----------------|
| Uses @api | Uses Custom Events |
| Data flows downward | Data flows upward |
| Parent controls data | Child notifies parent |
| Direct communication | Event-driven communication |

---

## 3. Why is modular architecture useful?

### Answer

Modular architecture divides a large application into smaller independent modules.

Example:

```text
Student Module
Faculty Module
Attendance Module
Course Module
Notification Module
```

### Benefits

- Easier maintenance
- Better scalability
- Code reusability
- Faster testing
- Improved collaboration

### Conclusion

Modular architecture makes enterprise applications easier to manage and expand.

---

## 4. Why did Salesforce move toward LWC?

### Answer

Salesforce moved toward Lightning Web Components (LWC) because it offers better performance, modern web standards, improved security, and easier development.

### Advantages of LWC

- Faster rendering
- Better browser performance
- Native JavaScript support
- Easier maintenance
- Improved reusability

### Evolution

```text
Visualforce
     ↓
Aura
     ↓
LWC
```

### Conclusion

LWC is Salesforce's preferred framework for modern application development.

---

## 5. What problems happen in tightly coupled systems?

### Answer

A tightly coupled system contains components that heavily depend on each other.

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

A change in one component can affect the entire system.

### Problems

- Difficult maintenance
- Complex debugging
- Poor scalability
- Reduced flexibility
- Increased risk of failures

### Conclusion

Enterprise applications should avoid tight coupling and use modular design instead.

---

## 6. Why is frontend architecture important?

### Answer

Frontend architecture determines how the user interface is structured and organized.

Good frontend architecture provides:

- Better performance
- Reusable components
- Easier maintenance
- Improved user experience
- Scalability

### Example

LWC applications use reusable components such as:

```text
Header
Sidebar
Dashboard
Footer
```

Instead of creating duplicate code.

### Conclusion

Frontend architecture improves application quality and development efficiency.

---

## 7. Why should UI and backend remain separate?

### Answer

The User Interface (UI) and backend have different responsibilities.

### Frontend Responsibilities

- Display information
- Handle user interaction
- Capture user input

### Backend Responsibilities

- Process business logic
- Manage database operations
- Handle security

### Benefits of Separation

- Better security
- Easier maintenance
- Independent development
- Improved scalability
- Better testing

### Conclusion

Separating frontend and backend creates a cleaner, more maintainable application architecture.

---

## 8. Why do large systems need reusable modules?

### Answer

Reusable modules allow developers to create functionality once and use it multiple times.

Example:

```text
Student Profile Component
```

Can be used in:

```text
Student Dashboard
Faculty Dashboard
Admin Dashboard
```

### Benefits

- Faster development
- Reduced duplication
- Consistent behavior
- Easier maintenance
- Better scalability

### Conclusion

Reusable modules improve productivity and reduce development effort in large systems.

---

# Additional Interview Questions

## What is Component Communication?

Component communication is the process of exchanging information between Lightning Web Components to keep data synchronized and application behavior coordinated.

---

## What is a Custom Event in LWC?

A Custom Event is a mechanism used by a child component to send information to its parent component.

Example:

```javascript
this.dispatchEvent(new CustomEvent('save'));
```

---

## What is the role of Apex in Salesforce Data Flow?

Apex handles server-side processing, business logic, and communication with Salesforce databases.

---

## What is Event-Driven Architecture?

Event-driven architecture is a design pattern where actions are triggered by events generated by users or components.

Example:

```text
Button Click
      ↓
Event Generated
      ↓
Action Executed
```

---

## What is the standard Salesforce application data flow?

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

This structure ensures reliable, scalable, and maintainable application design.

---

# Day 9 Summary

Key concepts covered:

- Component Communication
- Parent-to-Child Communication
- Child-to-Parent Communication
- Custom Events
- Dashboard Architecture
- Salesforce Data Flow
- Visualforce Basics
- Aura Components
- Lightning Web Components
- Modular Architecture
- Enterprise Application Design

These concepts form the foundation of modern Salesforce application development and are frequently used in real-world Salesforce projects and interviews.
