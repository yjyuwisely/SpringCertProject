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
        	if(email === 'aaa'){
            	$('#emailMsg').html('not available Email');
                $('#emailMsg').css('color', 'red');
                $('#email').val('');
            }else if (result === 'available') {
                $('#emailMsg').html('Available Email');
                $('#emailMsg').css('color', 'lightgreen');
            }else {
                $('#emailMsg').html('Duplicate Email');
                $('#emailMsg').css('color', 'red');
                $('#email').val('');
            }
        }
    });
}


//if(email == 'a'){
//	$('#emailMsg').html('not available Email');
//    $('#emailMsg').css('color', 'red');
//    return false;
//}