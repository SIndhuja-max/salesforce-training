# Pseudocode Examples
# Salesforce Summer Program – Day 5

---

# Introduction

Pseudocode is a simple way of representing business logic using plain English statements instead of actual programming syntax.

It helps developers:
- understand system logic
- design workflows
- plan automation
- visualize decision-making processes

Pseudocode focuses on logic rather than syntax.

---

# Example 1 – Seat Availability Check

## Scenario

A student tries to register for a course.

The system should:
- allow registration if seats are available
- block registration if seats are full

---

# Pseudocode
```text
IF remaining seats = 0  
THEN block registration  
ELSE allow enrollment
```
---

# Explanation

The system first checks the number of available seats.

If no seats remain:
- the enrollment process is stopped

Otherwise:
- the student is allowed to enroll

This type of logic is commonly used in:
- college systems
- booking platforms
- ticket reservation systems

---

# Example 2 – Attendance Warning System

## Scenario

Students with low attendance should receive automatic warnings.

---

# Pseudocode
```text
IF attendance < 75%  
THEN send warning notification
```
---

# Explanation

The system continuously checks attendance percentage.

If attendance drops below the minimum requirement:
- the system sends a notification automatically

This improves:
- attendance monitoring
- student awareness
- institutional compliance

---

# Example 3 – Scholarship Eligibility

## Scenario

Scholarships should only be approved for eligible students.

Eligibility depends on:
- marks
- attendance

---

# Pseudocode
```text
IF marks > 90  
AND attendance > 85  
THEN approve scholarship
```
---

# Explanation

The system checks two conditions:
- marks greater than 90
- attendance greater than 85

Both conditions must be satisfied before approval is granted.

This demonstrates conditional business logic.

---

# Example 4 – Late Fee Penalty

## Scenario

Students paying fees after the due date should receive penalties.

---

# Pseudocode
```text
IF payment date > due date  
THEN add late payment penalty
```
---

# Explanation

The system compares:
- actual payment date
- official due date

If payment is late:
- penalty charges are added automatically

This type of logic is common in:
- banking systems
- educational systems
- billing applications

---

# Example 5 – Course Eligibility Validation

## Scenario

Students should complete prerequisite courses before enrolling in advanced courses.

---

# Pseudocode
```text
IF prerequisite course is not completed  
THEN block enrollment
```
---

# Explanation

The system verifies whether the required prerequisite course has been completed.

If not completed:
- enrollment is denied

This ensures:
- academic integrity
- proper course progression
- compliance with curriculum rules

---

# Example 6 – Automatic Faculty Assignment

## Scenario

When a new course is created, the system should assign faculty automatically.

---

# Pseudocode
```text
IF new course is created  
THEN assign available faculty
```
---

# Explanation

The system detects creation of a new course.

It then:
- searches for available faculty
- assigns the appropriate faculty member automatically

This improves:
- automation
- efficiency
- administrative productivity

---

# Example 7 – Admission Approval

## Scenario

Students should only be admitted if documents are verified.

---

# Pseudocode
```text
IF all documents are verified  
THEN approve admission  
ELSE reject application
```
---

# Explanation

The system checks:
- ID proof
- certificates
- eligibility documents

If all required documents are verified:
- admission is approved

Otherwise:
- the application is rejected

---

# Example 8 – Attendance-Based Exam Eligibility

## Scenario

Students should only be allowed to attend exams if attendance is above the minimum requirement.

---

# Pseudocode
```text
IF attendance >= 75%  
THEN allow exam registration  
ELSE block exam registration
```
---

# Explanation

The system checks whether attendance satisfies institutional requirements.

Students below the minimum percentage:
- cannot register for exams

This ensures compliance with academic policies.

---

# Example 9 – Duplicate Email Validation

## Scenario

A student email should not already exist in the system.

---

# Pseudocode
```text
IF email already exists  
THEN show error message  
ELSE create student record
```
---

# Explanation

The system checks existing records before creating a new student.

This prevents:
- duplicate records
- inconsistent data
- communication errors

---

# Example 10 – Course Completion Certificate

## Scenario

A certificate should be generated automatically after course completion.

---

# Pseudocode
```text
IF course status = completed  
THEN generate certificate
```
---

# Explanation

The system checks course completion status.

Once completed:
- a certificate is automatically generated

This reduces manual administrative work.

---

# Key Learning

Pseudocode helps developers:
- understand business requirements clearly
- design automation before coding
- simplify complex logic
- communicate ideas effectively

It acts as a bridge between:
- business understanding
- actual implementation

Pseudocode is an important step before writing actual Apex code because it helps developers think logically about system behavior.
