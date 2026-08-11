import { LightningElement, api } from 'lwc';

export default class StatusBadge extends LightningElement {

    @api status;

    get badgeClass() {

        switch (this.status) {

            case 'Selected':
                return 'status-badge selected';

            case 'Interview Scheduled':
                return 'status-badge interview';

            case 'Shortlisted':
                return 'status-badge shortlisted';

            case 'Applied':
                return 'status-badge applied';

            case 'Rejected':
                return 'status-badge rejected';

            default:
                return 'status-badge';
        }
    }

    get displayStatus() {

        return this.status || 'Not Applied';
    }
}