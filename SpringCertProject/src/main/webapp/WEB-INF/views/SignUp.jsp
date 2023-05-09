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
<title>회원가입</title>
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
	<div data-aos="fade-right" data-aos-offset="300"
		data-aos-easing="ease-in-sine">
		<div class="container px-5 justify-content-center">
			<div class="row gx-5 justify-content-center">
				<div
					class="card shadow rounded-4 border-0 col-sm-8 col-md-6 col-lg-5 px-4 pt-4 pb-1 mb-5">
					<form id="needs-validation" action="memberJoin" method="post"
						novalidate>
						<div class="text-left mb-4">
							<h1 class="fw-bolder">
								<span class="d-inline LogoGradient-text fs-1">회원 가입</span>
							</h1>
						</div>
						<!-- 1. 이메일 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="email" id="email" type="email"
								onchange="checkEmail(this)" placeholder="이메일" /> <label
								for="email">이메일</label> <span id="emailMsg"></span>
						</div>

						<!-- 2. 비밀번호 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="password" id="password"
								placeholder="비밀번호" type="password" required
								pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
								onchange="validatePassword()" />
							<!-- pattern="^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}" -->
							<label for="password">비밀번호 (영문 숫자 특수문자 조합, 8자리 이상)</label>
							<!-- <span
								style="color: #dc3545; font-size: 0.9rem;" id="msgPassword"></span> -->
							<div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">영문자, 숫자, 특수기호 조합으로 8자 이상
								입력하세요.</div>
						</div>

						<!-- 3. 비밀번호 확인 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="passCk" id="passCk"
								placeholder="비밀번호 확인" type="password" required
								onchange="pwVerifiedCheck()" /> <label for="password">비밀번호
								확인</label>
							<!-- <div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div> -->
							<span style="font-size: 0.9rem;" id="msgPassCk"></span>
						</div>

						<!-- 4. 이름 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="name" id="name"
								placeholder="이름" type="text" required pattern="^[가-힣]{2,5}$"
								onkeyup="validateName()"> <label for="name">이름</label>
							<div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">한글 2~5자 이내로 입력하세요.</div>
						</div>

						<!-- 5. 주민등록번호 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="residentid" id="residentid"
								placeholder="주민등록번호" type="text" required
								pattern="\d{6}[1-4]\d{6}" onkeyup="validateResidentid()" /> <label
								for="residentid">주민등록번호 (숫자만 입력)</label>
							<div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">특수 문자를 제외한 숫자로만 입력해 주세요.</div>
						</div>

						<!-- 6. 전화번호 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="phone" id="phone"
								placeholder="전화번호" type="text" required
								pattern="^\d{3}?\d{3,4}?\d{4}$" onkeyup="validatePhone()" />
							<!-- pattern="01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$" -->
							<label for="phone">휴대폰 번호 (숫자만 입력)</label>
							<div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">특수 문자를 제외한 숫자로만 입력해 주세요.</div>
						</div>
						<!-- Submit Button-->
						<div class="Sans text-center pt-2 mb-4">
							<input type="submit" value="가입 완료"
								class="btn-1 bg-gradient-primary-to-secondary btn btn-primary btn-lg fs-4 fw-bolder d-inline-block col-12">
							<c:if test="${not empty errorMessage}">
								<div role="alert">${errorMessage}</div>
							</c:if>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/checkEmail.js"></script>
	<script src="resources/js/SignUp.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
</body>
</html>
