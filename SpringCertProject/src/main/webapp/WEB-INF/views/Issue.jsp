<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>온라인 증명서 발급</title>
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
<!-- SweetAlert2 CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />

<!-- Contents -->
<body>
	<div data-aos="fade-down" data-aos-easing="linear"
		data-aos-duration="500">
		<div class="container px-5">
			<div class="row  justify-content-center">
				<div class="col-lg-8 col-xl-7 col-xxl-6">
					<div class="text-center mb-3">
						<h1 class="display-5 fw-bolder mb-4">
							<span class="d-inline LogoGradient-text fs-1">온라인 증명서 발급 <input
								name="patientcode" type="hidden" value="${cert.patientcode}"
								id="patientcode">
							</span>
						</h1>
					</div>
					<div class="card shadow border-0 rounded-4 mb-5">
						<div class="card-body row align-items-center mt-4 pb-4">
							<table class="text-center">
								<tr>
									<th><h4 class="DarkText-gradient fw-bolder mb-4">발급
											가능 증명서</h4></th>
									<th><h4 class="DarkText-gradient fw-bolder mb-4">증명서
											발급</h4></th>
								</tr>
								<tr>
									<td>
										<div
											class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fw-bolder fs-5 Sans">
											진료확인서</div>
									</td>
									<td class="Sans"><a
										class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-4 mb-2 fw-bolder fs-6"
										id="linkGeneral"
										href="javascript:GeneralRequest('${common.id}')">신청</a></td>
								</tr>
								<tr>
									<td>
										<div
											class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fw-bolder fs-5 Sans">
											입·퇴원확인서</div>
									</td>
									<td class="Sans"><a
										class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-4 mb-2 fw-bolder fs-6"
										id="linkInout" href="javascript:InOutRequest('${common.id}')">신청</a></td>
								</tr>
								<tr>
									<td>
										<div
											class="col text-center mb-4 mb-lg-3 p-2 rounded-4 fw-bolder fs-5 Sans">
											수술확인서</div>
									</td>
									<td class="Sans"><a
										class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-4 mb-2 fw-bolder fs-6"
										id="linkSurg" href="javascript:SergRequest('${common.id}')">신청</a></td>
								</tr>
								<tr>
									<td colspan=2 class="Sans pt-3 mb-3"><a
										class="btn-1 bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-4 fw-bolder fs-4 mb-1"
										href="#"> 결제하기 </a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	<!-- SweetAlert2 JS -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script src="resources/js/issueAlert.js"></script>
	<script src="resources/js/issueRequest.js"></script>
</body>
</html>