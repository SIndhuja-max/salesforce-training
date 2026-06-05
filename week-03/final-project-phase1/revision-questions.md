# Revision Questions and Answers

## 1. Why do enterprise systems require layered architecture?

Enterprise systems require layered architecture because different parts of the application have different responsibilities.

Example:

* User Interface Layer handles user interaction.
* Business Logic Layer processes rules.
* Database Layer stores information.
* Automation Layer executes workflows.

Benefits:

* Easier maintenance
* Better scalability
* Improved security
* Reusability of components

Layered architecture helps organizations manage complex systems efficiently.

---

## 2. Why are frontend/backend separation important?

Frontend and backend separation allows each layer to focus on its own responsibilities.

### Frontend Responsibilities

* Display information
* Collect user input
* Improve user experience

### Backend Responsibilities

* Process business logic
* Retrieve data
* Enforce security

Benefits:

* Independent development
* Better performance
* Easier maintenance
* Scalability

In the College Management System:

Frontend:

```text
Student Dashboard (LWC)
```

Backend:

```text
StudentController (Apex)
```

---

## 3. Why are Flows and Apex both useful?

Flows and Apex solve different problems.

### Flows

Best for:

* Automation
* Business processes
* Declarative development

Examples:

* Registration Auto Approval
* Course Seat Update

### Apex

Best for:

* Complex business logic
* Custom integrations
* Advanced processing

Examples:

* StudentController
* CourseTrigger

Using both together provides flexibility and efficiency.

---

## 4. Why are reusable components powerful?

Reusable components reduce development effort and improve consistency.

Benefits:

* Faster development
* Easier maintenance
* Better scalability
* Consistent user experience

Example:

The Student Dashboard component can be reused on multiple Lightning pages without rebuilding it.

---

## 5. Why do enterprise systems require approvals?

Approvals ensure that important actions are reviewed before completion.

Benefits:

* Better governance
* Reduced errors
* Compliance support
* Accountability

Example:

Student Registration
↓
Faculty Approval
↓
Department Approval
↓
Final Approval

Approvals provide control over business processes.

---

## 6. Why is debugging important?

Debugging helps identify and resolve issues in applications.

Without debugging:

* Errors remain hidden
* Data may become inconsistent
* User experience suffers

Salesforce debugging tools include:

* Debug Logs
* Flow Error Messages
* Developer Console
* Apex Exception Monitoring

Debugging is essential for maintaining reliable applications.

---

## 7. Why is data quality critical?

Enterprise decisions depend on accurate data.

Poor data quality can lead to:

* Incorrect reports
* Wrong business decisions
* Process failures

Techniques used to maintain data quality:

* Validation Rules
* Required Fields
* Duplicate Rules
* Formula Fields

High-quality data improves trust and reliability.

---

## 8. Why do large systems require scalability thinking?

A system that works for 100 users may not work for 100,000 users.

Large systems must consider:

* Performance
* Storage
* Security
* Automation Limits
* User Experience

Scalability ensures that applications continue to perform effectively as usage grows.

---

## 9. How can AI improve enterprise systems?

AI can automate decisions, provide recommendations, and improve user experience.

Examples from the College Management System:

### AI Attendance Assistant

* Predict attendance risk
* Recommend interventions

### AI Student Support Assistant

* Answer student questions
* Provide registration information

Benefits:

* Increased productivity
* Better decision-making
* Enhanced user satisfaction

---

## 10. What is the difference between coding and enterprise engineering?

### Coding

Focuses on:

* Writing features
* Solving immediate problems
* Implementing functionality

### Enterprise Engineering

Focuses on:

* Architecture
* Scalability
* Security
* Reliability
* Maintainability

A developer asks:

```text
How do I build this feature?
```

An enterprise engineer asks:

```text
How will this system perform, scale, and remain maintainable for years?
```

Enterprise engineering requires long-term thinking and system-wide design considerations.

---

# Learning Summary

Through the Salesforce Summer Program and the College Management System project, I learned:

* CRM Concepts
* Data Modeling
* Validation Rules
* Formula Fields
* Flow Automation
* Apex Programming
* Triggers
* Lightning Web Components
* Enterprise Architecture
* Scalability Thinking
* AI Integration Concepts

These skills helped me understand how real-world enterprise applications are designed, developed, and maintained.
