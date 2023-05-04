// Example starter JavaScript for disabling form submissions 
// if there are invalid fields
// submit 버튼을 누르면 만일 에러일 경우는 form에 was-validated 클래스를 삽입한다.
(function() {
	"use strict";
	window.addEventListener("load", function() { // attaches an event handler to an element.
		var form = document.getElementById("needs-validation");
		form.addEventListener("submit", function(event) {
			if (form.checkValidity() == false) {
				event.preventDefault(); // a 태그나 submit 태그 고유의 동작을 중단
				event.stopPropagation(); // 이벤트가 상위 엘리먼트에 전달되지 않게 막아 준다.
				form.classList.add("was-validated"); // 클래스 하나 추가
			}
			// 서버 연동 처리
		}, false);
	}, false);
}());

// 비밀번호 체크
console.log("Password check connect");
function validatePassword() {
	const passwordInput = document.getElementById("password");
	if (!passwordInput.checkValidity()) {
		passwordInput.classList.add("is-invalid");
		passwordInput.classList.remove("is-valid");
	} else {
		passwordInput.classList.add("is-valid");
		passwordInput.classList.remove("is-invalid");
	}
}

// 비밀번호 확인 체크: 비밀번호 재확인 입력 시 일치할 것
console.log("PassCk check connect");
function pwVerifiedCheck() {
	const status = document.getElementById('msgPassCk');
	const password = document.getElementById('password');
	const passCk = document.getElementById('passCk');
	if (password.value == passCk.value) {
		status.innerHTML = "좋아요!";
		status.style.color = "#198754" // Green
	} else {
		status.innerHTML = "비밀번호가 일치하지 않습니다.";
		status.style.color = "#dc3545"; // Red
	}
}

// 이름 체크
console.log("Name check connect");
function validateName() {
	const nameInput = document.getElementById("name");
	if (!nameInput.checkValidity()) {
		nameInput.classList.add("is-invalid");
		nameInput.classList.remove("is-valid");
	} else {
		nameInput.classList.add("is-valid");
		nameInput.classList.remove("is-invalid");
	}
}

// 주민등록번호 체크
console.log("Residentid check connect");
function validateResidentid() {
	const residentidInput = document.getElementById("residentid");
	if (!residentidInput.checkValidity()) {
		residentidInput.classList.add("is-invalid");
		residentidInput.classList.remove("is-valid");
	} else {
		residentidInput.classList.add("is-valid");
		residentidInput.classList.remove("is-invalid");
	}
}

// 전화번호 체크
console.log("Phone check connect");
function validatePhone() {
	const phoneInput = document.getElementById("phone");
	if (!phoneInput.checkValidity()) {
		phoneInput.classList.add("is-invalid");
		phoneInput.classList.remove("is-valid");
	} else {
		phoneInput.classList.add("is-valid");
		phoneInput.classList.remove("is-invalid");
	}
}