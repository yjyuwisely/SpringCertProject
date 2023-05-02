/**
 * 
 */
console.log("checkEmail connect");
function checkEmail(email) {
    var email = $('#email').val();
    $.ajax({
        type: "POST",
        url: "checkEmail",
        data: {email: email},
        success: function (result) {
            if (result === 'available') {
                $('#emailMsg').html('Available Email');
                $('#emailMsg').css('color', 'lightgreen');
            } else {
                $('#emailMsg').html('Duplicate Email');
                $('#emailMsg').css('color', 'red');
                $('#email').val('');
            }
        }
    });
}