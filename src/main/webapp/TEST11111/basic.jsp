<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>UDC : URI DONGNE CONSERT</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/gird_mold.css">
<link rel="stylesheet" href="../css/article.css">
<link rel="stylesheet" href="../css/nav.css">
<style type="text/css">
.h_header {
	display: grid;
	grid-template-columns: repeat(3, 33%); /*같은 단위 반복일때 사용*/
	grid-gap: 300px 10px; /*줄간격, 칼럼 간격*/
	text-align: center;
}

.title {
	border-top: 2px solid;
	border-bottom: 8px double;
}

.title span a {
	text-decoration: none;
	font-size: 50px;
	color: black;
}

.navbar-brand {
	padding-top: var(- -bs-navbar-brand-padding-y);
	padding-bottom: var(- -bs-navbar-brand-padding-y);
	margin-left: 5px;
	margin-right: 0.5px;
	font-size: var(- -bs-navbar-brand-font-size);
	color: var(- -bs-navbar-brand-color);
	text-decoration: none;
	white-space: nowrap;
}

a.nav-link.dropdown-toggle, a.nav-link {
	background: #f8f9fa;
}

a.nav-link.dropdown-toggle:hover, a.nav-link:hover, a.nav-link.active:hover
	{
	background: black;
	color: white;
}

button.btn.btn-outline-success {
	color: black;
	border-color: black;
}

button.btn.btn-outline-success:hover {
	color: white;
	background: black;
}

#grid {
	display: grid;
	grid-template-rows: 1fr 1fr;
	grid-template-columns: 1fr 1fr;
	grid-gap: 2vw;
}

article:nth-child(1) {
	grid-column: 1/3;
}

#grid>article {
	font-size: 5vw;
	padding: .5em;
	background: gold;
	text-align: center;
}

a.nav-link.px-2.text-muted:hover {
	background: #f8f9fa;
}
</style>
</head>
<body>
	<div class="grid-container">
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <svg class="bi me-2" width="40" height="32" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="fil: white">
              <path d="M499.1 6.3c8.1 6 12.9 15.6 12.9 25.7v72V368c0 44.2-43 80-96 80s-96-35.8-96-80s43-80 96-80c11.2 0 22 1.6 32 4.6V147L192 223.8V432c0 44.2-43 80-96 80s-96-35.8-96-80s43-80 96-80c11.2 0 22 1.6 32 4.6V200 128c0-14.1 9.3-26.6 22.8-30.7l320-96c9.7-2.9 20.2-1.1 28.3 5z"></path>
            </svg>
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Home</a></li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle show" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true"> BOARD </a>
							<ul class="dropdown-menu show" data-bs-popper="static">
								<li><a class="dropdown-item" href="#">공연정보 게시판</a></li>
								<li><a class="dropdown-item" id="main2" href="#">자유 게시판</a>
									<ul class="main3">
										<li><a href="#">잡담</a></li>
										<li><a href="#">후기</a></li>
										<li><a href="#">질문</a></li>
										<li><a href="#">같이가요</a></li>
									</ul>
								</li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="#">FAQ</a></li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav><header class="h_header">
			<div class="mold"></div>
			<div class="mold">
				<p class="title">
					<span> <a href="#" target="_self" tabindex="0">UDC</a>
					</span>
				</p>
				<p>
					<b>URI DONGNE CONSERT</b>
				</p>
			</div>
			<div class="mold"></div>
		</header>
		
		<section>
			<div id="grid">
				<article>

				</article>
				<article id="3685" class="location-listing">
					<a class="location-title" href="#"> San Francisco </a>
					<div class="location-image">
						<a href="#"> <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/san-fransisco-768x432.jpg" alt="san francisco">
						</a>
					</div>
				</article>
				<article id="3688" class="location-listing">
					<a class="location-title" href="#"> London </a>
					<div class="location-image">
						<a href="#"> <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/london-768x432.jpg" alt="london">
						</a>
					</div>
				</article>
				<article id="3691" class="location-listing">
					<a class="location-title" href="#"> New York </a>
					<div class="location-image">
						<a href="#"> <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/new-york-768x432.jpg" alt="new york">
						</a>
					</div>
				</article>
				<article id="3694" class="location-listing">
					<a class="location-title" href="#"> Cape Town </a>
					<div class="location-image">
						<a href="#"> <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/cape-town-768x432.jpg" alt="cape town">
						</a>
					</div>
				</article>
				<article id="3697" class="location-listing">
					<a class="location-title" href="#"> Beijing </a>
					<div class="location-image">
						<a href="#"> <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/beijing-768x432.jpg" alt="beijing">
						</a>
					</div>
				</article>
				<article id="3700" class="location-listing">
					<a class="location-title" href="#"> Paris </a>
					<div class="location-image">
						<a href="#"> <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/paris-768x432.jpg" alt="paris">
						</a>
					</div>
				</article>
			</div>

		</section>
		
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
			</ul>
			<p class="text-center text-muted">© 2022 Company, Inc</p>
		</footer>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>