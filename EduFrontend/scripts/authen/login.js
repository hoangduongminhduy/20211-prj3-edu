const userIDInput = document.getElementById('userID')
const passwordInput = document.getElementById('password')

const form = document.getElementById("form")
form.addEventListener('submit', checkLogin)


async function checkLogin(event) {
    event.preventDefault()
    const userID = userIDInput.value
    const password = passwordInput.value
    const role = document.querySelector('input[name="role"]:checked').value

    await fetch(`https://localhost:5001/api/v1/login?userID=${userID}&password=${password}&role=${role}`)
        .then(response => {
            response.json().then(data => {
                console.log(data);
                handleResponse(data, role)
            })
        })
        .catch(err => {
            alert("Đăng nhập thất bại")
        })
}

function handleResponse(response, role) {
    if (response.success) {
        window.sessionStorage.setItem("userID", response.data)
        if (role == 'admin')
            location.href = `../../views/admin/class-page.html`
        else 
            location.href = `../../views/${role}/schedule-page.html`
    }
}