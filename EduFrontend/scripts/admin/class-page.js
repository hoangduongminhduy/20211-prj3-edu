import { modal } from './modal.js';

let currPage = 1;
let firstPage = 1;
let lastPage = 1;
let pageSize = 10;
let allowAdd = 0;
async function getApi(PageNumber, PageSize = pageSize) {

    let api_url = `https://localhost:5001/api/v1/Classes/paginationClass?pageNumber=${PageNumber}&pageSize=${PageSize}`;

    let response = await fetch(api_url);

    var json = await response.json();

    currPage = json.pageNumber;
    pageSize = json.pageSize;
    lastPage = Math.ceil(parseFloat(json.total) / parseFloat(json.pageSize));

    show(json);
}

function show(data) {
    let content = ``;
    let modalContent = ``;

    // Loop to access all rows 
    for (let r of data.itemList) {

        //Table content
        content +=
            `<tr id='row-${r.classID}'> 
            <td class="align-center">${r.classID} </td>
            <td class="align-center">${r.subjectID}</td>
            <td class="align-left">${r.subjectName}</td> 
            <td class="align-center">${r.semester}</td>    
            <td class="align-center">${r.classroomName}</td>     
            <td class="align-left">${r.schedule}</td>
        </tr>`;

        //Modal content
        modalContent +=
            `
        <div id="modal-${r.classID}" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span id="close-${r.classID}" class="close">&times;</span>
                    <h2>Chi tiết lớp học</h2>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6" style="border-right: 1px solid #bbb; line-height: 1.5em;">
                            <h5><strong>THÔNG TIN LỚP HỌC</strong></h5><br />
                            <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <td class="align-left"><strong>Mã lớp học</strong></td>
                                    <td class="align-left">${r.classID}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Mã học phần</strong></td>
                                    <td class="align-left">${r.subjectID}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Mã lớp sinh viên</strong></td>
                                    <td class="align-left">${r.studentClassID}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Tên môn học</strong></td>
                                    <td class="align-left">${r.subjectName}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Kỳ học</strong></td>
                                    <td class="align-left">${r.semester}</td>
                                </tr>                                
                                <tr>
                                    <td class="align-left"><strong>Phòng học</strong></td>
                                    <td class="align-left">${r.classroomName}</td>
                                </tr>
                                <tr>
                                    <td class="align-left"><strong>Chi tiết</strong></td>
                                    <td class="align-left" style="overflow: auto;">${r.schedule}</td>
                                </tr>
                            </tbody>
                        </table>            
                        <button class="rectangle-btn green" id="edit-class-${r.classID}">Chỉnh sửa thông tin lớp học <img src="../../assets/icons/pencil.svg"/></button>
                        </div>
                        <div class="col-6">
                            <h5><strong>THÔNG TIN GIẢNG VIÊN</strong></h5><br />   
                            <img    class="img-fluid"
                                src="https://soict.hust.edu.vn/content/uploads/2019/06/balam.png"
                                alt="teacher-image"
                            />  
                            <hr/>                       
                            <p>Mã giảng viên: ${r.teacherID}</p>
                            <p>Họ và tên: ${r.teacherName}</p>
                            <p>Email: ${r.teacherMail}</p>
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
    let endShowPage = lastPage < currPage + Math.ceil(parseFloat(totalShowPage - 1) / 2) ?
        lastPage : currPage + Math.ceil(parseFloat(totalShowPage - 1) / 2);

    for (let i = startShowPage; i <= endShowPage; i++) {

        if (i == currPage) {

            pagination +=
                `<a id="pagination-${i}" class="active blue" href="#">${i}</a>`
        } else {

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

        modal(`row-${r.classID}`, `modal-${r.classID}`, `close-${r.classID}`);

        document.getElementById(`edit-class-${r.classID}`).onclick = function() {

            let modal = document.getElementById('modal-edit-class');
            let span = document.getElementById('close-edit-class');

            document.getElementById(`modal-${r.classID}`).style.display = "none";

            editClass(r.guid)

            modal.style.display = "block";

            span.onclick = function() {
                modal.style.display = "none";
                document.querySelector("form").reset();
            }

            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        };
    }

    for (let i = startShowPage; i <= endShowPage; i++) {

        document.getElementById(`pagination-${i}`).onclick = function() { return getApi(i, pageSize) };
    }
    document.getElementById(`pagination-first`).onclick = function() { return getApi(firstPage, pageSize) };
    document.getElementById(`pagination-last`).onclick = function() { return getApi(lastPage, pageSize) };
}
async function getListstudentByclassId(classId) {
    let api_url1 = `https://localhost:5001/api/v1/Students/classID?classID=${classId}`;

    let response = await fetch(api_url1);
    var json = await response.json();
    var studentList = [];
    for (let student of json.data) {
        console.log(student.studentID);
        studentList.push(student.studentID);
    }
    return studentList;
}
async function addStudentPoint(classID, studentList) {
    // let studentList = getListstudentByclassId(classID);
    console.log(studentList);
    let api_urls = `https://localhost:5001/api/v1/Students/jj`;

    let list = null;
    for (let student of studentList) {
        let temp = {
            "guid": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
            "studentID": " ",
            "classId": " ",
            "midterm": 0,
            "final": 0
        }
        temp.classId = classID;
        temp.studentID = student;
        temp.midterm = -1;
        temp.final = -1;
        list.push(temp);

    }
    await fetch(api_urls, {

            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(list)
        })
        .then(function(response) {
            response.json().then(data => {

                console.log(data)

            })
        })
        .catch(function(error) {

            console.log(error);
        })

}

function addClass() {

    const addClassForm = document.getElementById('add-class-form');

    addClassForm.addEventListener('submit', async function(e) {

        e.preventDefault();
        const formData = new FormData(addClassForm).entries();
        const addClassURL = 'https://localhost:5001/api/v1/Classes';

        await fetch(addClassURL, {

                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(Object.fromEntries(formData))
            })
            .then(function(response) {
                response.json().then(data => {

                    console.log(data)
                    let studentList = getListstudentByclassId(data.classID);
                    console.log(studenList);
                    addStudentPoint(data.classID, studentList);
                    alert('Tạo lớp thành công');
                    document.getElementById('modal-add-class').style.display = "none";
                })
            })
            .catch(function(error) {

                alert('Tạo lớp thất bại');
                document.getElementById('modal-add-class').style.display = "none";
            })
    });
}

async function getClass(classGuid) {

    let api_url = `https://localhost:5001/api/v1/Classes/${classGuid}`;

    let response = await fetch(api_url);
    var json = await response.json();

    return json.data;
}

async function editClass(classGuid) {

    const Class = await getClass(classGuid);

    console.log(Class);

    document.getElementById('edit-guid').value = Class.guid;
    document.getElementById('edit-classID').value = Class.classId;
    document.getElementById('edit-teacherID').value = Class.teacherID;
    document.getElementById('edit-subjectID').value = Class.subjectID;
    document.getElementById('edit-studentClassID').value = Class.studentClassID;
    document.getElementById('edit-semester').value = Class.semester;
    document.getElementById('edit-classroomName').value = Class.classroomName;
    document.getElementById('edit-schedule').value = Class.schedule;

    const editClassForm = document.getElementById('edit-class-form');

    editClassForm.addEventListener('submit', async function(e) {

        e.preventDefault();
        const formData = new FormData(editClassForm).entries();
        const editClassURL = `https://localhost:5001/api/v1/Classes/${classGuid}`;

        await fetch(editClassURL, {

                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(Object.fromEntries(formData))
            })
            .then(function(response) {
                response.json().then(data => {

                    console.log(data)
                    alert('Chỉnh sửa lớp thành công');
                    document.getElementById('modal-edit-class').style.display = "none";
                })
            })
            .catch(function(error) {

                alert('Chỉnh sửa lớp thất bại');
                document.getElementById('modal-edit-class').style.display = "none";
            })
    });
}

getApi(1, 10);
addClass();
modal('add-class-btn', 'modal-add-class', 'close-add-class');