<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>UDC : Uri Dle Concert</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/blog/">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
body {
	font-family: "Noto Sans KR", sans-serif !important; /* 폰트적용 */
}

/* .p-4.p-md-5.mb-4.rounded.text-bg-dark {
	margin-top: 25px;
} 이게 뭐더라 */
nav.navbar.navbar-expand-lg.navbar-dark.bg-dark {
	position: sticky;
	top: 0%;
	right: 0%;
	left: 0%;
	z-index: 12; /*nav postion stick 상단바 고정*/
}

form[role=search] {
    margin-bottom: 0px;
}

</style>
<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- nav -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		aria-label="Ninth navbar example">
		<div class="container-xl">
			<!-- UDC (reload) 아이콘 -->
			<div>
				<a class="navbar-brand" href="#">UDC</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarsExample07XL"
					aria-controls="navbarsExample07XL" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>

			<!-- 메뉴 -->
			<div class="collapse navbar-collapse" id="navbarsExample07XL">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">공연 정보</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">질문</a></li>
							<li><a class="dropdown-item" id="dropdown" href="#">후기</a>
							<li><a class="dropdown-item" id="dropdown" href="#">잡담</a>
							<li><a class="dropdown-item" id="dropdown" href="#">같이
									가요</a>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#">FAQ</a></li>
				</ul>
			</div>
			<!-- 검색, 로그인, 회원가입 버튼 -->
			<div>
				<form role="search">
					<button type="button" class="btn btn-outline-light me-2">Login</button>
					<button type="button" class="btn btn-outline-light me-2">Sign
						up</button>
				</form>
			</div>
		</div>
	</nav>
	<!-- /nav -->