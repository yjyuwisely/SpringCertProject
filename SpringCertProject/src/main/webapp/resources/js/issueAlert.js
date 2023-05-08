console.log("Connect: Swal.fire()")

// Swal.fire 경고창 적용
patientcode = document.getElementById("patientcode").value;
console.log("patientcode:" + patientcode)
console.log("patientcode typeof:" + typeof patientcode);

// Once a constant is initialized, we cannot change its value
// const 변수는 업데이트와 재선언 둘 다 불가능하다.
const linkGeneral = document.getElementById("linkGeneral");	// 진료확인서 
const linkInout = document.getElementById("linkInout");	// 입퇴원확인서 
const linkSurg = document.getElementById("linkSurg");	// 수술확인서 

// 진료확인서
linkGeneral.addEventListener("click", clickGeneral);

function clickGeneral(e) {
	if (patientcode === '2' || patientcode === '3' || patientcode.trim() === '') {
		e.preventDefault(); //a 태그나 submit 태그의 고유의 동작을 중단
		Swal.fire('내역이 없습니다.', '', 'error');
	}
	else {
		window.location.href = "javascript:GeneralRequest('${common.id}')";
		//window.location.href = "/GeneralDown?id=${common.id}";
	}
};

// 입퇴원확인서
linkInout.addEventListener("click", clickInout);
function clickInout(e) {
	if (patientcode === '1' || patientcode === '3' || patientcode.trim() === '') {
		e.preventDefault();
		Swal.fire('내역이 없습니다.', '', 'error');
	}
	else {
		window.location.href = "javascript:InOutRequest('${common.id}')";
		//window.location.href = "/InoutDown?id=${common.id}";
	}
};

// 수술확인서
linkSurg.addEventListener("click", clickSurg);
function clickSurg(e) {
	console.log("Connect: linkSurg")
	if (patientcode === '1' || patientcode === '2' || patientcode.trim() === '') {
		e.preventDefault();
		Swal.fire('내역이 없습니다.', '', 'error');
	}
	else {
		window.location.href = href = "javascript:SergRequest('${common.id}')";
		//window.location.href = "/SergDown?id=${common.id}";
	}
};

//원래 코드
//var alertLink = document.getElementById('alert-link');
//alertLink.addEventListener('click', showAlert);
//
//function showAlert() {
//	//	event.preventDefault(); // Prevent a link from opening the URL
//	//	alert("내역이 없습니다.");
//	Swal.fire('내역이 없습니다.', '', 'warning');
//}