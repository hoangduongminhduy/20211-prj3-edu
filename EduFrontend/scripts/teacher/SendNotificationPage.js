const selectSemester = document.getElementById('select-semester');
const selectClass = document.getElementById('select-class');
const notificationTitle = document.getElementById('notification-title');
const notificationMessage = document.getElementById('notification-message');
const resetButton = document.getElementById('reset');
const confirmButton = document.getElementById('confirm');

const teacherID = window.sessionStorage.getItem('userID');

resetContent();

function resetContent() {
    getClassOptions();
    notificationTitle.value = "";
    notificationMessage.value = "";
}

async function getClassOptions() {
    await fetch(`https://localhost:5001/api/v1/Classes/teacherID?teacherID=${teacherID}`).then(function (response) {
        response.json().then(data => {
            setClassOptions(data);
        })
    })
}

function setClassOptions(response) {
    if (response.success) {
        selectClass.innerHTML = '';
        let defaultOpt = document.createElement('option');
        defaultOpt.value = '';
        defaultOpt.textContent = 'Trống';
        selectClass.appendChild(defaultOpt);
        response.data.forEach(function (el, idx) {
            let opt = document.createElement('option');
            opt.value = el.classId;
            opt.textContent = `Lớp ${el.subjectName} - ${el.classId}`;
            selectClass.appendChild(opt);
        })
    }
}

function getNotificationInfo() {
    if (selectClass.value && notificationTitle.value && notificationMessage.value)
        return {
            senderId: teacherID,
            classId: selectClass.value,
            title: notificationTitle.value,
            message: notificationMessage.value,
            sendTime: new Date()
        }
    else
        alert('Thông tin thông báo không hợp lệ, vui lòng kiểm tra lại');
}

resetButton.onclick = resetContent();

confirmButton.onclick = async function sendNotification() {
    let payload = getNotificationInfo();
    console.log(JSON.stringify(payload));
    if (payload)
        await fetch('https://localhost:5001/api/v1/Notifications',
            {
                method: 'POST',
                body: JSON.stringify(payload),
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                }
            })
            .then(function (response) {
                response.json().then(data => {
                    console.log(data)
                    alert('Gửi thông báo thành công');
                    resetContent();
                })
            })
            .catch(function (error) {
                alert('Gửi thông báo thất bại');
            })
}