<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>UDC : Uri Dle Concert</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/blog/">
<link rel="stylesheet" href="../css/card.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>

<style>
.p-4.p-md-5.mb-4.rounded.text-bg-dark {
	margin-top: 25px;
}

nav.navbar.navbar-expand-lg.navbar-dark.bg-dark {
	position: sticky;
	top: 0%;
	right: 0%;
	left: 0%;
	z-index: 2;
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
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		aria-label="Ninth navbar example">
		<div class="container-xl">
			<div>
				<a class="navbar-brand" href="#">UDC</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarsExample07XL"
					aria-controls="navbarsExample07XL" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
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
			<div>
				<form role="search">
					<button type="button" class="btn btn-outline-light me-2">Login</button>
					<button type="button" class="btn btn-outline-light me-2">Sign
						up</button>
				</form>
			</div>
		</div>
	</nav>
	<div class="container">
		<main class="container">
			<div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
				<div class="col-md-6 px-0">
				<%@ include file="../api/main.jsp" %>
				</div>
			</div>

			<div class="row mb-2">
				<div class="col-md-6">
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="card">
							<div class="bg-pic">
								<img src="../img/slidetest.jpg" alt="" aria-hidden="true">
							</div>
							<div class="inner">
								<div class="header">
									<!-- <div class="prix">JOHN MAYER</div> -->
								</div>
								<div class="content">
									<ul>
										<li class="title" style="font-weight: 800;">UDC
											SuperConcert#001 JOHN MAYER!</li>
										<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
										<li>존 메이어, 8년만에 다시 내한!</li>
										<li>올 겨울 크리스마스를 준비하세요!</li>
									</ul>
								</div>
								<div class="footer">
									<span class="prix">JOHN MAYER<span class="unit">
											<!-- &euro; -->
									</span></span>
									<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="card">
							<div class="bg-pic">
								<img src="../img/slidetest.jpg" alt="" aria-hidden="true">
							</div>
							<div class="inner">
								<div class="header">
									<!-- <div class="prix">JOHN MAYER</div> -->
								</div>
								<div class="content">
									<ul>
										<li class="title" style="font-weight: 800;">UDC
											SuperConcert#001 JOHN MAYER!</li>
										<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
										<li>존 메이어, 8년만에 다시 내한!</li>
										<li>올 겨울 크리스마스를 준비하세요!</li>
									</ul>
								</div>
								<div class="footer">
									<span class="prix">JOHN MAYER<span class="unit">
											<!-- &euro; -->
									</span></span>
									<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="card">
							<div class="bg-pic">
								<img src="../img/slidetest.jpg" alt="" aria-hidden="true">
							</div>
							<div class="inner">
								<div class="header">
									<!-- <div class="prix">JOHN MAYER</div> -->
								</div>
								<div class="content">
									<ul>
										<li class="title" style="font-weight: 800;">UDC
											SuperConcert#001 JOHN MAYER!</li>
										<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
										<li>존 메이어, 8년만에 다시 내한!</li>
										<li>올 겨울 크리스마스를 준비하세요!</li>
									</ul>
								</div>
								<div class="footer">
									<span class="prix">JOHN MAYER<span class="unit">
											<!-- &euro; -->
									</span></span>
									<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="card">
							<div class="bg-pic">
								<img src="../img/slidetest.jpg" alt="" aria-hidden="true">
							</div>

							<div class="inner">
								<div class="header">
									<!-- <div class="prix">JOHN MAYER</div> -->
								</div>
								<div class="content">
									<ul>
										<li class="title" style="font-weight: 800;">UDC
											SuperConcert#001 JOHN MAYER!</li>
										<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
										<li>존 메이어, 8년만에 다시 내한!</li>
										<li>올 겨울 크리스마스를 준비하세요!</li>
									</ul>
								</div>
								<div class="footer">
									<span class="prix">JOHN MAYER<span class="unit">
											<!-- &euro; -->
									</span></span>
									<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Home</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">공연 정보</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">커뮤니티</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">FAQs</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">About</a></li>
		</ul>
		<p class="text-center text-muted">&copy 2022 Company, Inc</p>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
		integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
		crossorigin="anonymous"></script>
</body>
</html>
