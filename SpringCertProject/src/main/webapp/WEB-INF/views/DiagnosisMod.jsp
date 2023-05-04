<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>진단서 수정</title>
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
	<div class="container px-5">
		<div class="row  justify-content-center">
			<div class="col-9">
				<div class="border-0 px-5 mb-5">
					<div class="card-body row px-3 pb-4">
						<div class="mb-3 p-0">
							<div class="text-left">
								<h1 class="display-5 fw-bolder">
									<span class="text-gradient d-inline pb-2 fs-1">진단서 수정
										${joinMapVal.id}</span>
								</h1>
							</div>
							<div class="text-end Sans text-muted mb-3">
								<%
									String name = (String) session.getAttribute("name");
								%>
								관리자 계정: Doctor :
								<%=name%>
							</div>
						</div>
						<form action="dignosisUpdate" method="post" class="Sans mb-3">
							<%-- <input type="hidden" id="memId" name="id" value="${joinMapVal.id}"> --%>
							<input type="hidden" id="memId" name="id" value="${member.id}">
							<table class="text-left DiagnosisTable">
								<tr class="pt-5">
									<td colspan='2' class="fs-5 Sans fw-light pb-3">환자이름/환자코드
										: ${joinMapVal.name}/(${prefix})</td>
									<td class="fs-5 Sans fw-light ps-3 pb-3">Patient Code</td>
									<td><select id="patientcode" name="patientcode"
										class="mb-3 form-control">
											<option value="-">선택하세요</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
									</select></td>
								</tr>
								<tr>
									<td class="fs-5 Sans fw-light pb-3">Diagnostic</td>
									<td colspan="3"><textarea id="Diagnostic"
											name="Diagnostic" class="mb-3 form-control" rows="3">${joinMapVal.patientVal[0].diagnostic}
								</textarea></td>
								</tr>
								<tr>
									<td class="fs-5 Sans fw-light pb-3">입원 날짜</td>
									<td><input type="date" id="admission_date"
										name="admission_date"
										value="${joinMapVal.patientVal[0].admission_date}"
										class="form-control mb-3"></td>
									<td class="fs-5 Sans fw-light ps-3 pb-3">퇴원 날짜</td>
									<td><input type="date" id="discharge_date"
										name="discharge_date"
										value="${joinMapVal.patientVal[0].discharge_date}"
										class="form-control mb-3"></td>
								</tr>
								<tr>
									<td class="fs-5 Sans fw-light pb-3">상병명</td>
									<td><input type="text" id="disease" name="disease"
										class="form-control mb-3"
										value="${joinMapVal.patientVal[0].disease}"></td>
									<td class="fs-5 Sans fw-light ps-3 pb-3">수술 날짜</td>
									<td colspan='3'><input type="date" id="surg_date"
										name="surg_date" value="${joinMapVal.patientVal[0].surg_date}"
										class="form-control mb-3"></td>
								</tr>
								<tr>
									<td class="fs-5 Sans fw-light pb-3">수술명</td>
									<td colspan="3"><input type="text" id="operation"
										name="operation" value="${joinMapVal.patientVal[0].operation}"
										class="form-control mb-3"></td>
								</tr>
							</table>
							<div class="row justify-content-center Sans my-4">
								<input
									class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-3 p-1 fw-bolder fs-5"
									id="ModSubBTN" type="submit" value="수정하기"
									onclick="Check_CD(event)">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/digSetParam.js"></script>
	<script src="resources/js/ModSubBTN.js"></script>
</body>
</html>