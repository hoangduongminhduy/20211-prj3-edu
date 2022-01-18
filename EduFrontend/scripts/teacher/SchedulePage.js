const teacherID = window.sessionStorage.getItem('userID')
let semester = 0;
const api_url =
    `https://localhost:5001/api/v1/Classes/teacherID?teacherID=${teacherID}`;

async function getapi(url) {

    // Storing response
    const response = await fetch(url);
    // Storing data in form of JSON
    var data = await response.json();
    console.log(data);
    // updateSemester();
    show(data);
}

function updateSemester() {
    var select = document.getElementById('semester');
    let option = select.options[select.selectedIndex];
    semester = option.value;
    console.log(option.value);
    getapi(api_url);
}



function show(data) {

    let tab = '';


    for (let element of data.data) {
        if (element.semester == semester) {
            tab += `<tr id="${element.guid}" onclick="getclass(${element.classId}, '${element.subjectID}')">
            <td class="align-left">${element.classId}</td>
            <td class="align-left">${element.subjectID}</td>
            <td class="align-left">${element.subjectName}</td>
            <td class="align-left">${element.classroomName}</td>
            <td class="align-left">
             ${element.schedule}
            </td>
          </tr>`;
        }

    }

    document.getElementById('schedule-table').innerHTML = tab;
}

function getclass(res, subjectID) {

    let classid = String(res);
    window.sessionStorage.setItem("studentclassID", classid);
    window.sessionStorage.setItem("subjectID", subjectID);
    location.replace("../../views/teacher/class-detail.html");
}

getapi(api_url);