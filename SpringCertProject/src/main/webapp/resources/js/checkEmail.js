/**
 * 
 */
console.log("checkEmail connect");
function checkEmail(emailInput) {
	let email = $('#email').val();
    let mailExp = /(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/;

    $.ajax({
        type: "POST",
        url: "checkEmail",
        data: {email: email},
        success: function (result) {
        	if(!email.match(mailExp)){
            	$('#emailMsg').html('이메일 형식을 올바르게 입력해주세요.');
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