# Apex Logic

## Introduction

Apex is Salesforce's object-oriented programming language used to implement custom business logic that cannot be achieved through standard configuration alone.

In this project, an Apex Class was created to determine student eligibility based on attendance percentage.

This demonstrates how business rules can be implemented programmatically using Apex.

---

# Apex Class Overview

## Class Name

```text
StudentEligibilityService
```

## Purpose

The purpose of this class is to determine whether a student is eligible based on attendance percentage.

The eligibility criteria are:

- Attendance greater than or equal to 75% → Eligible
- Attendance less than 75% → Not Eligible

---

# Business Requirement

In many educational institutions, students must maintain a minimum attendance percentage to become eligible for examinations, certifications, or course completion.

Instead of checking eligibility manually, Apex can automatically determine eligibility.

---

# Apex Class Code

```apex
public class StudentEligibilityService {

    public static String checkEligibility(Decimal attendance) {

        if(attendance >= 75) {
            return 'Eligible';
        }

        return 'Not Eligible';
    }
}
```

---

# Code Explanation

## Class Declaration

```apex
public class StudentEligibilityService
```

Creates a reusable Apex class.

---

## Method Declaration

```apex
public static String checkEligibility(Decimal attendance)
```

### Purpose

Accepts attendance percentage as input and returns eligibility status.

### Input

```text
Attendance Percentage
```

### Output

```text
Eligible
or
Not Eligible
```

---

## If Condition

```apex
if(attendance >= 75)
```

Checks whether attendance meets the minimum eligibility requirement.

---

## Return Statement

```apex
return 'Eligible';
```

Returned when attendance is 75% or above.

---

## Else Condition

```apex
return 'Not Eligible';
```

Returned when attendance is below 75%.

---

# Logic Flow

```text
Attendance Input
        ↓
Check Attendance
        ↓
Attendance >= 75 ?
       / \
     Yes  No
      ↓    ↓
Eligible  Not Eligible
```

---

# Test Cases

## Test Case 1

### Input

```text
Attendance = 90
```

### Expected Result

```text
Eligible
```

### Actual Result

```text
Eligible
```

### Status

✅ Passed

---

## Test Case 2

### Input

```text
Attendance = 75
```

### Expected Result

```text
Eligible
```

### Actual Result

```text
Eligible
```

### Status

✅ Passed

---

## Test Case 3

### Input

```text
Attendance = 60
```

### Expected Result

```text
Not Eligible
```

### Actual Result

```text
Not Eligible
```

### Status

✅ Passed

---

# Screenshot

Add screenshot of Apex Class:

```text
screenshots/apex-class.png
```

Markdown:

```md
![Apex Class](screenshots/apex-class.png)
```

---

# Benefits of Apex Logic

The Apex class provides:

- Reusable business logic
- Better maintainability
- Centralized eligibility calculations
- Easy integration with Flows, Triggers, and Lightning Web Components

---

# Real World Usage

In a production environment, this class could be used for:

- Exam eligibility checking
- Scholarship eligibility verification
- Attendance monitoring
- Academic performance systems

---

# Learning Outcome

Through Apex programming, I learned how Salesforce allows developers to implement custom business logic using an object-oriented programming language.

This class demonstrates:

- Apex Class Creation
- Methods
- Conditional Statements
- Return Values
- Business Logic Implementation

These concepts are fundamental for building enterprise Salesforce applications.

---

# Conclusion

The StudentEligibilityService Apex class successfully automates eligibility determination based on attendance percentage.

This implementation demonstrates how Apex can be used to enforce business rules and provide reusable logic across Salesforce applications.
