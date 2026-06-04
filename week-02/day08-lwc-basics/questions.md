# Day 8 - Questions and Answers

# Basic Questions

## 1. What is Lightning Web Components (LWC)?

Lightning Web Components (LWC) is Salesforce's modern UI framework used for building fast, reusable, and scalable user interfaces using web standards such as HTML, JavaScript, and CSS.

---

## 2. Why did Salesforce introduce LWC?

Salesforce introduced LWC to:

* Improve performance
* Reduce complexity
* Support modern web standards
* Increase reusability
* Enhance developer productivity

---

## 3. What technologies are used in LWC?

LWC primarily uses:

* HTML
* JavaScript
* CSS
* XML Metadata Configuration

---

## 4. What is a component?

A component is a reusable and independent UI building block that performs a specific function within an application.

Examples:

* Header
* Search Bar
* Notification Panel
* Student Card

---

## 5. What is component-based architecture?

Component-based architecture is a software design approach where applications are built using multiple reusable and independent components.

---

# LWC Structure Questions

## 6. What files are required for an LWC component?

Every LWC component contains:

1. HTML File
2. JavaScript File
3. Meta XML File

---

## 7. What is the purpose of the HTML file?

The HTML file defines the structure and layout of the user interface.

---

## 8. What is the purpose of the JavaScript file?

The JavaScript file contains the component logic, event handling, and data processing functionality.

---

## 9. What is the purpose of the Meta XML file?

The Meta XML file defines how the component is exposed and where it can be used inside Salesforce.

---

## 10. What does isExposed=true mean?

It makes the component available for use in Salesforce Lightning App Builder.

---

# Reusability Questions

## 11. What is a reusable component?

A reusable component is a component that can be used multiple times across different pages without rewriting code.

---

## 12. Why are reusable components important?

Benefits include:

* Faster Development
* Easier Maintenance
* Better Scalability
* Reduced Code Duplication
* Consistent UI Design

---

## 13. Give examples of reusable components.

Examples:

* Header
* Footer
* Navigation Bar
* Search Component
* Notification Widget

---

# Frontend vs Backend Questions

## 14. What is frontend development?

Frontend development focuses on the user interface and user interactions.

Examples:

* Forms
* Buttons
* Data Display
* Notifications

---

## 15. What is backend development?

Backend development focuses on:

* Business Logic
* Security
* Database Operations
* Data Processing

---

## 16. What is used as backend in Salesforce?

Apex is primarily used as the backend programming language in Salesforce.

---

## 17. What is used as frontend in Salesforce?

Lightning Web Components (LWC) are commonly used for frontend development.

---

## 18. Why should frontend and backend be separated?

Benefits:

* Better Security
* Easier Maintenance
* Improved Scalability
* Cleaner Architecture

---

## 19. Where should fee calculation be performed?

Fee calculation should be performed in Apex because it is business logic.

---

## 20. Where should button click handling occur?

Button click events are handled in LWC.

---

# Lifecycle Questions

## 21. What is connectedCallback()?

A lifecycle hook that executes when a component is inserted into the DOM.

---

## 22. What is renderedCallback()?

A lifecycle hook that executes after the component has been rendered.

---

## 23. What is disconnectedCallback()?

A lifecycle hook that executes when the component is removed from the DOM.

---

# Apex Integration Questions

## 24. Can LWC communicate with Apex?

Yes.

LWC can call Apex methods to retrieve or manipulate Salesforce data.

---

## 25. Why do we use Apex with LWC?

To:

* Fetch Data
* Save Records
* Update Records
* Delete Records
* Execute Business Logic

---

## 26. Give an example use case for Apex integration.

Fetching student records from Salesforce and displaying them inside an LWC component.

---

# Security Questions

## 27. Why is security important in Salesforce?

Security protects sensitive business data from unauthorized access.

---

## 28. What are some important Salesforce security concepts?

* Profiles
* Permission Sets
* Field-Level Security
* Object-Level Security
* Record-Level Security

---

## 29. What is access control?

Access control determines what data and functionality a user can access.

---

## 30. Why should developers follow secure coding practices?

To prevent:

* Data Leaks
* Unauthorized Access
* Security Vulnerabilities
* Compliance Issues

---

# Scenario-Based Questions

## 31. You need the same navigation menu on five pages. What should you do?

Create a reusable Navigation Component and use it on all pages.

---

## 32. A component needs student data from Salesforce. Should LWC directly access the database?

No.

LWC should call Apex, and Apex should retrieve the data.

---

## 33. A user clicks a Submit button. Which layer handles the click?

Frontend (LWC) handles the click event.

Backend (Apex) processes the business logic if required.

---

## 34. A fee amount must be calculated securely. Which layer should perform the calculation?

Backend (Apex).

---

## 35. Why should a Student Dashboard be broken into multiple components?

To improve:

* Reusability
* Maintainability
* Scalability
* Development Speed

---

# Viva Questions

## 36. What is LWC?

LWC is Salesforce's modern component framework built using web standards.

---

## 37. What is the difference between Aura and LWC?

| Aura            | LWC              |
| --------------- | ---------------- |
| Older Framework | Modern Framework |
| Slower          | Faster           |
| More Complex    | Simpler          |
| Proprietary     | Web Standards    |

---

## 38. What is the biggest advantage of LWC?

Performance and reusability.

---

## 39. Why do enterprise systems use component-based architecture?

Because it improves maintainability, scalability, and development efficiency.

---

## 40. What was your key learning from Day 8?

I learned how Lightning Web Components support modern Salesforce UI development through reusable components, modular architecture, frontend-backend separation, and secure application design.

---

# Quick Revision

### LWC = Frontend Framework

### Apex = Backend Logic

### Component = Reusable UI Block

### HTML = Structure

### JavaScript = Logic

### Meta XML = Configuration

### Reusability = Write Once, Use Many Times

### Component-Based Architecture = Build Applications Using Independent Components

### Security = Protect Data and Control Access

### Modern Salesforce = LWC + Apex + Security + Reusable Components
