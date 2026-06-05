# Faculty Dashboard LWC

## Purpose

The Faculty Dashboard Lightning Web Component displays faculty records dynamically using Apex and SOQL.

## facultyDashboard.html

```html
<template>
    <lightning-card title="Faculty Dashboard">

        <template if:true={faculty}>
            <table class="slds-table slds-table_cell-buffer slds-table_bordered">

                <thead>
                    <tr>
                        <th>Faculty Name</th>
                        <th>Email</th>
                        <th>Department</th>
                    </tr>
                </thead>

                <tbody>
                    <template for:each={faculty} for:item="fac">

                        <tr key={fac.Id}>
                            <td>{fac.Name}</td>
                            <td>{fac.Email__c}</td>
                            <td>{fac.Department__c}</td>
                        </tr>

                    </template>
                </tbody>

            </table>
        </template>

    </lightning-card>
</template>
```

## facultyDashboard.js

```javascript
import { LightningElement, wire } from 'lwc';
import getFaculty from '@salesforce/apex/FacultyController.getFaculty';

export default class FacultyDashboard extends LightningElement {

    faculty;

    @wire(getFaculty)
    wiredFaculty({ error, data }) {
        if (data) {
            this.faculty = data;
        } else if (error) {
            console.error(error);
        }
    }
}
```

## facultyDashboard.js-meta.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<LightningComponentBundle xmlns="http://soap.sforce.com/2006/04/metadata">
    <apiVersion>66.0</apiVersion>
    <isExposed>true</isExposed>

    <targets>
        <target>lightning__AppPage</target>
    </targets>
</LightningComponentBundle>
```
