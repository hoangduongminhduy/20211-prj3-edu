import { modal } from './modal.js';

let currPage = 1;
let firstPage = 1;
let lastPage = 1;
let pageSize = 10;

async function getApi(PageNumber, PageSize = pageSize) {

    let api_url = `https://localhost:5001/api/v1/StudentClasses/paginationClass?pageNumber=${PageNumber}&pageSize=${PageSize}`;

    const response = await fetch(api_url);

    var json = await response.json();

    currPage = json.pageNumber;
    pageSize = json.pageSize;
    lastPage = Math.ceil(parseFloat(json.total) / parseFloat(json.pageSize));

    show(json);
}

function show(data) {
    let content = ``;


    // Loop to access all rows 
    for (let r of data.itemList) {

        //Table content
        content +=
            `<tr id='row-${r.classID}'> 
            <td class="align-center">${r.studentclassID} </td>
            <td class="align-center">${r.studentclassName}</td>
            <td class="align-left">${r.nbOfStudent}</td> 
            <td class="align-center">${r.K}</td>    
        </tr>`;

        //Modal content

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

    document.getElementById("pagination").innerHTML = pagination;


    for (let i = startShowPage; i <= endShowPage; i++) {

        document.getElementById(`pagination-${i}`).onclick = function() { return getApi(i, pageSize) };
    }
    document.getElementById(`pagination-first`).onclick = function() { return getApi(firstPage, pageSize) };
    document.getElementById(`pagination-last`).onclick = function() { return getApi(lastPage, pageSize) };
}

function addClass() {
    const addClassForm = document.getElementById('add-class-form');

    addClassForm.addEventListener('submit', async function(e) {

        e.preventDefault();
        const formData = new FormData(addClassForm).entries();
        const addClassURL = 'https://localhost:5001/api/v1/StudentClasses';

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
                    alert('Tạo lớp sinh viên thành công');
                    document.getElementById('modal-add-class').style.display = "none";
                })
            })
            .catch(function(error) {

                alert('Tạo lớp sinh viên thất bại');
                document.getElementById('modal-add-class').style.display = "none";
            })
    });
}

getApi(1, 10);
modal('add-class-btn', 'modal-add-class', 'close-add-class');
addClass();