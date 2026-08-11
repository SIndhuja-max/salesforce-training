import { LightningElement, api, wire } from 'lwc';

import getMyApplications
    from '@salesforce/apex/ApplicationController.getMyApplications';

import getJobStatistics
    from '@salesforce/apex/ApplicationController.getJobStatistics';

import { refreshApex } from '@salesforce/apex';

export default class PlacementHome extends LightningElement {

    @api studentId;

    studentName = 'Pavan';
    department = 'IT';

    jobStatistics;


    get status() {

    if (!this.applications || this.applications.length === 0) {
        return 'Not Applied';
    }

    const statuses = this.applications.map(
        application => application.Status__c
    );

    if (statuses.includes('Selected')) {
        return 'Selected';
    }

    if (statuses.includes('Interview Scheduled')) {
        return 'Interview Scheduled';
    }

    if (statuses.includes('Shortlisted')) {
        return 'Shortlisted';
    }

    if (statuses.includes('Applied')) {
        return 'Applied';
    }

    if (statuses.includes('Rejected')) {
        return 'Rejected';
    }

    return 'Applied';
}

    applications = [];

    applicationsError;

    wiredApplicationsResult;


    @wire(getMyApplications, { studentId: '$studentId' })
    wiredApplications(result) {

        this.wiredApplicationsResult = result;

        const { data, error } = result;

        if (data) {

            this.applications = data;

            this.applicationsError = undefined;

        } else if (error) {

            this.applications = [];

            this.applicationsError = error;

            console.error(
                'Error loading applications:',
                error
            );
        }
    }

    @wire(getJobStatistics)
wiredJobStatistics({ data, error }) {

    if (data) {

        this.jobStatistics = data;

    } else if (error) {

        console.error(
            'Error loading job statistics:',
            error
        );

        this.jobStatistics = {
            companies: 0,
            openJobs: 0
        };
    }
}
get numberOfCompanies() {

    return this.jobStatistics
        ? this.jobStatistics.companies
        : 0;
}


get numberOfJobs() {

    return this.jobStatistics
        ? this.jobStatistics.openJobs
        : 0;
}


    get applicationsSubmitted() {

        return this.applications.length;
    }


    get hasApplications() {

        return this.applications.length > 0;
    }


    handleApplicationSubmitted() {

        refreshApex(
            this.wiredApplicationsResult
        );

    }
}