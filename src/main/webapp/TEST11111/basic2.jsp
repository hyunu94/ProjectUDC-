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
<link rel="stylesheet" href="../css/grid_mold.css">
<link rel="stylesheet" href="../css/nav.css">
<link rel="stylesheet" href="../css/article.css">
<style>
header {
	display: grid;
	grid-template-columns: repeat(3, 33%); /*같은 단위 반복일때 사용*/
	grid-gap: 300px 10px; /*줄간격, 칼럼 간격*/
	text-align: center;
	margin-top: 15px;
}

}
.sticky {
	position: sticky;
	top: 0;
	z-index: 1;
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
</style>
<body>
	<div class="mycontainer">
		<div class="sticky">
			<nav class="navbar navbar-expand-lg bg-light">
				<div id="menu">
					<ul class="main1">
						<li><a href="#">Home</a></li>
						<li style="border: none;"><a href="#"><b
								style="font-size: 20px;">BOARD</b></a>
							<ul class="main2">
								<li><a href="#">공연 정보</a></li>
								<li><a href="#">커뮤니티</a>
									<ul class="main3">
										<li><a href="#">잡담</a></li>
										<li><a href="#">후기</a></li>
										<li><a href="#">질문</a></li>
										<li><a href="#">같이가요</a></li>
									</ul></li>
							</ul></li>
						<li><a href="#">FAQ</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div id="outer-grid">
			<div>
				<header>
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
			</div>
			<div id="inner-grid">
				<div>map</div>
				<div>
					<article id="3700" class="location-listing">
						<a class="location-title" href="#"> Paris </a>
						<div class="location-image">
							<a href="#"> <img width="300" height="169"
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/paris-768x432.jpg"
								alt="paris">
							</a>
						</div>
					</article>
				</div>
				<div>
					<article id="3697" class="location-listing">
						<a class="location-title" href="#"> Beijing </a>
						<div class="location-image">
							<a href="#"> <img width="300" height="169"
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/beijing-768x432.jpg"
								alt="beijing">
							</a>
						</div>
					</article>
				</div>
				<div>
					<article id="3694" class="location-listing">
						<a class="location-title" href="#"> Cape Town </a>
						<div class="location-image">
							<a href="#"> <img width="300" height="169"
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/cape-town-768x432.jpg"
								alt="cape town">
							</a>
						</div>
					</article>
				</div>
				<div>
					<article id="3691" class="location-listing">
						<a class="location-title" href="#"> New York </a>
						<div class="location-image">
							<a href="#"> <img width="300" height="169"
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/new-york-768x432.jpg"
								alt="new york">
							</a>
						</div>
					</article>
				</div>
			</div>
		</div>
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Home</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Features</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Pricing</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">FAQs</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">About</a></li>
			</ul>
			<p class="text-center text-muted">&copy 2022 Company, Inc</p>
		</footer>
	</div>
</body>
</html>