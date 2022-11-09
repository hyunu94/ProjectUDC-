<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String t_userid=(String)session.getAttribute("userid");
	boolean t_login = false;
	
	if(t_userid!=null && !t_userid.isEmpty()){ //세션에 값이 있으면 로그인된 상태
		t_login = true;
	}
%>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap')
	;
</style>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>UDC:우리동네콘서트</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/blog/">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap')
	;

body {
	font-family: "Noto Sans KR", sans-serif !important; /* 폰트적용 */
	min-width: 475px; /*최소 화면 넓이*/
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

a.navbar-brand {
	font-size: 22pt;
	font-weight: 800;
}

.section {
	margin-top: 10px;
	margin-bottom: 10px;
    min-height: 900px;
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
				<a class="navbar-brand" href="../jsp/index.jsp">UDC</a>
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
						aria-current="page" href="../jsp/index.jsp">&nbsp;HOME</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../jsp/cList.jsp">&nbsp;공연정보</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="../jsp/nList.jsp"
						data-bs-toggle="dropdown" aria-expanded="false">&nbsp;커뮤니티</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" id="dropdown"
								href="../jsp/nList.jsp">전체</a>
							<li><a class="dropdown-item" id="dropdown"
								href="../jsp/nList.jsp">후기</a>
							<li><a class="dropdown-item" id="dropdown"
								href="../jsp/nList.jsp">잡담</a>
							<li><a class="dropdown-item" id="dropdown"
								href="../jsp/nList.jsp">같이 가요</a>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="../jsp/FAQ.jsp">&nbsp;FAQ</a></li>
				</ul>
			</div>
			<!-- 검색, 로그인, 회원가입 버튼 -->
			<div>
				<form role="search">
				<%if(t_login){ %>
					<button type="button" class="btn btn-outline-light me-2"
						onclick="location.href='../login/logout.jsp'">Logout</button>
					<button type="button" class="btn btn-outline-light me-2"
						onclick="location.href='../jsp/info.jsp'">My Page</button>
				<%}else{ %>
					<button type="button" class="btn btn-outline-light me-2"
						onclick="location.href='../login/login.jsp'">Login</button>
					<button type="button" class="btn btn-outline-light me-2"
						onclick="location.href='../jsp/agreement.jsp'">Sign up</button>
				<%} %>
				</form>
			</div>
		</div>
	</nav>
	<!-- /nav -->
	<section class="section">
		<article>