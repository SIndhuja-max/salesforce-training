# Candidate Recruitment API Contract

## Purpose

This API is used by the Salesforce Placement Management System to send selected student candidates to an external recruitment system.

The integration is triggered when an Application reaches the `Selected` status.

---

## Endpoint

### Create Candidate

**Method:** POST

**Endpoint:** `/candidates`

**Content-Type:** `application/json`

---

## Request

### Headers

Content-Type: application/json

Authentication is handled through a Salesforce Named Credential and is not hard-coded in Apex.

### Request Body

{
  "studentId": "STU10045",
  "name": "Pavan",
  "email": "pavan@gmail.com",
  "branch": "IT",
  "cgpa": 8.7,
  "jobId": "JOB1007",
  "company": "Microsoft",
  "role": "Software Engineer",
  "selectionDate": "2026-08-12"
}

---

## Request Fields

| Field | Type | Description |
|---|---|---|
| studentId | String | Salesforce student identifier |
| name | String | Student name |
| email | String | Student email |
| branch | String | Student branch/department |
| cgpa | Decimal | Student CGPA |
| jobId | String | Salesforce job identifier |
| company | String | Recruiting company |
| role | String | Job role |
| selectionDate | Date | Date the student was selected |

---

## Success Response

### HTTP 201 Created

{
  "success": true,
  "externalCandidateId": "EXT-10045",
  "message": "Candidate created successfully"
}

Salesforce stores the returned external candidate identifier in:

`External_Candidate_Id__c`

---

## Error Responses

### 400 Bad Request

{
  "success": false,
  "message": "Invalid candidate data"
}

Salesforce marks the integration as:

`Failed`

---

### 401 Unauthorized

{
  "success": false,
  "message": "Authentication failed"
}

Salesforce records the integration error.

---

### 403 Forbidden

{
  "success": false,
  "message": "Access denied"
}

Salesforce records the integration error.

---

### 500 Internal Server Error

{
  "success": false,
  "message": "External server error"
}

Salesforce marks the integration as:

`Retry Required`

---

## Salesforce Integration Status

The Application record uses the following integration states:

- `Pending`
- `Sent`
- `Failed`
- `Retry Required`

---

## Integration Flow

Application becomes Selected

↓

Queueable Apex is enqueued

↓

Candidate data is prepared

↓

Named Credential is used

↓

POST `/candidates`

↓

External system processes candidate

↓

Salesforce receives response

↓

Integration status is updated

---

## Idempotency

The integration must avoid creating duplicate external candidates when the same Application is processed more than once.

The Salesforce Application record is used as the business reference for the integration.

Before sending a candidate, Salesforce should verify whether an `External_Candidate_Id__c` already exists.

If an external candidate ID already exists, the candidate should not be submitted again.

---

## Mock API

This project uses a mock external recruitment API for demonstration and learning purposes.

No real recruitment company's API or production credentials are used.
