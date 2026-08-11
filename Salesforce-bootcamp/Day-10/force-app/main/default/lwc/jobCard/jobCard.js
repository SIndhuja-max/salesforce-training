import { LightningElement, api } from 'lwc';

export default class JobCard extends LightningElement {

    @api job;
    @api isApplied = false;
    @api isSubmitting = false;

    showDetails = false;

    get applyButtonLabel() {

        if (this.isSubmitting) {
            return 'Submitting...';
        }

        if (this.isApplied) {
            return 'Application Submitted';
        }

        return 'Apply';
    }

    get applyButtonDisabled() {

        return this.isSubmitting || this.isApplied;
    }

    get detailsButtonLabel() {

        return this.showDetails
            ? 'Hide Details'
            : 'View Details';
    }

    handleViewDetails() {

        this.showDetails = !this.showDetails;
    }

    handleApply() {

        this.dispatchEvent(
            new CustomEvent('apply', {
                detail: {
                    jobId: this.job.Id
                }
            })
        );
    }
}