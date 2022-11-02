<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/grid">
<style type="text/css">
body {
	width: 1000px;
	margin: 0 auto;
}

.mold1 {
	margin-top: 20px;
}

.mold3 {
	width: 300px;
	margin: 0 auto;
}

.title {
	text-align: center;
	line-height: normal;
	font-size: 61px;
	text-decoration: none;
	border-top: 2px solid;
	border-bottom: 8px double;
	margin-bottom: 0px;
}

.title span {
	letter-spacing: normal;
}

.title span a {
	text-decoration: none;
	color: black;
}

a.nav-link.active:hover, a.nav-link.dropdown-toggle:hover, a.nav-link:hover
	{
	background: black;
	border-radius: 0.5em;
	color: white;
}

a.nav-link.active, a.nav-link.dropdown-toggle, a.nav-link {
	background-color: #f8f9fa;
	border-radius: 0.5em;
}

button.btn.btn-outline-success {
	color: black;
	border-color: black;
}

button.btn.btn-outline-success:hover {
	color: white;
	background: black;
}

img.imgsize:hover {
	opacity: 50%;
}

p {
	text-align: center;
}

.mold4 {
	width: 800px;
	margin: 0 auto;
	text-align: center;
}

.h_ul li {
	list-style-type: none;
	margin-left: 10px;
	margin-right: 10px;
	float: left;
}

img.img-fluid {
	margin: 30px;
	width: 800px;
	height: 500px;
}

div#carouselExampleIndicators {
	width: 800px;
	margin: 0 auto;
}

img.imgsize {
	width: 250px;
	height: 200px;
}
</style>
</head>
<body>
<body>
	<div class="mold1">
		<div class="mold2">
			<header class="h_header">
				<div class="mold3">
					<p class="title">
						<span> <a href="#" target="_self" tabindex="0">UDC</a>
						</span>
					</p>
					<p>
						<b>URI DONGNE CONSERT</b>
					</p>
				</div>
			</header>
			<!-- header -->
			<nav class="navbar navbar-expand-lg bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Navbar</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">Action</a></li>
									<li><a class="dropdown-item" href="#">Another action</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="#">Something else
											here</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link disabled">Disabled</a>
							</li>
						</ul>
						<form class="d-flex" role="search">
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</div>
				</div>
			</nav>
			<!-- nav -->
			<section>
				<article>
					<div class="text-center">
						<jsp:include page="../api/XY3.jsp"></jsp:include>
					</div>
				</article>
				<article>
					<div class="container text-center">
						<div class="row">
							<div class="col-sm">
								<img class="imgsize" src="../img/mountains1.jpg">
							</div>
							<div class="col-sm">
								<img class="imgsize" src="../img/mountains2.jpg">
							</div>
							<div class="col-sm">
								<img class="imgsize" src="../img/mountains3.jpg">
							</div>
						</div>
						<div class="row">
							<div class="col-sm">
								<img class="imgsize" src="../img/mountains3.jpg">
							</div>
							<div class="col-sm">
								<img class="imgsize" src="../img/mountains2.jpg">
							</div>
							<div class="col-sm">
								<img class="imgsize" src="../img/mountains1.jpg">
							</div>
						</div>
					</div>
				</article>
			</section>
			<!-- session -->
			<div class="container">
				<footer
					class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
					<p class="col-md-4 mb-0 text-muted">© 2022 Company, Inc</p>

					<a href="/"
						class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
						<svg class="bi me-2" width="40" height="32">
							<use xlink:href="#bootstrap"></use></svg>
					</a>

					<ul class="nav col-md-4 justify-content-end">
						<li class="nav-item"><a href="#"
							class="nav-link px-2 text-muted">Home</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link px-2 text-muted">board</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link px-2 text-muted">FAQs</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link px-2 text-muted">About</a></li>
					</ul>
				</footer>
			</div>
			<!-- footer -->
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>