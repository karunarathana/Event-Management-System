$(document).ready(function () {
    $('#print_btn').click(function () {
        $('#content').printThis();
    });
});

const message = document.getElementById('print_btn');
message.addEventListener('click', () => {
    alert('Click');
});