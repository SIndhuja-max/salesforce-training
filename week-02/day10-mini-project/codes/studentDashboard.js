import { LightningElement, wire } from 'lwc';
import getStudents from '@salesforce/apex/StudentController.getStudents';

export default class StudentDashboard extends LightningElement {

    students;

    @wire(getStudents)
    wiredStudents({ error, data }) {
        if (data) {
            this.students = data;
        } else if (error) {
            console.error(error);
        }
    }
}
