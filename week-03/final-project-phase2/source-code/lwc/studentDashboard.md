# Student Dashboard LWC

## Purpose

The Student Dashboard displays student records dynamically using Apex and SOQL.

## studentDashboard.html

```html
<template>
    <lightning-card title="Student Dashboard">

        <template if:true={students}>

            <table class="slds-table slds-table_cell-buffer slds-table_bordered">

                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Attendance</th>
                        <th>Eligibility</th>
                    </tr>
                </thead>

                <tbody>

                    <template for:each={students} for:item="student">

                        <tr key={student.Id}>
                            <td>{student.Name}</td>
                            <td>{student.Email__c}</td>
                            <td>{student.Attendance__c}</td>
                            <td>{student.Student_Eligibility_Status__c}</td>
                        </tr>

                    </template>

                </tbody>

            </table>

        </template>

    </lightning-card>
</template>
```

## studentDashboard.js

```javascript
import { LightningElement, wire } from 'lwc';
import getStudents from '@salesforce/apex/StudentController.getStudents';

export default class StudentDashboard extends LightningElement {

    students;

    @wire(getStudents)
    wiredStudents({ data, error }) {

        if (data) {
            this.students = data;
        }

        if (error) {
            console.error(error);
        }
    }
}
```

## studentDashboard.js-meta.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>

<LightningComponentBundle
    xmlns="http://soap.sforce.com/2006/04/metadata">

    <apiVersion>64.0</apiVersion>

    <isExposed>true</isExposed>

    <targets>
        <target>lightning__AppPage</target>
        <target>lightning__HomePage</target>
        <target>lightning__RecordPage</target>
    </targets>

</LightningComponentBundle>
```
