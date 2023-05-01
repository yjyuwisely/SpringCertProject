/**
 * 
 */
console.log("Check_CD connect");
function Check_CD(event){
	let pcode = document.getElementById('patientcode').value;
	let disease = document.getElementById('disease').value;
	if(pcode == '-'){
		Swal.fire(
				  '환자코드!',
				  '환자코드가 시급해요!',
				  'question'
				)
		//alert("환자분류를 선택해주세요");
		event.preventDefault();
		document.getElementById('dignosisUpdate').submit = false;
	}
	if(disease == null){
		Swal.fire(
				  'Disease??',
				  '병명이 뭘까요??',
				  'question'
				)
		//alert("병명을 입력해주세요");
		event.preventDefault();
		document.getElementById('dignosisUpdate').submit = false;
	}
	
}