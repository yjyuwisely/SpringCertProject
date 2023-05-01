/**
 * 
 */
console.log("Check_CD connect");
function Check_CD(){
	let pcode = document.getElementById('patientcode').value;
	let disease = document.getElementById('disease').value;
	
	if(pcode == '-'){
		alert("환자분류를 선택해주세요");
		return false;
	}
	if(disease == null){
		alert("병명을 입력해주세요");
		return false;
	}
}