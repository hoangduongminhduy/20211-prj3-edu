const teacherName = document.getElementById('teacher-name');
const teacherPosition = document.getElementById('teacher-position');
const teacherBrief = document.getElementById('teacher-brief');
const teacherBirthday = document.getElementById('teacher-birthday');
const teacherGender = document.getElementById('teacher-gender');
const teacherEmail = document.getElementById('teacher-email');
const teacherPhoneNumber = document.getElementById('teacher-phone-number');
const formBrief = document.getElementById('form-brief');
const formBirthday = document.getElementById('form-birthday');
const formGender = document.getElementById('form-gender');
const formEmail = document.getElementById('form-email');
const formPhoneNumber = document.getElementById('form-phone-number');
const buttonEdit = document.getElementById('button-edit');
const detailForm = document.getElementById('detail-form');
const buttonClose = document.getElementById('button-close');
const buttonCancel = document.getElementById('button-cancel');
const buttonSave = document.getElementById('button-save');

let teacher = null;

getTeacherDetail(window.sessionStorage.getItem('userID'));

buttonEdit.onclick = toggleDialog;
buttonCancel.onclick = toggleDialog;
buttonClose.onclick = toggleDialog;
buttonSave.onclick = updateTeacherDetail;

async function updateTeacherDetail() { 
    let payload = getEditInfo();
    if (payload)
        await fetch(`https://localhost:5001/api/v1/Teachers/${teacher.guid}`,
            {
                method: 'PUT',
                body: JSON.stringify(payload),
                headers: {
                    'Content-Type': 'application/json'
                }
            })
            .then(function (response) {
                response.json().then(data => {
                    getTeacherDetail(teacher.teacherID);
                    toggleDialog();
                })
            })
            .catch(function (error) {
                alert('Sửa thông tin thất bại');
            })
}

function getEditInfo() { 
    return {
        guid: teacher.guid,
        teacherID: teacher.teacherID,
        password: teacher.password,
        fullName: teacher.fullName,
        brief: formBrief.value,
        birthday: formBirthday.value,
        gender: formGender.value,
        email: formEmail.value,
        phoneNumber: formPhoneNumber.value
    }
}

function toggleDialog() {
    detailForm.style.display = detailForm.style.display == 'none' ? 'block' : 'none';
}

function getTeacherDetail(teacherID) {
    fetch(`https://localhost:5001/api/v1/Teachers/detail?teacherID=${teacherID}`)
        .then(response => {
            response.json().then(res => {
                teacher = res.data;
                setTeacherDetail(teacher);
            })
        })
}

function setTeacherDetail(teacher) {
    // Set teacher details
    teacherName.innerHTML = teacher.fullName == undefined ? 'Chưa có thông tin' : teacher.fullName;
    teacherPosition.innerHTML = teacher.position == undefined ? 'Chưa có thông tin' : teacher.position;
    teacherBrief.innerHTML = teacher.brief == undefined ? 'Chưa có thông tin' : teacher.brief;
    teacherGender.innerHTML = teacher.gender == undefined ? 'Chưa có thông tin' : (teacher.gender == 'M' ? 'Nam' : 'Nữ'); 
    let birthday = new Date(teacher.birthday);
    teacherBirthday.innerHTML = formatDateForDisplay(birthday);
    teacherEmail.innerHTML = teacher.email == undefined ? 'Chưa có thông tin' : teacher.email;
    teacherEmail.href = teacher.email == undefined ? '#' : `mailto:${teacher.email}`;
    teacherPhoneNumber.innerHTML = teacher.phoneNumber == undefined ? '' : teacher.phoneNumber;
    teacherPhoneNumber.href = teacher.phoneNumber == undefined ? '#' : `tel:${teacher.phoneNumber}`;

    // Set form details
    formBrief.value = teacher.brief == undefined ? '' : teacher.brief;
    formGender.value = teacher.gender == undefined ? '' : teacher.gender;
    formBirthday.value = formatDateForInput(birthday);
    formEmail.value = teacher.email;
    formPhoneNumber.value = teacher.phoneNumber;
}

function formatDateForDisplay(date) {
    if (!date)
        return "Chưa có thông tin";
    return `${date.getDate()} - ${date.getMonth() + 1} - ${date.getFullYear()}`;
}

function formatDateForInput(date) {
    if (!date)
        return '';
    let dateString = date.getDate() < 10 ? '0' + date.getDate() : date.getDate();
    let monthString = date.getMonth() < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1;
    let yearString = date.getFullYear(); 

    return `${yearString}-${monthString}-${dateString}`;
}