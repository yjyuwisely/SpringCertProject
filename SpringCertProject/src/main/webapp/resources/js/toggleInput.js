/**
 * 
 */
console.log("toggle input connect");
$(document).ready(function () {
	document.querySelectorAll('input').forEach(input => {
		input.disabled = true;
	})
});

function selectCode(option) {
    // 모든 input 태그를 비활성화
    document.querySelectorAll('input').forEach(input => {
        input.disabled = true;
    });

    // 선택한 옵션에 따라 해당 input 태그만 활성화
    
    if (option === '1') {
        document.querySelector('#disease').disabled = false;
    } else if (option === '2') {
    	document.querySelector('#disease').disabled = false;
        document.querySelector('#admission_date').disabled = false;
        document.querySelector('#discharge_date').disabled = false;
    } else if (option === '3') {
    	document.querySelector('#disease').disabled = false;
        document.querySelector('#admission_date').disabled = false;
        document.querySelector('#discharge_date').disabled = false;
        document.querySelector('#operation').disabled = false;
        document.querySelector('#surg_date').disabled = false;
    }else{
    	Swal.fire(
				  '환자코드!',
				  '환자코드가 시급해요!',
				  'question'
				)
    }
}