# Salesforce Summer Program – Day 12 Notes

# Professional Salesforce Developer Workflow

## Introduction

As Salesforce projects grow, development becomes more complex. A single developer can manage small projects using the Salesforce UI, but enterprise applications require structured workflows, collaboration tools, version control systems, and deployment processes.

Modern Salesforce development relies heavily on Salesforce DX, Salesforce CLI, GitHub, and source-driven development.

These tools help teams collaborate efficiently, maintain code quality, track changes, and safely deploy applications.

---

# Salesforce DX (Developer Experience)

## What is Salesforce DX?

Salesforce DX (Developer Experience) is a modern development model introduced by Salesforce to support source-driven development and team collaboration.

Instead of building everything directly inside a Salesforce org, developers manage their work as source code stored in version control systems such as GitHub.

Salesforce DX transforms Salesforce development into a workflow similar to traditional software engineering.

---

## Traditional Salesforce Development

Older Salesforce development followed an org-centric approach.

Workflow:

Developer → Salesforce Org → Changes Saved Directly

Problems:

- Difficult to track changes
- Limited collaboration
- No proper version history
- Hard to recover deleted work
- Difficult deployment process

---

## Salesforce DX Approach

Workflow:

Developer
↓
Local Project
↓
GitHub Repository
↓
Sandbox Environment
↓
Production Environment

Benefits:

- Source-driven development
- Better collaboration
- Easier deployments
- Version control support
- Improved productivity

---

# Source-Driven Development

## What is Source-Driven Development?

Source-driven development means source code becomes the primary source of truth.

Instead of relying on the Salesforce org:

Traditional:

Salesforce Org = Source of Truth

Modern:

GitHub Repository = Source of Truth

Benefits:

- Better tracking
- Safer deployments
- Easier collaboration
- Rollback capability
- Consistent environments

---

# Salesforce CLI

## What is Salesforce CLI?

Salesforce CLI (Command Line Interface) is a tool that allows developers to interact with Salesforce using terminal commands.

CLI reduces manual work and improves efficiency.

---

## Why Use CLI?

Without CLI:

- Open browser
- Navigate pages
- Click setup menus
- Perform actions manually

With CLI:

Commands perform tasks instantly.

Examples:

```bash
sf org login web
sf project deploy start
sf apex run test
sf org list
```

Advantages:

- Faster development
- Automation support
- Reduced manual effort
- Better deployment management
- Easy integration with CI/CD pipelines

---

# Common Salesforce CLI Commands

## Login to Salesforce Org

```bash
sf org login web
```

Purpose:

Connect local machine to Salesforce org.

---

## List Authorized Orgs

```bash
sf org list
```

Purpose:

View all connected Salesforce organizations.

---

## Deploy Metadata

```bash
sf project deploy start
```

Purpose:

Deploy local source code to Salesforce org.

---

## Run Apex Tests

```bash
sf apex run test
```

Purpose:

Execute Apex test classes.

---

# GitHub in Salesforce Development

## What is GitHub?

GitHub is a cloud-based version control platform used to store, manage, and track project files.

Salesforce teams use GitHub to manage:

- Apex Classes
- Lightning Web Components
- Flows
- Objects
- Metadata
- Configuration Files

---

# Why GitHub Matters

## Version Control

Tracks every change made to a project.

Benefits:

- Change history
- Recovery of previous versions
- Audit trail

---

## Collaboration

Multiple developers can work simultaneously.

Benefits:

- Shared development
- Reduced conflicts
- Organized workflow

---

## Backup

GitHub serves as a secure backup repository.

Benefits:

- Prevents data loss
- Easy restoration

---

## Rollback

Developers can restore older versions when problems occur.

Benefits:

- Reduced deployment risk
- Faster issue resolution

---

# Branching Strategy

## What is a Branch?

A branch is an independent version of the code.

Example:

main
├── feature-login
├── feature-dashboard
└── bug-fix-account

Each developer works in a separate branch.

Benefits:

- Isolation of changes
- Safer development
- Easier code reviews

---

# Pull Requests

## What is a Pull Request?

A pull request is a request to merge changes into the main branch.

Process:

Developer creates feature
↓
Pushes code
↓
Creates Pull Request
↓
Code Review
↓
Approval
↓
Merge

Benefits:

- Improved quality
- Peer review
- Reduced bugs

---

# Team Collaboration Challenges

Imagine 10 developers working on one Salesforce project.

Without GitHub:

Problems:

- Overwritten code
- Lost changes
- Duplicate work
- Deployment conflicts
- Difficult debugging

With GitHub:

Solutions:

- Version tracking
- Branching
- Pull requests
- Code reviews
- Merge control

---

# Sandbox and Production

## Sandbox

Sandbox is a testing environment.

Purpose:

- Development
- Testing
- Validation

Changes here do not affect real users.

---

## Production

Production is the live environment used by customers.

Purpose:

- Real business operations
- Real customer data

Changes must be carefully tested before deployment.

---

# Enterprise Development Workflow

Professional Salesforce teams typically follow:

Developer Sandbox
↓
Integration Sandbox
↓
QA Testing
↓
UAT Testing
↓
Production

This process reduces deployment risks.

---

# Testing in Enterprise Projects

Testing ensures software works correctly before deployment.

Types:

## Unit Testing

Tests individual components.

Example:

Apex Test Classes

---

## Integration Testing

Tests communication between components.

Example:

LWC interacting with Apex Controller.

---

## User Acceptance Testing (UAT)

Business users validate functionality.

Example:

Sales team verifies Opportunity process.

---

# Deployment Workflow

Deployment is the process of moving code between environments.

Example:

Development
↓
Testing
↓
Production

Benefits:

- Controlled releases
- Reduced errors
- Better quality assurance

---

# Rollback Capability

Rollback means restoring a previous stable version after a failed deployment.

Benefits:

- Business continuity
- Faster recovery
- Reduced downtime

GitHub makes rollback easier using commit history.

---

# Agentforce DX (Overview)

Agentforce DX represents Salesforce's evolving AI-powered developer tooling.

Goals:

- Improve productivity
- Assist developers
- Automate repetitive tasks
- Enhance software delivery

This topic is introductory and focuses on future development trends.

---

# College Projects vs Enterprise Projects

## College Projects

Characteristics:

- Small teams
- Limited users
- Simple requirements
- Minimal testing

Goal:

Complete assignment successfully.

---

## Enterprise Projects

Characteristics:

- Large teams
- Thousands or millions of users
- Strict quality standards
- Security requirements
- Multiple environments

Goal:

Deliver reliable and scalable software.

---

# Key Learnings

1. Salesforce DX enables source-driven development.
2. Salesforce CLI improves developer productivity.
3. GitHub provides version control and collaboration.
4. Branches prevent developers from overwriting each other's work.
5. Pull requests improve code quality.
6. Sandboxes provide safe development environments.
7. Testing is essential before deployment.
8. Rollback capability reduces deployment risks.
9. Enterprise development requires structured workflows.
10. Modern Salesforce development follows professional software engineering practices.

---

# Conclusion

Salesforce development in enterprise environments is not limited to writing code. Successful projects require collaboration, version control, testing, deployment strategies, and workflow management.

Salesforce DX, Salesforce CLI, and GitHub collectively provide a modern development ecosystem that enables teams to build scalable, reliable, and maintainable Salesforce applications.
