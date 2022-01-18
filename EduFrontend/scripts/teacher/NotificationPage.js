const teacherID = window.sessionStorage.getItem('userID');

const contentArea = document.querySelector('.content');

getNotifications();

async function getNotifications() {
	await fetch(
		`https://localhost:5001/api/v1/Notifications/teacherID?teacherID=${teacherID}`
	)
		.then(function (response) {
			response.json().then((responseData) => {
				showNotifications(responseData.data);
			});
		})
		.catch(function (error) {
			alert('Có lỗi xảy ra');
		});
}

function showNotifications(notifications) {
	notifications.forEach(async (el) => {
		const notification = document.createElement('div');
		notification.classList.add('notification');

		const sender = document.createElement('div');
		sender.classList.add('sender');
		const senderName = await getSenderName(el.senderId);
		sender.innerHTML = `<div>
            <span class="sender-label">Sender: </span>${senderName}
        </div>`;

		const title = document.createElement('div');
		title.classList.add('title');
		title.innerHTML = `<div>
            <span class="title-label">Title: </span>${el.title}
        </div>`;

		const message = document.createElement('div');
		message.classList.add('message');
		message.innerHTML = `<div>
            <span class="message-label">Message: </span>${el.message}
        </div>`;

		notification.appendChild(sender);
		notification.appendChild(title);
		notification.appendChild(message);
		notification.appendChild(document.createElement('hr'));

		contentArea.appendChild(notification);
	});
}

async function getSenderName(senderID) {
	let senderName;
	await fetch(
		`https://localhost:5001/api/v1/Teachers/detail?teacherID=${senderID}`
	).then(async function (response) {
		await response.json().then((responseData) => {
			senderName = responseData.data.fullName;
		});
	});
	return senderName;
}
