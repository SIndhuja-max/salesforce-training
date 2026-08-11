import { LightningElement, api } from 'lwc';

export default class JobDetails extends LightningElement {

    @api job;

    get hasJob() {
        return this.job != null;
    }
}