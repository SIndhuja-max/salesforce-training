# Reflection
## Event-Driven Systems, Automation & Enterprise Thinking

This document contains my understanding and reflections about Salesforce automation, querying, and event-driven architecture.

---

# 1. Why Do Systems Need Triggers?

Modern enterprise systems handle thousands of operations every day.

Manually monitoring every data change is impossible.

Triggers help systems react automatically whenever important events occur.

Examples:
- Student registration
- Fee payment updates
- Attendance changes
- Scholarship approvals

Without triggers:
- Processes become slow
- Human errors increase
- Notifications are delayed
- Data consistency becomes difficult

Triggers improve:
- Automation
- Accuracy
- Efficiency
- Real-time response

They help systems behave intelligently.

---

# 2. Difference Between Polling and Event-Driven Systems

## Polling System

In polling systems, applications continuously check whether something has changed.

Example:
A system checks every 5 minutes whether attendance changed.

### Problems with Polling
- Wastes resources
- Slower response
- Inefficient
- Higher server load

---

## Event-Driven System

In event-driven systems, actions happen immediately when events occur.

Example:
As soon as attendance becomes low:
- Warning notification is sent automatically

### Advantages
- Faster
- More efficient
- Real-time automation
- Better scalability

Salesforce uses event-driven architecture heavily through:
- Flows
- Apex Triggers
- Platform Events

---

# 3. Why Are Database Queries Important?

Enterprise systems store massive amounts of data.

Queries help retrieve useful information quickly.

Without queries:
- Reports cannot be generated
- Analytics become impossible
- Business decisions become weaker

Queries are important for:
- Reporting
- Dashboards
- Tracking performance
- Data analysis
- Business intelligence

SOQL helps Salesforce retrieve structured business data efficiently.

---

# 4. When Should Flows Be Preferred Over Triggers?

Flows should be preferred when:
- Logic is simple
- Automation is straightforward
- No heavy coding is needed
- Admins need easier maintenance

Examples:
- Sending emails
- Updating fields
- Approval notifications
- Simple workflows

Flows are:
- Faster to build
- Easier to understand
- Easier to maintain

They reduce development complexity.

---

# 5. When Should Triggers Be Preferred?

Triggers should be used when:
- Complex validations exist
- Multiple objects are involved
- Advanced calculations are needed
- External integrations are required

Examples:
- Scholarship eligibility validation
- Cross-object synchronization
- Course capacity management
- Financial calculations

Triggers provide:
- Better flexibility
- Greater control
- Advanced customization

---

# 6. What Problems Happen if Automation Logic Becomes Too Complex?

Over-automation can create serious problems.

Examples:
- Difficult debugging
- Slower system performance
- Conflicting automations
- Maintenance challenges
- Unexpected behavior

Complex automation may also:
- Confuse developers
- Increase technical debt
- Make systems unstable

Good developers must design automation carefully.

---

# 7. Why Should Developers Think Carefully Before Automating Actions?

Automation directly affects business operations.

Incorrect automation can:
- Send wrong notifications
- Update incorrect data
- Cause system failures
- Affect customer experience

Before automating, developers should understand:
- Business requirements
- Possible risks
- Edge cases
- System performance impact

Automation should simplify processes, not create chaos.

---

# 8. Why Enterprise Systems Need Event-Driven Behavior

Enterprise systems operate in real time.

Business events constantly occur:
- Payments
- Registrations
- Inventory updates
- Attendance changes
- Customer interactions

Systems must react immediately.

Event-driven behavior helps organizations:
- Improve efficiency
- Reduce manual work
- Increase speed
- Maintain accurate data
- Scale operations

Salesforce automation tools help businesses build intelligent systems that react automatically to changing data.

---

# 9. My Overall Understanding

This topic helped me understand that Salesforce is not only a CRM platform.

It is also:
- A data management platform
- An automation platform
- An event-driven system

I learned:
- How SOQL retrieves data
- How DML modifies records
- How Triggers react to events
- Difference between Flows and Triggers
- Importance of automation in enterprise systems

This knowledge is essential for building scalable business applications.

---

# Final Reflection

The biggest learning from this task is understanding how enterprise systems think.

Instead of waiting for humans to perform actions manually, modern systems react automatically to events using intelligent automation.

Salesforce provides both:
- Declarative automation (Flows)
- Programmatic automation (Triggers)

Together, they help organizations build scalable, efficient, and reliable systems.
