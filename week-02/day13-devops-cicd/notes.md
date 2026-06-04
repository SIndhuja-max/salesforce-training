# Salesforce taining – Day 13 Notes

# DevOps, CI/CD and Enterprise Deployment Workflow

## Introduction

Modern Salesforce development is not only about writing Apex code, creating Lightning Web Components, or building automation. Enterprise organizations require structured deployment processes to ensure software is delivered safely, reliably, and efficiently.

As applications grow larger and teams become bigger, organizations need methods to manage code changes, automate testing, reduce deployment risks, and maintain system stability.

This is where DevOps, CI/CD, deployment pipelines, GitHub Actions, and release management become essential.

---

# What is DevOps?

## Definition

DevOps is a combination of two terms:

- Development
- Operations

DevOps is a software engineering approach that promotes collaboration between development teams and operations teams to improve software delivery.

---

## Traditional Approach

In traditional software development:

Developers write code.
↓
Operations teams deploy code.
↓
Communication gaps occur.
↓
Deployment failures become common.

Problems:

- Slow releases
- Manual deployments
- Communication issues
- Increased deployment risks

---

## DevOps Approach

Development Team
↓
Automation
↓
Testing
↓
Deployment
↓
Monitoring

Benefits:

- Faster delivery
- Improved collaboration
- Better software quality
- Reduced deployment failures
- Increased reliability

---

# Why DevOps Matters

Enterprise applications often serve thousands or millions of users.

Examples:

- Banking systems
- Healthcare applications
- University management systems
- E-commerce platforms
- CRM systems

A deployment failure in these systems can affect thousands of users.

DevOps helps organizations reduce these risks.

---

# What is CI?

## Continuous Integration

Continuous Integration (CI) is the practice of automatically integrating code changes into a shared repository.

Whenever developers commit code:

1. Code is uploaded to GitHub.
2. Automated tests are executed.
3. Validation checks run.
4. Team receives feedback.

---

## CI Workflow

Developer Writes Code
↓
GitHub Commit
↓
Automated Build
↓
Automated Testing
↓
Validation

If tests fail:

❌ Deployment Stops

If tests pass:

✅ Workflow Continues

---

## Benefits of CI

- Detects bugs early
- Improves code quality
- Reduces integration problems
- Supports team collaboration
- Speeds up development

---

# What is CD?

## Continuous Delivery

Continuous Delivery ensures code is always ready for deployment.

Workflow:

Code Change
↓
Testing
↓
Validation
↓
Deployment Ready

Benefits:

- Faster releases
- Reduced deployment risks
- Consistent deployment process

---

## Continuous Deployment

Continuous Deployment goes one step further.

After successful testing:

Code automatically deploys to production.

Workflow:

Code Change
↓
Testing
↓
Validation
↓
Automatic Deployment

Benefits:

- Faster software delivery
- Reduced manual work
- Increased efficiency

---

# CI/CD Pipeline

## What is a Pipeline?

A pipeline is a sequence of automated steps used to deliver software safely.

---

## Typical CI/CD Pipeline

Developer Writes Code
↓
GitHub Commit
↓
Automated Testing
↓
Validation
↓
Deployment
↓
Production Release

Each stage ensures software quality before release.

---

# Why Deployment Workflow Matters

Deployment workflow ensures changes move safely from development environments to production.

Without a deployment workflow:

- Bugs reach production
- Deployments become inconsistent
- Increased downtime
- Higher business risk

With deployment workflow:

- Controlled releases
- Better quality assurance
- Improved stability
- Easier troubleshooting

---

# GitHub in DevOps

GitHub acts as the central repository for source code.

GitHub provides:

- Version control
- Collaboration
- Branch management
- Pull requests
- Deployment integration

---

# GitHub Workflow

Developer Creates Branch
↓
Develop Feature
↓
Commit Changes
↓
Push to GitHub
↓
Pull Request
↓
Code Review
↓
Merge
↓
Deployment

Benefits:

- Better collaboration
- Improved code quality
- Reduced deployment issues

---

# GitHub Actions

## What are GitHub Actions?

GitHub Actions is GitHub's automation platform.

It automatically performs tasks when specific events occur.

Examples:

- Run tests
- Validate code
- Deploy applications
- Generate reports

---

## Example Workflow

Developer Pushes Code
↓
GitHub Action Starts
↓
Run Apex Tests
↓
Validate Deployment
↓
Deploy to Sandbox

Everything happens automatically.

---

# Salesforce Deployment Lifecycle

Professional Salesforce teams rarely deploy directly to production.

Typical lifecycle:

Developer Sandbox
↓
Integration Sandbox
↓
QA Testing
↓
User Acceptance Testing
↓
Production

Each stage reduces risk.

---

# Sandbox Strategy

## Developer Sandbox

Purpose:

- Individual development
- Feature creation

---

## Integration Sandbox

Purpose:

- Combine multiple features
- Validate integrations

---

## QA Sandbox

Purpose:

- Quality assurance testing

---

## UAT Environment

Purpose:

- Business user validation

---

## Production

Purpose:

- Live business operations

Only fully tested changes should reach production.

---

# Enterprise Deployment Risks

## Direct Production Changes

Directly editing production is dangerous because:

### Bugs

New code may contain defects.

### Downtime

Users may lose access.

### Data Loss

Records may be deleted accidentally.

### Broken Automation

Flows and Apex logic may stop functioning.

### Security Risks

Sensitive information may be exposed.

---

# Team Collaboration Challenges

Imagine 10 developers working on the same Salesforce application.

Without GitHub:

Problems:

- Overwritten code
- Lost changes
- Duplicate work
- Difficult troubleshooting

Without Branches:

Problems:

- Merge conflicts
- Broken features
- Delayed releases

Without Testing:

Problems:

- Production failures
- Poor user experience
- Increased maintenance

---

# Automated Testing

Testing is a critical part of CI/CD.

Types:

## Unit Testing

Tests individual components.

Example:

Apex Test Classes.

---

## Integration Testing

Tests communication between systems.

Example:

LWC interacting with Apex.

---

## User Acceptance Testing

Business users validate functionality.

Example:

Registrar testing student enrollment system.

---

# Rollback

## What is Rollback?

Rollback is restoring a previous stable version after deployment failure.

Benefits:

- Faster recovery
- Reduced downtime
- Improved reliability

GitHub makes rollback easier through commit history.

---

# Release Management

Release management is the process of planning, scheduling, testing, and deploying software updates.

Goals:

- Safe releases
- Predictable deployments
- Reduced risks
- Improved quality

---

# Writing Code vs Engineering Enterprise Software

## Writing Code

Focus:

- Building features
- Solving problems
- Completing tasks

Usually individual effort.

---

## Engineering Enterprise Software

Focus:

- Reliability
- Security
- Scalability
- Testing
- Deployment
- Collaboration
- Monitoring
- Maintenance

Enterprise engineering requires structured workflows and teamwork.

---

# Agentforce DX Overview

Agentforce DX represents Salesforce's modern AI-assisted development ecosystem.

Goals:

- Increase productivity
- Improve developer experience
- Support automation
- Accelerate software delivery

This topic is mainly conceptual at this stage.

---

# Key Learnings

1. DevOps combines development and operations.
2. CI automatically validates code changes.
3. CD improves deployment efficiency.
4. CI/CD pipelines automate software delivery.
5. GitHub supports collaboration and version control.
6. GitHub Actions automate workflows.
7. Deployment pipelines reduce risk.
8. Testing should occur before deployment.
9. Rollback helps recover from failures.
10. Enterprise software engineering requires structured processes.

---

# Conclusion

Day 13 introduced the concepts behind professional software delivery. I learned how DevOps, CI/CD, GitHub, deployment pipelines, testing, and release management work together to ensure enterprise applications remain reliable and scalable.

These practices help organizations deliver high-quality Salesforce applications while minimizing risks and improving collaboration.
