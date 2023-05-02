<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.obj.model.MemberVO" %>  
<!DOCTYPE html>
<html lang="ko">
<head>
<%request.setCharacterEncoding("utf-8");%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 페이지</title>
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
	<main>
		<div class="px-5">
			<div class="text-left mb-2">
				<h1 class="display-5 fw-bolder">
					<span class="text-gradient d-inline fs-2">관리자 페이지</span><br>
				</h1>
			</div>
		<%
			String name = (String) session.getAttribute("name");
		%>
		관리자 계정: Doctor :
		<%=name%>
		<select id="type" name="type">
			<option selected value="N">이름</option>
			<option value="D">병명</option>
			</select>
			<input type="text" name="keyword" id="keyword" 
			class=" form-control mb-3" onkeyup="search(this);">
			<div class="row gx-5 justify-content-center">
				<div class="card shadow border-0 rounded-4 mb-5">
					<div class="card-body row align-items-center">
						<table id="memberList" class="text-center" style="empty-cells: show;">
							<tr class="fw-bold">
								<th class="DarkText-gradient mb-5">환자 이름</th>
								<th class="DarkText-gradient mb-5">주민등록번호</th>
								<th class="DarkText-gradient mb-5">병명</th>
								<th class="DarkText-gradient mb-5">수술명</th>
								<th class="DarkText-gradient mb-5">수술 날짜</th>
								<th class="DarkText-gradient mb-5">입원 날짜</th>
								<th class="DarkText-gradient mb-5">퇴원 날짜</th>
								<th class="DarkText-gradient mb-5">환자 코드</th>
								<th class="DarkText-gradient mb-5">작성/수정</th>
							</tr>
							<c:forEach items="${memcertVal}" var="memcertVal">
							<input type="hidden" id="id" value="${memcertVal.id}">
							<input type="hidden" id="diagnostic" value="${memcertVal.diagnostic}">
								<tr class="col text-center mb-lg-3 rounded-4 Sans fw-light">
									<td class="py-3">
										<!-- 환자이름  -->
										<div id="name">${memcertVal.name}</div>
									</td>
									<td class="py-3">
										<!-- 주민등록번호  -->
										<div>${memcertVal.residentid}</div>
									</td>
<%-- 									<c:forEach items="${docdig}" var="docdig"> --%>
<%-- 									<c:if test="${docdig.id eq member.id}"> --%>
									<td class="py-3">
										<!-- 병명  disease -->
										<div>${memcertVal.disease}</div>
									</td>
									<td class="py-3">
										<!-- 수술명 surgery -->
										<div>${memcertVal.operation}</div>
									</td>
									<td class="py-3">
										<!-- 수술 날짜 strat -->
										<div>${memcertVal.surg_date}</div>
									</td>
									<td class="py-3">
										<!-- 입원 날짜 start -->
										<div>${memcertVal.admission_date}</div>
									</td>
									<td class="py-3">
										<!-- 퇴원 날짜 end -->
										<div>${memcertVal.discharge_date}</div>
									</td>
									<td class="py-3">
										<!-- 환자 코드 pcode -->
										<div>${memcertVal.patientcode}</div>
									</td>
									<c:if test="${empty memcertVal.patientcode and empty memcertVal.diagnostic}">
									<td class="py-3">
										<!-- 작성하기 -->
										<div>
<!-- 											<a href="#" id="IdName" -->
											<a href="javascript:patientWrite('${memcertVal.id}', '${memcertVal.name}')"
												class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block px-2 py-1 fs-6 fw-bolder">작성하기</a>
										</div>
									</td>	
									</c:if>
									<c:if test="${not empty memcertVal.patientcode}">
									<td class="py-3">
										<!-- 수정하기 -->
										<div>
											<a href="javascript:patientModify('${memcertVal.id}', '${memcertVal.name}')"
												class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block px-2 py-1 fs-6 fw-bolder">수정하기</a>
										</div>
									</td>
									</c:if>									
								</tr>				
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer-->
	<!-- 	<footer class="Sans mt-auto" style="text-shadow: 1px 1px 1px white">
		<div class=" px-5">
			<div class="row align-items-end  flex-column ">
				justify-content-between flex-sm-row
				<div class="col-auto small m-0">Copyright &copy; Ulsan Green
					Hospital by Team ABC 2023</div>
			</div>
		</div>
	</footer> -->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/resources/js/patientWrite.js"></script>
<script src="/resources/js/patientModify.js"></script>
<script src="/resources/js/searchingFunc.js"></script>

</body>
</html>