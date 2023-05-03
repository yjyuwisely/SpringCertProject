/**
 * 
 */
console.log("pretty connect!");

$(document).ready(function () {
	$('#submitButton').click(function () {
		Swal.fire({
			icon: 'success',
			title: 'Success!',
			text: 'Your request has been successfully processed.',
			showCancelButton: false,
			confirmButtonColor: '#3085d6',
			confirmButtonText: 'OK'
		})	
	})
});

