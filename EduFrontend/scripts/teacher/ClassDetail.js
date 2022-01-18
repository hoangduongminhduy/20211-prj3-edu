const classID = window.sessionStorage.getItem('studentclassID')
const subjectID = window.sessionStorage.getItem('subjectID')

const pointForm = document.getElementById('point-form')
const txtStudentName = document.getElementById('student-name')
const txtStudentID = document.getElementById('student-id')
const inputMidterm = document.getElementById('midterm')
const inputFinal = document.getElementById('final')
const buttonSave = document.getElementById('button-save')
let point;
const api_url =
    `https://localhost:5001/api/v1/Points/GetPointClass?studentID=${classID}`;

async function getapi(url) {

    // Storing response
    const response = await fetch(url);

    // Storing data in form of JSON
    var data = await response.json();
    console.log(data);

    show(data);
}

getapi(api_url);


function show(data) {
    let tab = ``;

    for (let element of data.data) {
        tab += `  <tr onclick="getStudentPoint(${element.studentID}, '${element.fullName}')">
        <td class="align-left">${element.studentID}</td>
        <td class="align-left">${element.fullName}</td>
        <td class="align-left">${element.midterm}</td>
        <td class="align-left">${element.final}</td>
      </tr>`;
    }

    document.getElementById('detail-class').innerHTML = tab;
}

async function getStudentPoint(studentID, studentName) {
    txtStudentID.innerHTML = studentID;
    txtStudentName.innerHTML = studentName;
    await fetch(`https://localhost:5001/api/v1/Points/Filter?studentID=${studentID}`)
        .then(response => {
            response.json().then(res => {
                console.log(res.data);
                setStudentPoint(res.data);
            })
        })
}

function setStudentPoint(points) {

    // if (points.length == 0 && points != null) {
    //     resetPoints();
    // } else {
    console.log(points);
    point = points.filter(p => {
        return p.subjectID == subjectID;
    })[0];
    inputMidterm.value = point.midterm
    inputFinal.value = point.final
        //}
    console.log(point);
    toggleDialog();


}


async function updatePoint() {
    point.midterm = inputMidterm.value
    point.final = inputFinal.value
    let tempPoint = {
        guid: point.guid,
        classId: point.classId,
        studentID: point.studentID,
        midterm: point.midterm,
        final: point.final
    }
    console.log(tempPoint);
    const PointURL = `https://localhost:5001/api/v1/Points/${point.guid}`;
    await fetch(PointURL, {

            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(tempPoint)
        })
        .then(function(response) {
            response.json().then(data => {
                console.log(data)
                getapi(api_url)
                pointForm.style.display = "none";
                getapi(api_url);
            })
        })
        .catch(function(error) {
            alert('Cập nhật điểm thất bại');
            pointForm.style.display = "none";
        })



}


function resetPoints() {
    inputMidterm.value = "";
    inputFinal.value = "";
}


function backtoTeacher() {
    location.replace("../../views/teacher/schedule-page.html")
}

function toggleDialog() {

    pointForm.style.display = pointForm.style.display == 'none' ? 'block' : 'none';
}