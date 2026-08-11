import { LightningElement, api, wire } from 'lwc';

import getEligibleJobs
    from '@salesforce/apex/EligibleJobsController.getEligibleJobs';

import submitApplication
    from '@salesforce/apex/ApplicationController.submitApplication';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class EligibleJobs extends LightningElement {

    @api studentId;

    jobs = [];

    error;

    isLoading = true;

    appliedJobIds = new Set();

    submittingJobIds = new Set();


    @wire(getEligibleJobs, { studentId: '$studentId' })
    wiredJobs({ data, error }) {

        this.isLoading = false;

        if (data) {

            this.jobs = data;

            this.error = undefined;

        } else if (error) {

            this.jobs = [];

            this.error = error;

            console.error(
                'Error loading eligible jobs:',
                error
            );
        }
    }


    get displayJobs() {

        return this.jobs.map(job => {

            return {
                ...job,

                isApplied:
                    this.appliedJobIds.has(job.Id),

                isSubmitting:
                    this.submittingJobIds.has(job.Id)
            };

        });
    }


    handleApply(event) {

        const jobId = event.detail.jobId;

        if (!jobId) {
            return;
        }


        // Prevent duplicate clicks while submitting

        if (
            this.appliedJobIds.has(jobId) ||
            this.submittingJobIds.has(jobId)
        ) {
            return;
        }


        // Change button to "Submitting..."

        this.submittingJobIds.add(jobId);

        this.submittingJobIds =
            new Set(this.submittingJobIds);


        // Call Apex

        submitApplication({

            studentId: this.studentId,

            jobId: jobId

        })

        .then(result => {

            console.log(
                'Application result:',
                result
            );


            if (
                result ===
                'Application submitted successfully.'
            ) {

                // Mark this job as applied

                this.appliedJobIds.add(jobId);

                this.appliedJobIds =
                    new Set(this.appliedJobIds);


                this.showToast(
                    'Application Submitted',
                    'Your application has been submitted successfully.',
                    'success'
                );

                this.dispatchEvent(
                new CustomEvent('applicationsubmitted')
                );

            } else {

                // Business validation failed

                this.showToast(
                    'Application',
                    result,
                    'warning'
                );

            }

        })

        .catch(error => {

            console.error(
                'Application error:',
                error
            );


            this.showToast(
                'Error',
                this.getErrorMessage(error),
                'error'
            );

        })

        .finally(() => {

            this.submittingJobIds.delete(jobId);

            this.submittingJobIds =
                new Set(this.submittingJobIds);

        });
    }


    showToast(title, message, variant) {

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

        return 'We could not submit your application. Please try again.';
    }
}