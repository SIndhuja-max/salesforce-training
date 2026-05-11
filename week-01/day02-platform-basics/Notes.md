# Salesforce-training:  Day 02 Notes

# 📌 Salesforce Platform Overview

Salesforce is a cloud-based CRM platform that helps organizations manage customers, automate business processes, store data, and build applications.
It provides tools for:
- Customer Relationship Management (CRM)
- Sales automation
- Service management
- Application development
- Workflow automation
- Reporting and analytics
Salesforce works completely on the cloud, so users can access it from anywhere using the internet.

---

# 📌 Navigation in Salesforce
Navigation in Salesforce helps users move between apps, objects, records, dashboards, and tools.
Main navigation components:
- App Launcher
- Navigation Bar
- Tabs
- Search Bar
- Dashboards
- Reports
Users can easily switch between apps and access records through tabs.

---

# 📌 Apps and Objects in Salesforce

## What is an App?
An App in Salesforce is a collection of related tools, tabs, objects, and features designed for a specific business process.
### Examples:
- Sales App
- Service App
- College Management App
### Example:
A College Management App may contain:
- Student Object
- Faculty Object
- Course Object
- Attendance Object
The app organizes everything needed for managing the system.

---

## What is an Object?
An Object stores data in Salesforce similar to a database table.
Each object contains records and fields.
### Example:
Student Object contains:
- Student Name
- Roll Number
- Department
- Email
Each student entry is called a record.

---

## what is an Tab?
A Tab is a user interface element used to access objects and features in Salesforce.
## Example:
Clicking the “Students” tab opens student records.
- Tabs help users navigate easily inside the application.

# 📌 Why Salesforce is Different

## Salesforce is different because:
- It is fully cloud-based
- No local installation required
- Supports both no-code and coding development
- Easy scalability
- Fast deployment
- Automatic updates
- Secure multi-tenant architecture

---

# 📌 How Salesforce UI is Structured
## Salesforce User Interface contains:
- App Launcher
- Navigation Tabs
- Record Pages
- Dashboards
- Reports
- Setup Menu
The UI is designed to help users access data and perform actions quickly.

--- 

# 📌 How Salesforce Platform Works
Salesforce works through:
- Cloud infrastructure
- Apps for business functions
- Objects for storing data
- Automation tools
- APIs for integrations
- Security and access controls
Users interact with the platform through apps and tabs while developers extend functionality using Apex and APIs.

---
# 📌 Multi-Tenant Architecture
Salesforce uses multi-tenant architecture.
This means multiple organizations share the same infrastructure securely.
## Example:
Like multiple families living in the same apartment building:
Same building
Separate rooms
Private belongings
Similarly:
Same Salesforce servers
Separate customer data
Secure access

---
# 📌 Developer vs Admin in Salesforce
## Salesforce Admin
Admins manage Salesforce using configuration tools.
Responsibilities:
- Create objects
- Manage users
- Build flows
- Configure security
- Customize page layouts
Admins mostly use clicks instead of code.

## Salesforce Developer
Developers extend Salesforce functionality using code.
Responsibilities:
- Write Apex code
- Build Lightning Components
- Integrate external systems
- Create custom logic
- Develop advanced automation

--- 
# 📌 How Development Happens in Salesforce
Development in Salesforce happens in two ways:

## 1. Configuration (No Code)
Using built-in Salesforce tools without programming.
Tools Used:
- Flow Builder
- Validation Rules
- Process Builder
- Page Layouts
Advantages:
- Faster
- Easier maintenance
- Less technical effort
## 2. Coding (Apex Development)
Using programming for advanced customization.
Technologies:
- Apex
- Lightning Components
- APIs
- SOQL
Used For:
- Complex automation
- External integrations
- Custom business logic
## Difference Between Configuration and Coding
| Configuration	                | Coding                   |
|-------------------------------|--------------------------|
|No-code approach               |	Uses programming         |
|Faster implementation	        | More flexible            |
|Easier to maintain             | Handles complex logic    |
|Uses built-in tools	          | Uses Apex and APIs       |
|Preferred first	              |Used when needed          |

----
# 📌 When to Use Clicks (Configuration)
Use configuration when:
- Requirement is simple
- Built-in tools can solve the problem
- Faster implementation is needed
## Examples:
- Validation Rules
- Approval Processes
- Flow Automation
- Custom Fields
# 📌 When to Use Code
Use coding when:
- Complex logic is required
- External integrations are needed
- Configuration is insufficient
## Examples:
- Payment Gateway Integration
- Complex calculations
- Custom API services
- Advanced automation

---
# 📌Connecting Day 1 and Day 2
## How CRM Concepts Fit into Salesforce Platform
Salesforce stores CRM concepts using objects inside apps.
|CRM Concep	             |Salesforce Representation |
|------------------------|--------------------------|
|Account	               |Object                    |
|Contact	               |Object                    |
|Opportunity	           |Object                    |

## Explanation:
- Account Object stores company or customer details
- Contact Object stores customer/person information
- Opportunity Object stores potential sales deals
These objects are grouped inside Sales Apps where users access them through tabs and records.
This structure helps businesses manage customer relationships efficiently.

# Real System Design Example
## App Name
College Management App
## Objects Inside App
- Student
- Faculty
- Course
- Attendance
- Admission
## User Interaction
- Admin manages admissions
- Faculty updates attendance
- Students view course information
- Staff manage records using tabs and dashboards
