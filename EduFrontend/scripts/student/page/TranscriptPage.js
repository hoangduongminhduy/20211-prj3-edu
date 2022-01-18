window.onload = function(){
    let transcriptPage = new TranscriptPage();
}

class TranscriptPage {
    studentID = window.sessionStorage.getItem('userID');
    semester;
    api = `https://localhost:5001/api/v1/Points/Filter?studentID=${this.studentID}&semester=`;
    tableId = "#transcript-table";
    data;
    constructor() {
        this.checkLogin();
        this.loadData();
    }
    
    checkLogin(){
        if(!this.studentID){
            window.location.href = '/views/authen/login.html';
        }
    }

    async loadData(){
        var me=this;
        // Storing response
        const response = await fetch(me.api);
        // Storing data in form of JSON
        const responseJSON = await response.json();
        me.data = responseJSON.data;
        console.log(me.data);
        me.buildTable();
    }
    
    initEvent(){

    };

    buildTable(){
        // Lay ra cac cot cua bang:
        let cols = document.getElementsByTagName("th");
        // Xoa du lieu cu trong tbody di    
        let tbody = document.getElementsByTagName("tbody")[0];
        tbody.innerHTML = "";
            
        for(var record of this.data){
            // build tr
            let trHTML = `<tr>`;
            for(var col of cols){
                // build td
                let tdHTML = `<td>`;
                tdHTML += (record[col.getAttribute('fieldName')]);
                tdHTML += (`</td>`);

                // append td to tr
                trHTML += (tdHTML);
            }
            trHTML += (`</tr>`);

            // Hoan tat: ghep strHTML
            tbody.innerHTML += (trHTML);
        }        
    }
}