import { modal } from './modal.js';

let currPage = 1;
let firstPage = 1;
let lastPage = 1;
let pageSize = 10;
let firstId = 1;

async function getApi(PageNumber, PageSize = pageSize) {

    let api_url = `https://localhost:5001/api/v1/Teachers/paginationTeacher?pageNumber=${PageNumber}&pageSize=${PageSize}`;
    
    const response = await fetch(api_url);
    
    var json = await response.json();

    console.log(json);

    currPage = json.data.pageNumber;
    pageSize = json.data.pageSize;
    lastPage = Math.ceil(parseFloat(json.data.total) / parseFloat(json.data.pageSize));
    firstId = pageSize * (currPage - 1) + 1;

    show(json.data);
}

function show(data) {
    let content =``;
    let modalContent =``;

    // Loop to access all rows 
    for (let i = 0; i < data.itemList.length; i++) {

        let r = data.itemList[i];
        //Table content
        content += 
        `<tr id='row-${r.teacherID}'> 
            <td class="align-center">${i + firstId} </td>
            <td class="align-center">${r.teacherID}</td>
            <td class="align-left">${r.fullName}</td> 
            <td class="align-center">${r.gender}</td>    
            <td class="align-center">${r.phoneNumber}</td>     
            <td class="align-left">${r.email}</td>           
        </tr>`;

        //Modal content
        modalContent += 
        `
        <div id="modal-${r.teacherID}" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
            <div class="modal-header">
                <span id="close-${r.teacherID}" class="close">&times;</span>
                <h2>Chi tiết giảng viên</h2>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-4" style="border-right: 1px solid #bbb;">
                        <img    class="img-fluid"
                                src="https://soict.hust.edu.vn/content/uploads/2019/06/balam.png"
                                alt="teacher-image"
                        />
                    </div>
                    <div class="col-8">
                        <h5><strong>THÔNG TIN GIẢNG VIÊN</strong></h5><br />
                        <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <td class="align-left"><strong>Mã số giảng viên</strong></td>
                                    <td class="align-left">${r.teacherID}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Tên giảng viên</strong></td>
                                    <td class="align-left">${r.fullName}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Số điện thoại</strong></td>
                                    <td class="align-left">${r.phoneNumber}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Email</strong></td>
                                    <td class="align-left">${r.email}</td>
                                </tr>
                            </tbody>
                        </table>                        
                        <button class="rectangle-btn green" id="edit-teacher-${r.teacherID}">Chỉnh sửa thông tin giảng viên <img src="../../assets/icons/pencil.svg"/></button>
                    </div>
                </div>
            </div>
        </div>
        </div>`;
    }

    //Pagination
    let pagination = 
    `<a id="pagination-first" href="#">&laquo;</a>`;

    let totalShowPage = 5;
    let startShowPage = firstPage > currPage - Math.ceil(parseFloat(totalShowPage - 1) / 2) ?
                        firstPage : currPage - Math.ceil(parseFloat(totalShowPage - 1) / 2);
    let endShowPage =   lastPage < currPage + Math.ceil(parseFloat(totalShowPage - 1) / 2) ?
                        lastPage : currPage + Math.ceil(parseFloat(totalShowPage - 1) / 2) ;
    console.log(`${startShowPage} ${endShowPage}`);
    for (let i  = startShowPage; i <= endShowPage; i++) {

        if (i == currPage) {

            pagination +=
            `<a id="pagination-${i}" class="active blue" href="#">${i}</a>`
        }
        else {

            pagination +=
            `<a id="pagination-${i}" href="#">${i}</a>`
        }
    }

    pagination += `<a id="pagination-last" href="#">&raquo;</a>`;
    
    //Change html content
    document.getElementById("table-content").innerHTML = content;
    document.getElementById("modals").innerHTML = modalContent;
    document.getElementById("pagination").innerHTML = pagination;

    for (let r of data.itemList) {

        modal(`row-${r.teacherID}`, `modal-${r.teacherID}`, `close-${r.teacherID}`);

        document.getElementById(`edit-teacher-${r.teacherID}`).onclick = function() {
            
            let modal = document.getElementById('modal-edit-teacher');
            let span = document.getElementById('close-edit-teacher');

            document.getElementById(`modal-${r.teacherID}`).style.display = "none";

            editTeacher(r.guid) 
                
            modal.style.display = "block";

            span.onclick = function () {
                modal.style.display = "none";
                document.querySelector("form").reset();
            }

            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }           
        };
    }

    for (let i  = startShowPage; i <= endShowPage; i++) {

        document.getElementById(`pagination-${i}`).onclick = function() { return getApi(i, pageSize) };
    }
    document.getElementById(`pagination-first`).onclick = function() { return getApi(firstPage, pageSize) };
    document.getElementById(`pagination-last`).onclick = function() { return getApi(lastPage, pageSize) };
}

function addTeacher() {   

    const addTeacherForm = document.getElementById('add-teacher-form');

    addTeacherForm.addEventListener('submit', async function (e) {

        e.preventDefault();
        const formData = new FormData(addTeacherForm).entries();
        const addTeacherURL = 'https://localhost:5001/api/v1/Teachers';
        
        await fetch( addTeacherURL, {

            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
             },
            body: JSON.stringify(Object.fromEntries(formData))
        })
        .then(function (response) {
            response.json().then(data => {

                console.log(data)
                alert('Thêm giảng viên thành công');
                document.getElementById('modal-add-teacher').style.display = "none";
            })
        })
        .catch(function (error) {

            alert('Thêm giảng viên thất bại');
            document.getElementById('modal-add-teacher').style.display = "none";
        })
    });
}

async function getTeacher(teacherGuid) {

    let api_url = `https://localhost:5001/api/v1/Teachers/${teacherGuid}`;
    
    let response = await fetch(api_url);    
    var json = await response.json();  

    return json.data;
}

async function editTeacher(teacherGuid) {

    const Teacher = await getTeacher(teacherGuid);

    console.log(Teacher);  

    document.getElementById('edit-guid').value = Teacher.guid;
    document.getElementById('edit-teacherID').value = Teacher.teacherID;
    document.getElementById('edit-fullName').value = Teacher.fullName;
    document.getElementById('edit-gender').value = Teacher.gender;
    document.getElementById('edit-phoneNumber').value = Teacher.phoneNumber;
    document.getElementById('edit-email').value = Teacher.email;

    const editTeacherForm = document.getElementById('edit-teacher-form');

    editTeacherForm.addEventListener('submit', async function (e) {

        e.preventDefault();
        const formData = new FormData(editTeacherForm).entries();
        const editTeacherURL = `https://localhost:5001/api/v1/Teachers/${teacherGuid}`;
        
        await fetch( editTeacherURL, {

            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
             },
            body: JSON.stringify(Object.fromEntries(formData))
        })
        .then(function (response) {
            response.json().then(data => {

                console.log(data)
                alert('Chỉnh sửa thông tin học sinh thành công');
                document.getElementById('modal-edit-teacher').style.display = "none";
            })
        })
        .catch(function (error) {

            alert('Chỉnh sửa thông tin học sinh thất bại');
            document.getElementById('modal-edit-teacher').style.display = "none";
        })
    });
}


getApi(1, 10);
addTeacher();
modal('add-teacher-btn', 'modal-add-teacher', 'close-add-teacher');