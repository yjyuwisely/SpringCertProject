<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.obj.model.MemberVO"%>
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
<title>울산 그린 병원</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet" />
<!-- SweetAlert2 CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
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
<body class="d-flex flex-column h-100 flex-shrink-0 BgImage">
	<div data-aos="fade-right">
		<div class="container p-5">
			<div class="row gx-5 align-items-center">
				<div class="col-xxl-7 mx-3 mt-3">
					<h1 class="fw-bolder mb-4">
						<span class="text-gradient d-inline">증명서 인터넷 발급</span>
					</h1>
					<p class="lead rounded text-dark fs-4 fw-light mb-3"
						style="text-shadow: 1px 1px 1px white; background-color: rgba(255, 255, 255, 0.5);">
						인터넷을 사용하여 언제, 어디서든 증명서를 발급받을 수 있으며, 즉시 출력 또는 다운로드할 수 있습니다.</p>
					<div
						class="InternetIssue gap-3 d-sm-flex Sans justify-content-sm-center me-5">
						<c:choose>
							<c:when test="${empty common.id and empty adminUser.id}">
								<a href="#"
									class="InternetIssue bg-gradient-primary-to-secondary btn btn-lg fs-4 fw-bolder"
									onclick="logFirst()"><span></span> <span></span> <span></span>
									<span></span>인터넷 발급 바로가기</a>
							</c:when>
							<c:when test="${not empty adminUser.id}">
								<a href="#"
									class="bg-gradient-primary-to-secondary btn btn-lg fs-4 fw-bolder"
									onclick="dontDirector()">인터넷 발급 바로가기</a>
							</c:when>
							<c:otherwise>
								<a href="javascript:movingToIssue('${common.id}')"
									class="InternetIssue bg-gradient-primary-to-secondary btn btn-lg fs-4 fw-bolder">
									<span></span> <span></span> <span></span> <span></span>인터넷 발급
									바로가기
								</a>
							</c:otherwise>
						</c:choose>
						<a href="/geo/departmentMap"
								class="InternetIssue bg-gradient-primary-to-secondary btn btn-lg fs-4 fw-bolder">
								<span></span> <span></span> <span></span>
								<span></span>병원 진료과 찾기</a>
						<c:if test="${not empty adminUser.id}">
							<a href="Admin"
								class="InternetIssue bg-gradient-primary-to-secondary btn btn-lg fs-4 fw-bolder">
								<span></span> <span></span> <span></span> <span></span>관리자페이지
							</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script src="resources/js/etc.js"></script>
	<script src="resources/js/issueRequest.js"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
</body>
</html>