import { LightningElement, wire } from 'lwc';

import getApplicationsForIntegration
    from '@salesforce/apex/ApplicationController.getApplicationsForIntegration';

import retryCandidateSync
    from '@salesforce/apex/ApplicationController.retryCandidateSync';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import { refreshApex } from '@salesforce/apex';

export default class ApplicationIntegration extends LightningElement {

    applications = [];

    error;

    wiredApplicationsResult;

    retryingApplicationIds = new Set();


    @wire(getApplicationsForIntegration)
    wiredApplications(result) {

        this.wiredApplicationsResult = result;

        const { data, error } = result;

        if (data) {

            this.applications = data;

            this.error = undefined;

        } else if (error) {

            this.applications = [];

            this.error = error;

            console.error(
                'Error loading integration applications:',
                error
            );
        }
    }


    get displayApplications() {

        return this.applications.map(application => {

            return {
    ...application,

    isRetrying:
        this.retryingApplicationIds.has(
            application.Id
        ),

    canRetry:
        (
            application.Integration_Status__c ===
                'Failed'
            ||
            application.Integration_Status__c ===
                'Retry Required'
        )
        &&
        !application.External_Candidate_Id__c,

    isRetryDisabled:
        !(
            (
                application.Integration_Status__c ===
                    'Failed'
                ||
                application.Integration_Status__c ===
                    'Retry Required'
            )
            &&
            !application.External_Candidate_Id__c
        )
        ||
        this.retryingApplicationIds.has(
            application.Id
        )
};
        });
    }


    handleRetry(event) {

        const applicationId =
            event.currentTarget.dataset.id;

        if (!applicationId) {
            return;
        }


        if (
            this.retryingApplicationIds.has(
                applicationId
            )
        ) {
            return;
        }


        this.retryingApplicationIds.add(
            applicationId
        );

        this.retryingApplicationIds =
            new Set(this.retryingApplicationIds);


        retryCandidateSync({
            applicationId: applicationId
        })

        .then(result => {

            if (
                result ===
                'Candidate synchronization retry has been queued.'
            ) {

                this.showToast(
                    'Retry Queued',
                    'Candidate synchronization has been queued.',
                    'success'
                );

            } else {

                this.showToast(
                    'Retry',
                    result,
                    'warning'
                );
            }

            return refreshApex(
                this.wiredApplicationsResult
            );
        })

        .catch(error => {

            console.error(
                'Retry error:',
                error
            );

            this.showToast(
                'Error',
                this.getErrorMessage(error),
                'error'
            );
        })

        .finally(() => {

            this.retryingApplicationIds.delete(
                applicationId
            );

            this.retryingApplicationIds =
                new Set(this.retryingApplicationIds);
        });
    }


    showToast(
        title,
        message,
        variant
    ) {

        this.dispatchEvent(
            new ShowToastEvent({
                title: title,
                message: message,
                variant: variant
            })
        );
    }


    getErrorMessage(error) {

        if (
            error &&
            error.body &&
            error.body.message
        ) {

            return error.body.message;
        }

        return 'Unable to process the retry request.';
    }
}