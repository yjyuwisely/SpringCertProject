/**
 * 
 */
console.log("pretty connect!");
let errMSG = document.getElementById("errorMsg").value;
let input = document.getElementById("errorMsg");
console.log(errMSG);
$(document).ready(function () {
	if(errMSG === "errorMsg"){
	$('#submitButton').click(function (event) {
		event.preventDefault();
		Swal.fire({
			icon: 'error',
			title: '이메일 또는 비밀번호 틀림!',
			text: '컴퓨터가 3초뒤에 터집니다!! 도망가세요!.',
			showCancelButton: false,
			confirmButtonColor: '#3085d6',
			confirmButtonText: 'OK'
		}).then((result) => {
			  if (result.isConfirmed) {
				  location.reload();
			  }
		})
		input.value = null;
	})
	}
});

