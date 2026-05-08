# Salesforce-training  Day 1 Notes

# What is Salesforce?

Salesforce is a cloud-based Customer Relationship Management (CRM) platform used by companies to manage customers, sales, services, and business operations.
It helps organizations:
- Store customer information
- Track communication
- Automate workflows
- Improve customer relationships
- Increase sales efficiency
Salesforce works completely on the cloud, so users can access it from anywhere using the internet,which means:
- No need to install software
- Accessible from anywhere
- Real-time updates
- Secure data management

---

# What Problem Does Salesforce Solve?

Before Salesforce, companies used:
- Excel sheets
- Paper records
- Multiple disconnected systems

This caused problems such as:
- Lost customer information
- Missed follow-ups
- Poor communication
- Difficulty tracking sales
- Unorganized business data

Salesforce solves these problems by providing a centralized platform to:
- Manage customer data
- Track sales
- Improve communication
- Automate business processes
- Generate reports and analytics

---

# Why Salesforce is Popular

Companies use Salesforce because it helps them:
- Improve customer relationships
- Increase sales
- Automate repetitive work
- Track business activities
- Manage customer support
- Store all customer data centrally
Big companies like banks, hospitals, colleges, e-commerce companies, and IT firms use Salesforce.

---

# What is CRM?

CRM stands for: Customer Relationship Management
CRM is a system used to manage customer interactions and business relationships.
CRM helps businesses:
- Store customer information
- Track communication
- Manage sales process
- Improve customer service
- Build long-term customer relationships
Salesforce is one of the most popular CRM platforms in the world.
Without CRM:
- Customer data gets lost
- Follow-ups are missed
- Teams become disorganized
- Sales decrease
CRM solves these problems by organizing customer information and business workflows.

---

# Salesforce Business Workflow

Lead → Contact → Opportunity → Customer
This represents the customer journey in a CRM system.

---

# Difference Between Lead, Contact, and Opportunity

## Lead
A potential customer who has shown interest in a product or service.
At this stage:
- Customer is not confirmed
- Company is collecting information
Example:
Student asking for admission information.
---
## Contact
A confirmed person associated with a business or account.
The company now knows:
- The person is genuine
- Communication has started
Example:
Student discussing admission with counselor.
---
## Opportunity
A possible business deal or sale.
It shows:
- Potential revenue
- Probability of success
Sales progress
Example:
Admission process for B.Tech course.

---

#  What are Objects in Salesforce?

Objects are database tables used to store related information in Salesforce.
Examples:
- Account
- Contact
- Lead
- Opportunity

Example:
The Contact object stores information about people such as:
- Name
- Phone Number
- Email

---

# What are Records in Salesforce?

A Record is a single row or entry inside an object.
Example:
Object:
Contact

Record:
- Name: Sindhu
- Email: sindhu@gmail.com
- Phone: 9876543210

---

# Difference Between Salesforce Admin and Developer

|      Salesforce Admin         |    Salesforce Developer           |
|-------------------------------|-----------------------------------|
| Manages Salesforce platform   | Builds custom applications        |
| Works mostly with settings    | Works with coding and development |
| Creates reports and dashboards| Develops custom functionality     |
| Manages users and permissions | Writes Apex and Lightning code    |
| Focuses on configuration      | Focuses on development            |

---

# Why Businesses Use Salesforce

Businesses use Salesforce because it helps them:
- Centralize customer data : All customer information is stored in one place.
- Track sales efficiently
- Automate repetitive tasks
- Improve customer service : Support teams can quickly access customer history and solve issues    faster.
- Generate reports and analytics
- Access data from anywhere

---

# What is Salesforce Playground?

Salesforce Playground is a practice environment provided by Salesforce.
It helps users:
- Practice safely
- Build applications
- Learn Salesforce hands-on
- Complete Trailhead challenges
- Experiment without affecting real company data
  
## how to create playground
- To create a new Trailhead Playground, click the name of your org and click Create Playground. Give your playground a name, click Create, and that’s it! Now you have an org that you can use to complete hands-on challenges and projects, and test new features and code.

## Get your Username and Reset your password
### If your playground has the Playground Starter app, follow these steps to reset your password.
- Click the Get Your Login Credentials tab. Here you can see your Trailhead Playground username. 
- Click Reset My Password. This sends an email to the address associated with your username.
- Click the link in the email.
- Enter a new password, confirm it, and click Change Password.
### Your Playground Doesn’t Have the Playground Starter App
- Launch your Trailhead Playground by clicking Launch from any hands-on challenge
- Click Setup and select Setup.
- Enter UsersCopy in Quick Find and select Users.
- Locate your name on the list of users. Check the box next to your name. Take note of the username. This is the username for your Trailhead Playground.
- Click Reset Password(s) and OK. This sends an email to the email address associated with your username. Be sure to check your spam folder if you don't see the email.
- Click the link in the email.
- Enter a new password, confirm it, and click Change Password.
- Now you have your username and password for your Trailhead playground. If you're planning on creating multiple Trailhead Playgrounds, use a password manager to store your credentials.

## Connect, Disconnect, or Rename a Trailhead Playground
From any hands-on challenge or project step, click the name of your playground and then click Manage Orgs.
- From here, click Rename  next to one of your Trailhead Playgrounds to rename it.
- click Disconnect  to disconnect it. 
- To connect a Trailhead Playground or Developer Edition org, click Connect Org. 
- To create a playground, click Create Playground.

---

# Important Salesforce Objects

1️ Account
Represents a company or organization.
Example:
Engineering College
To Create Account:
- If you don’t already have your Trailhead Playground open, scroll down to the Challenge section and click Launch to open it.
- Click the App Launcher (App Launcher icon), and click the Sales tile.
- In the navigation bar, click Accounts.
- Click New.
- For Account Name, enter Maria’s MachiningCopy.
- For Type, choose Customer - Direct.
- For Industry, choose Manufacturing.
- Click Save.

2️ Contact
Represents a person associated with an Account.
Example:
Student or Parent
To Create Account:
- In the Contacts related list, click New.
- For First Name, enter MariaCopy.
- For Last Name, enter VillaricoCopy.
- For Phone, enter (650) 555-6789Copy.
- Click Save.

3️ Opportunity
Represents a potential business deal.
To make an opportunity for example data:
- If you’re not viewing the Maria’s Machining account, click Accounts in the navigation bar, then click Maria’s Machining.
- From the Contacts related list, click Maria Villarico.
- In the Opportunities related list, click New.
- For Opportunity Name, enter Backup generator for expansion siteCopy.
- For Amount, enter 200000Copy.
- For Close Date, choose a day one week from today.
- For Stage, choose Prospecting.
- Click Save

---

# Real-World Application Using Salesforce

## 🎓 College Management System

A College Management System can be built using Salesforce.

Features:
- Student admission management
- Attendance tracking
- Fee management
- Faculty management
- Student support system

### Salesforce Object Mapping

| Salesforce Object | Real-World Example |
|-------------------|--------------------|
| Lead              | Student inquiry    |
| Contact           | Student details    |
| Account           | College department |
| Opportunity       | Admission process  |
| Customer          | Student who joined |

---

