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
                $('#emailMsg').css('color', '#dc3545');
                $('#email').val('');
            }else if (result === 'available') {
                $('#emailMsg').html('회원가입 가능합니다.');
                $('#emailMsg').css('color', '#198754');
            }else {
                $('#emailMsg').html('이미 가입된 회원입니다.');
                $('#emailMsg').css('color', '#dc3545');
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