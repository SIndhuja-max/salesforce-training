# Doubts and Questions
# Salesforce Summer Program – Day 5

---

# 1. Why is Apex needed if Salesforce already has Flows?

Flows are powerful declarative automation tools and work well for simple and medium-level business processes.

However, enterprise systems often require:
- complex calculations
- reusable logic
- integrations with external systems
- advanced validations
- high-performance processing

Flows become difficult to maintain when logic becomes very large or complicated.

Apex provides:
- flexibility
- scalability
- better control
- cleaner architecture for advanced requirements

That is why Apex is needed even though Salesforce already provides Flows.

---

# 2. When should developers prefer no-code solutions?

Developers should prefer no-code or declarative solutions when:
- requirements are simple
- automation can be handled using Flows
- no advanced logic is required
- maintenance should remain easy
- admins may need to manage the process later

Examples:
- email notifications
- field updates
- approval automation
- simple validations

Using declarative tools whenever possible reduces complexity and improves maintainability.

---

# 3. What problems require custom programming?

Custom programming using Apex is required for:
- external integrations
- advanced calculations
- complex business logic
- reusable enterprise services
- high-volume data processing
- custom API development

Examples:
- payment gateway integration
- eligibility processing
- fee calculation systems
- bulk attendance automation

---

# 4. Why is business logic important in enterprise systems?

Business logic defines how a system behaves according to organizational rules.

It ensures:
- process consistency
- automation accuracy
- proper validations
- secure operations
- reliable workflows

Without business logic:
- systems become inconsistent
- rules are not enforced
- automation may fail
- incorrect data may enter the system

Business logic is the foundation of enterprise applications.

---

# 5. Why should developers avoid unnecessary coding?

Unnecessary coding creates:
- maintenance difficulties
- higher complexity
- increased testing effort
- technical debt
- debugging challenges

Salesforce promotes the principle:
“Use declarative tools first whenever possible.”

Coding should only be used when business requirements cannot be efficiently solved using clicks and configuration.

---

# 6. How does programming increase flexibility?

Programming allows developers to:
- create custom solutions
- build reusable logic
- integrate external systems
- process complex calculations
- optimize performance
- control system behavior precisely

Apex provides flexibility that declarative tools alone cannot always achieve.

---

# 7. What is the difference between Validation Rules and Apex?

Validation Rules:
- declarative
- easier to create
- best for simple field validation

Apex:
- programmatic
- supports advanced logic
- handles complex conditions
- supports integrations and processing

Validation Rules are preferred for simple validations, while Apex is used for advanced business logic.

---

# 8. Why are relationships important in Salesforce?

Relationships connect objects and allow data to work together.

They help:
- maintain data integrity
- model real-world systems
- simplify reporting
- automate connected processes

Examples:
- Student linked to Enrollment
- Course linked to Faculty

Relationships are one of the most important concepts in Salesforce architecture.

---

# 9. Why are formula fields useful?

Formula fields automatically calculate values without storing manual data.

Benefits:
- real-time calculations
- reduced manual work
- fewer errors
- automatic updates

Example:
Remaining Seats = Total Seats - Enrolled Students

---

# 10. Why are Flows important in Salesforce?

Flows automate business processes without coding.

They are important because they:
- reduce manual work
- improve efficiency
- automate repetitive tasks
- help admins build automation quickly

Flows are one of the most powerful declarative tools in Salesforce.
