<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 	
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
			<form action="doctorIn" method="post" class="text-end Sans text-muted mb-3">
			<% String email = (String) session.getAttribute("doctor"); %>
			관리자 계정 : Doctor
			<%=email%>
			</form>
			<div class="row gx-5 justify-content-center">
				<div class="card shadow border-0 rounded-4 mb-5">
					<div class="card-body row align-items-center">
						<table class="text-center" style="empty-cells: show;">
							<tr class="fw-bold">
								<th class="DarkText-gradient mb-5">환자 이름</th>
								<th class="DarkText-gradient mb-5">주민등록번호</th>
								<th class="DarkText-gradient mb-5">병명</th>
								<th class="DarkText-gradient mb-5">수술명</th>
								<th class="DarkText-gradient mb-5">수술 날짜</th>
								<th class="DarkText-gradient mb-5">입원 날짜</th>
								<th class="DarkText-gradient mb-5">퇴원 날짜</th>
								<th class="DarkText-gradient mb-5">환자 코드</th>
								<th class="DarkText-gradient mb-5">작성하기</th>
								<th class="DarkText-gradient mb-5">수정</th>
							</tr>
							<c:forEach items="${member}" var="member" varStatus="status">
							<input type="hidden" id="id" value="${member.id}">
								<tr class="col text-center mb-lg-3 rounded-4 Sans fw-light">
									<td class="py-3">
										<!-- 환자이름  -->
										<div id="name">${member.name}</div>
									</td>
									<td class="py-3">
										<!-- 주민등록번호  -->
										<div>${member.residentid}</div>
									</td>
									<c:forEach items="${docdig}" var="docdig">
									<c:if test="${docdig.id eq member.id}">
									<td class="py-3">
										<!-- 병명  disease -->
										<div>${docdig.disease}&nbsp;</div>
									</td>
									<td class="py-3">
										<!-- 수술명 surgery -->
										<div>${docdig.operation}&nbsp;</div>
									</td>
									<td class="py-3">
										<!-- 수술 날짜 strat -->
										<div>${docdig.surg_date}&nbsp;</div>
									</td>
									<td class="py-3">
										<!-- 입원 날짜 start -->
										<div>${docdig.admission_date}&nbsp;</div>
									</td>
									<td class="py-3">
										<!-- 퇴원 날짜 end -->
										<div>${docdig.discharge_date}&nbsp;</div>
									</td>
									<td class="py-3">
										<!-- 환자 코드 pcode -->
										<div>${docdig.patientcode}&nbsp;</div>
									</td>
									</c:if>
									</c:forEach>									
									<td class="py-3">
										<!-- 작성하기 -->
										<div>
<!-- 											<a href="#" id="IdName" -->
											<a href="javascript:patientWrite('${member.id}', '${member.name}')"
												class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block px-2 py-1 fs-6 fw-bolder">작성하기</a>
										</div>
									</td>	
									<td class="py-3">
										<!-- 수정하기 -->
										<div>
											<a href="javascript:patientModify('${member.id}', '${member.name}')"
												class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block px-2 py-1 fs-6 fw-bolder">수정하기</a>
										</div>
									</td>								
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
<script src="/resources/js/patientWrite.js"></script>
<script src="/resources/js/patientModify.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->

</body>
</html>