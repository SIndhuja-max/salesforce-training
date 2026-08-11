import { LightningElement, api, wire } from 'lwc';

import { getRecord, updateRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import STUDENT_NAME from '@salesforce/schema/Student__c.Name';
import CGPA_FIELD from '@salesforce/schema/Student__c.CGPA__c';
import PHONE_FIELD from '@salesforce/schema/Student__c.Phone__c';
import EMAIL_FIELD from '@salesforce/schema/Student__c.Email__c';
import BRANCH_FIELD from '@salesforce/schema/Student__c.Branch__c';
import SKILLS_FIELD from '@salesforce/schema/Student__c.Skills__c';
import LOCATION_FIELD from '@salesforce/schema/Student__c.Preferred_Location__c';

const FIELDS = [
    STUDENT_NAME,
    CGPA_FIELD,
    PHONE_FIELD,
    EMAIL_FIELD,
    BRANCH_FIELD,
    SKILLS_FIELD,
    LOCATION_FIELD
];

export default class StudentProfile extends LightningElement {

    @api studentId;

    studentName = '';
    cgpa = '';
    phone = '';
    email = '';
    branch = '';
    skills = '';
    preferredLocation = '';

    isLoading = true;
    isSaving = false;
    error;

    @wire(getRecord, {
        recordId: '$studentId',
        fields: FIELDS
    })
    wiredStudent({ data, error }) {

        this.isLoading = false;

        if (data) {

            this.studentName =
                data.fields.Name?.value || '';

            this.cgpa =
                data.fields.CGPA__c?.value ?? '';

            this.phone =
                data.fields.Phone__c?.value || '';

            this.email =
                data.fields.Email__c?.value || '';

            this.branch =
                data.fields.Branch__c?.value || '';

            this.skills =
                data.fields.Skills__c?.value || '';

            this.preferredLocation =
                data.fields.Preferred_Location__c?.value || '';

            this.error = undefined;

        } else if (error) {

            this.error = error;

            console.error(
                'Error loading student profile:',
                error
            );
        }
    }

    handleChange(event) {

        const field = event.target.dataset.field;
        const value = event.target.value;

        if (field === 'phone') {
            this.phone = value;
        }

        if (field === 'email') {
            this.email = value;
        }

        if (field === 'branch') {
            this.branch = value;
        }

        if (field === 'cgpa') {
            this.cgpa = value;
        }

        if (field === 'skills') {
            this.skills = value;
        }

        if (field === 'preferredLocation') {
            this.preferredLocation = value;
        }
    }

    handleSave() {

        if (!this.validateForm()) {
            return;
        }

        this.isSaving = true;

        const fields = {};

        fields.Id = this.studentId;
        fields[PHONE_FIELD.fieldApiName] = this.phone;
        fields[EMAIL_FIELD.fieldApiName] = this.email;
        fields[BRANCH_FIELD.fieldApiName] = this.branch;
        fields[CGPA_FIELD.fieldApiName] = Number(this.cgpa);
        fields[SKILLS_FIELD.fieldApiName] = this.skills;
        fields[LOCATION_FIELD.fieldApiName] =
            this.preferredLocation;

        updateRecord({ fields })
            .then(() => {

                this.showToast(
                    'Success',
                    'Student profile updated successfully.',
                    'success'
                );

                this.dispatchEvent(
                    new CustomEvent('profileupdated')
                );
            })
            .catch(error => {

                console.error(
                    'Error updating student profile:',
                    error
                );

                this.showToast(
                    'Error',
                    this.getErrorMessage(error),
                    'error'
                );
            })
            .finally(() => {

                this.isSaving = false;
            });
    }

    validateForm() {

        const inputs =
            this.template.querySelectorAll(
                'lightning-input, lightning-textarea'
            );

        let isValid = true;

        inputs.forEach(input => {

            if (!input.checkValidity()) {

                input.reportValidity();

                isValid = false;
            }
        });

        const cgpaValue = Number(this.cgpa);

        if (
            this.cgpa === '' ||
            Number.isNaN(cgpaValue) ||
            cgpaValue < 0 ||
            cgpaValue > 10
        ) {

            this.showToast(
                'Invalid CGPA',
                'CGPA must be between 0 and 10.',
                'error'
            );

            isValid = false;
        }

        return isValid;
    }

    showToast(title, message, variant) {

        this.dispatchEvent(
            new ShowToastEvent({
                title,
                message,
                variant
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

        return 'Unable to update the student profile.';
    }
}