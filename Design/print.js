$(document).ready(function () {
    $('#print_btn').click(function () {
        $('#content').printThis();
    });
});

console.log('asd');


function hellow() {
alert('click')
        const element = document.getElementById('content');
        html2pdf()
            .from(element)
              .save();
    
}