$(document).ready(function() {
    new TeacherTable();
});

class TeacherTable extends SchedulePage {
    constructor() {
        super();
    }
    setDatUrl() {
        this.getDataUrl = "https://localhost:5001/api/v1/Teachers";
        // this.getDialogName = ".dialog-employee";
    }


}