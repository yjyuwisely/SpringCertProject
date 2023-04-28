<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<% request.setCharacterEncoding("utf-8");%>
<meta charset="utf-8" />
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>온라인 증명서 발급</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font -->
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
</head>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-white">
  <div class="container px-5">
    <a class="navbar-brand fs-6 px-3 GreenText-gradient" href="/"><span
      class="fw-bolder">ULSAN GREEN <br>HOSPITAL
    </span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse Sans" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder px-5">
        <li class="nav-item"><a class="nav-link">진료예약</a></li>
        <li class="nav-item"><a class="nav-link">건강정보</a></li>
        <li class="nav-item"><a class="nav-link">진료파트</a></li>
        <li class="nav-item"><a class="nav-link">나눔소통</a></li>
        <li class="nav-item"><a class="nav-link">병원안내</a></li>
        <li class="nav-item"><a href="LogIn"><button
              class="badge bg-gradient-primary-to-secondary text-white mt-2 mx-2"
              style="border: none;">로그인</button></a></li>
        <li class="nav-item"><a href="SignUp"><button
              class="nav-link badge bg-gradient-primary-to-secondary text-white mt-2 mx-2"
              style="border: none;">회원가입</button></a></li>
      </ul>
    </div>
  </div>
</nav>
<header> </header>

<body>
  <!--  class="mainBg" -->
  <main> <!-- Page Content-->
  <div class="container px-5">
    <div class="text-center">
      <h1 class="display-5 fw-bolder mb-0">
        <span class="text-gradient d-inline">입퇴원 확인서</span>
      </h1>
  
    <div class="row gx-5 justify-content-center">
      <!--       <div class="col-lg-11 col-xl-9 col-xxl-8"> -->
      <!--      <div class="card shadow border-0 rounded-4 mb-5"> -->
      <div class="card-body p-5 row align-items-center ">
        <table class="text-center">
        <div class="A4">
        
 
    <h1>입퇴원 확인서</h1>
    <div class="table 3">
    <table class="table2">
      <tr>
        <th>환자이름</th>
        <td>홍길동</td>
        <th>주민등록번호</th>
        <td>123456-1234567</td>
      </tr>
      <tr>
        <th>상병명 코드</th>
        <td>A00.1</td>
        <th>병명</th>
        <td>콜레라</td>
      </tr>
    
      <tr> 
        <th>입원날짜</th>
        <td>2023-04-15</td>
        <th>퇴원날짜</th>
        <td>2023-04-20</td>
      </tr>
    </table>
      
      <div class="disclaimer-center">
        <p class="disclaimer">환자 ㅇㅇ는 입원을 ㅇㅇ일에 해서 퇴원을 ㅇㅇ일에 함을 확인함. </p>
      </div>
      
        <div class="hospitalization and discharge-center">
        <p class="hospitalization and discharge"> ULSAN GREEN HOSPITAL 병원장 </p>
      </div>

        <div class="Sans row justify-content-center">
          <a
            class="bg-gradient-primary-to-secondary btn btn-primary d-inline-block col-lg-3 fw-bolder fs-5 mt-5"
            href="Download"> 저장하기 </a>
         </div>
      </div>
    </div>
    <!--    </div> -->
    <!--     </div> -->
  </div>
      </div>
          </div>
      </div>
  </main>

  <!-- Bootstrap core JS-->
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
</body>
</html>