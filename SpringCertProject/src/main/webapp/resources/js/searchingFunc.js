/**
 * 
 */
console.log("searching connect")

//search function 정의
$(document).ready(function() {
	function search(input) {
		var type = $('#type').val();
		var keyword = $('#keyword').val();
		console.log(keyword);
		$.ajax({
			type: 'GET',
			url : "/search",
			data: {
				type: type,
				keyword: keyword
			},
			dataType: 'json',
			contentType: 'application/json; charset=utf-8',
			success : function(data){
				console.log("on success");
				console.log(data);
				var tableBody = $('#memberList');
				tableBody.empty();
				console.log(data.length);
				var headerRow = '<tr class="fw-bold">' +
			    '<th class="DarkText-gradient mb-5">환자 이름</th>' +
			    '<th class="DarkText-gradient mb-5">주민등록번호</th>' +
			    '<th class="DarkText-gradient mb-5">병명</th>' +
			    '<th class="DarkText-gradient mb-5">수술명</th>' +
			    '<th class="DarkText-gradient mb-5">수술 날짜</th>' +
			    '<th class="DarkText-gradient mb-5">입원 날짜</th>' +
			    '<th class="DarkText-gradient mb-5">퇴원 날짜</th>' +
			    '<th class="DarkText-gradient mb-5">환자 코드</th>' +
			    '<th class="DarkText-gradient mb-5">작성/수정</th>' +
			    '</tr>';
				tableBody.append(headerRow);
				for(var i = 0; i < data.length; i++) {
					var cert = data[i];
					console.log(cert);
					var row = '<tr class="col text-center mb-lg-3 rounded-4 Sans fw-light">' +
					'<td class="py-3">' + cert.name + '</td>' +
					'<td class="py-3">' + cert.residentid + '</td>' +
					'<td class="py-3">' + cert.disease + '</td>' +
					'<td class="py-3">' + cert.operation + '</td>' +
					'<td class="py-3">' + cert.surg_date + '</td>' +
					'<td class="py-3">' + cert.admission_date + '</td>' +
					'<td class="py-3">' + cert.discharge_date + '</td>' +
					'<td class="py-3">' + cert.patientcode + '</td>' +
					'<td class="py-3"><a href="#">작성/수정</a></td></tr>';
//					'<td class="py-3"><a href="javascript:patientModify(\'' + memcertVal.id + '\', \'' + memcertVal.name + '\')" ' +
//			        'class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block px-2 py-1 fs-6 fw-bolder">작성/수정</a></td></tr>';
					tableBody.append(row);
					console.log(data);
				}}
		})
	}
	//search func 호출
	$('#keyword').on('keyup', function() {
	    search(this);
	  });
});

