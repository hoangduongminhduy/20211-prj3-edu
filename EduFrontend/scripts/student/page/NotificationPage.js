const studentID = window.sessionStorage.getItem('userID');
function checkLogin(){
    if(!studentID){
        window.location.href = '/views/authen/login.html';
    }
}
checkLogin();

console.log(studentID);
const api_url =
    `https://localhost:5001/api/v1/Notifications/studentID?studentID=${studentID}`;

async function getapi(url) {

    // Storing response
    const response = await fetch(url);

    // Storing data in form of JSON
    var data = await response.json();
    console.log(data);

    show(data);
}
// Calling that async function
getapi(api_url);


// Function to define innerHTML for HTML table
function show(data) {
    let tab = ``;


    for (let element of data.data) {
        tab += ` <div class="title-note">
            <div class="title">${element.title}</div>
                <div class="note-time">${element.sendTime} </div>
                    <div class="content-note">${element.message}</div>
                    </div>`;
    }

    document.getElementById('content').innerHTML = tab;
}