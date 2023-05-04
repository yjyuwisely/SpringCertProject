<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%
	request.setCharacterEncoding("utf-8");
%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>수술확인서</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />

<!-- Contents -->
<body>
	<h1 class="container col-xl-8 print-hide text-left ps-3">
		<span class="text-gradient d-inline fw-bolder fs-3">증명서 상세 내역</span>
	</h1>
	<div class="container col-xl-8 card shadow border-0 rounded-4 p-3">
		<h1 class="text-center fw-bolder fs-2 m-2 pb-3">수술확인서</h1>
		<table class="tablePrint table text-center mb-5">
			<tr>
				<td class="inputStyle fw-bold">환자 이름</td>
				<td>${cert.name}</td>
				<td class="inputStyle fw-bold">주민등록번호</td>
				<td>${cert.residentid}</td>
			</tr>
			<tr>
				<td class="inputStyle fw-bold">병명</td>
				<td colspan="3" class="text-start">${cert.disease}</td>
			</tr>
			<tr>
				<td class="inputStyle fw-bold">입원 날짜</td>
				<td>${cert.admission_date}</td>
				<td class="inputStyle fw-bold">퇴원 날짜</td>
				<td>${cert.discharge_date}</td>
			</tr>
		</table>
		<p style="margin-bottom: 0.5rem;">
			위 환자는 본원에서 아래와 같이 수술을 시행하였음을 확인함.<br> <br>
		</p>
		<ul style="list-style-type: square;">
			<li>수술명: ${cert.operation}</li>
			<li>수술일자: ${cert.surg_date}</li>
		</ul>

		<p class="dateCheif text-center">
			<c:set var="myDate" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${myDate}" pattern="yyyy년 MM월 dd일" />
			<!-- 20AA년 B월 C일 -->
			<br> <b class="fs-5">울산 그린 병원 병원장</b><br>
		</p>
	</div>
	<div class="print-hide text-center">
		<button onclick="window.print()"
			class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-3 fw-bolder fs-4 bi bi-download my-4 "
			href="#">다운로드</button>
	</div>
</body>
</html>