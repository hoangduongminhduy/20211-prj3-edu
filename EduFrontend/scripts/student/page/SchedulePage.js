const studentID = window.sessionStorage.getItem('userID');
function checkLogin(){
    if(!studentID){
        window.location.href = '/views/authen/login.html';
    }
}
checkLogin();

let semester = 20211;

const api_url =
    `https://localhost:5001/api/v1/Classes/studentID?text=${studentID}`;

async function getapi(url) {

    // Storing response
    const response = await fetch(url);

    // Storing data in form of JSON
    var data = await response.json();
    console.log(data);

    show(data);
}

getapi(api_url);

//nhatminh
function onDbClickRow(row){
    let data = row.getAttribute('data');
    let classId = row.getAttribute('classId');

    document.getElementById('m-title').value = 'Sinh viên ' + studentID + ' xin nghỉ học';
    document.getElementById('m-classId').value = classId;
    document.getElementById('m-info').value = data;
    

    let myDialog = document.getElementsByClassName('m-dialog')[0];
    myDialog.style.display = 'block';
}

function updateSemester() {
    var select = document.getElementById('semester');
    // console.log(select);
    let option = select.options[select.selectedIndex];
    semester = option.value;
    console.log(option.value);
    getapi(api_url);
}

function show(data) {
    let tab = ``;

    if (semester != 0) {
        for (let element of data.data) {
            if (element.semester == semester) {
                tab += `  <tr classId="${element.classId}" data="${element.classId}, ${element.subjectID}, ${element.subjectName}, ${element.classroomName}, ${element.schedule}" 
                title="Click đúp để xin nghỉ học buổi kế tiếp" 
                ondblclick='onDbClickRow(this)'>
                <td class="align-left">${element.classId}</td>
                <td class="align-left">${element.subjectID}</td>
                <td class="align-left">${element.subjectName}</td>
                <td class="align-left">${element.classroomName}</td>
                <td class="align-left">${element.schedule}</td>
                </tr>`;
            }
        }
    } else {
        for (let element of data.data) {
            tab += `  <tr classId="${element.classId}" data="${element.classId}, ${element.subjectID}, ${element.subjectName}, ${element.classroomName}, ${element.schedule}" 
            title="Click đúp để xin nghỉ học buổi kế tiếp" 
            ondblclick='onDbClickRow(this)'>
            <td class="align-left">${element.classId}</td>
            <td class="align-left">${element.subjectID}</td>
            <td class="align-left">${element.subjectName}</td>
            <td class="align-left">${element.classroomName}</td>
            <td class="align-left">${element.schedule}</td>
          </tr>`;
        }
    }

    document.getElementById('student-she').innerHTML = tab;
}

//nhatminh
function closeDialog(){
    let myDialog = document.getElementsByClassName('m-dialog')[0];
    myDialog.style.display = 'none';
}
//nhatminh
async function sendNotifi() {  
    let title = document.getElementById('m-title').value;
    let classId = document.getElementById('m-classId').value;
    let message = document.getElementById('m-info').value + ': ' + document.getElementById('m-message').value;
    await fetch('https://localhost:5001/api/v1/Notifications',
        {
            method: 'POST',
            body: JSON.stringify({
                senderID: studentID,
                classId: classId,
                title: title,
                message: message
            }),
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            }
        })
        .then(function (response) {
            response.json().then(data => {
                console.log(data);
                alert('Xin nghỉ học thành công');
                closeDialog();
            })
        })
        .catch(function (error) {
            alert('Xin nghỉ học thất bại');
        })
}

