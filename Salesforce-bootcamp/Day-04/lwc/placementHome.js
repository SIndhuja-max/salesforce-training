import { LightningElement } from 'lwc';

export default class PlacementHome extends LightningElement {

    studentName = 'Pavan';
    rollNumber = '23PA1A1224';
    department = 'IT';

    status = 'Not Applied';
    message = '';

    showMessage() {
        this.message = 'Welcome to Salesforce Development.';
    }

    applyJob() {
        this.status = 'Applied';
    }
    today = new Date().toLocaleDateString('en-IN', {
    day: '2-digit',
    month: 'short',
    year: 'numeric'
});
companies = 28;
jobs = 74;
applications = 312;
}
