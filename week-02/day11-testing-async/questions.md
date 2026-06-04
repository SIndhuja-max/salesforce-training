# Day 11 Revision Questions and Answers

## 1. Why is testing important in Salesforce?

### Answer

Testing is important because it ensures that applications work correctly before deployment.

Benefits:

- Detects bugs early
- Improves reliability
- Protects business data
- Prevents production failures
- Improves user experience

### Example

Without testing:

```text
Student Registration Bug
```

may allow invalid records.

With testing:

```text
Bug Found
↓
Fixed Before Deployment
```

### Conclusion

Testing reduces risks and increases software quality.

---

## 2. What is a Test Case?

### Answer

A test case is a specific scenario used to verify whether a feature behaves as expected.

A test case contains:

- Input
- Expected Output
- Validation Criteria

### Example

Input:

```text
Email = sindhu@gmail.com
```

Expected Output:

```text
Registration Successful
```

### Purpose

To verify that the application behaves correctly.

---

## 3. Why does Salesforce require Apex Tests?

### Answer

Salesforce requires Apex tests to ensure code quality and platform stability.

Reasons:

- Validate business logic
- Prevent production errors
- Improve deployment reliability
- Verify system behavior

### Benefit

Applications become safer and more reliable.

---

## 4. What is Asynchronous Processing?

### Answer

Asynchronous processing allows tasks to run in the background instead of making users wait.

### Flow

```text
User Action
      ↓
Task Queued
      ↓
User Continues Working
      ↓
Background Execution
```

### Benefits

- Faster user experience
- Better performance
- Improved scalability

---

## 5. Difference Between Synchronous and Asynchronous Processing?

### Answer

### Synchronous

```text
User Waits
Task Executes
Result Returned
```

### Asynchronous

```text
Task Queued
User Continues
Task Executes Later
```

### Comparison

| Feature | Synchronous | Asynchronous |
|----------|------------|-------------|
| Execution | Immediate | Delayed |
| User Waits | Yes | No |
| Performance | Lower for heavy tasks | Better |
| Scalability | Limited | High |

---

## 6. What are Future Methods?

### Answer

Future Methods are a Salesforce feature used to execute code asynchronously.

Common Uses:

- Sending emails
- Notifications
- External API calls

### Flow

```text
Current Transaction
        ↓
Future Method
        ↓
Background Execution
```

### Benefit

Improves application responsiveness.

---

## 7. What is Queueable Apex?

### Answer

Queueable Apex is an advanced asynchronous processing framework in Salesforce.

Advantages:

- Job monitoring
- Better flexibility
- Complex processing support

### Flow

```text
Job Created
      ↓
Added To Queue
      ↓
Executed Later
```

### Benefit

Provides greater control over background processing.

---

## 8. What is Reliability?

### Answer

Reliability is the ability of a system to function correctly and consistently even when failures occur.

Reliable systems:

- Handle errors gracefully
- Prevent data corruption
- Recover from failures
- Maintain consistency

### Goal

Ensure stable application behavior.

---

## 9. What is a Partial Failure?

### Answer

A partial failure occurs when some operations succeed while others fail.

### Example

```text
Student Created
Course Assigned
Notification Failed
```

Result:

```text
Inconsistent System State
```

### Problems

- Data corruption
- Duplicate records
- Incorrect reports

### Solution

- Rollback
- Retry
- Recovery mechanisms
- Error logging

---

## 10. Why is Scalability Important?

### Answer

Scalability allows a system to handle increasing workloads efficiently.

Example:

```text
100 Users
    ↓
100,000 Users
```

The application should continue performing effectively.

### Benefits

- Supports growth
- Handles more users
- Handles more data
- Improves long-term performance

---

# Additional Interview Questions

## What are the benefits of testing?

### Answer

Testing:

- Prevents bugs
- Improves quality
- Increases reliability
- Reduces deployment risks
- Protects business data

---

## Why do enterprise systems use background jobs?

### Answer

Enterprise systems use background jobs because some tasks are resource-intensive and do not require immediate completion.

Examples:

- Emails
- Reports
- Data imports
- Notifications
- ERP synchronization

---

## What happens if testing is not performed?

### Answer

Without testing:

- Bugs reach production
- Users experience failures
- Data becomes inconsistent
- Business operations are affected

---

## Why should developers think about failures?

### Answer

Enterprise applications must handle:

- Database failures
- Network failures
- API failures
- User errors
- Server crashes

Preparing for failures improves reliability.

---

## What happens during a registration crash?

### Answer

Possible issues:

- Lost registration
- Duplicate registration
- User confusion

Testing ensures proper error handling and data consistency.

---

## What happens during a payment crash?

### Answer

Possible issues:

- Payment received but not recorded
- Incorrect financial reports
- Student account inconsistencies

Testing helps maintain transaction integrity.

---

## What happens during an attendance update crash?

### Answer

Possible issues:

- Missing attendance records
- Incorrect attendance percentages
- Invalid reports

Testing ensures all records save correctly or none save at all.

---

## Why is async processing better for long-running tasks?

### Answer

Because users do not need to wait for completion.

Benefits:

- Better responsiveness
- Improved scalability
- Faster user experience

---

## Enterprise Reflection Question

### Why do enterprise systems require testing, scalability, and asynchronous processing instead of simple direct execution?

### Answer

Enterprise systems handle large numbers of users, records, and business operations. Testing ensures reliability and prevents bugs, scalability allows systems to support growth, and asynchronous processing improves performance by moving long-running tasks to the background. Together, these principles create stable, efficient, and maintainable software systems.

---

# Day 11 Summary

Key concepts covered:

- Apex Testing
- Unit Testing
- Test Cases
- Future Methods
- Queueable Apex
- Asynchronous Processing
- Reliability Engineering
- Partial Failures
- Transaction Integrity
- Scalability
- Enterprise Architecture

These concepts are fundamental for building reliable and scalable Salesforce applications used in real-world enterprise environments.
