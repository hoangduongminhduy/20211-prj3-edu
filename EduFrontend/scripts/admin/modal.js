export function modal(btnId, modalId, closeId) {

    var modal = document.getElementById(`${modalId}`);
    var btn = document.getElementById(`${btnId}`);
    var span = document.getElementById(`${closeId}`);

    btn.onclick = function () {
        modal.style.display = "block";
    }

    span.onclick = function () {
        modal.style.display = "none";
    }

    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
}