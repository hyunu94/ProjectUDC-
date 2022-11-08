<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link rel="stylesheet" href="../css/board.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap')
	;

.body {
	width: 450px;
	margin: 0 auto;
}

.nick_bar h2 {
	padding: 2% 1% 0 2%;
	margin-bottom: 15px;
	font-weight: 600;
}

.nav_udc {
	margin: 0 auto;
}

.nick_mold {
	border: 1px solid lightgray;
	margin-top: 5%;
}

.nick_tb {
	width: -webkit-fill-available;
}

.nick_tb {
	text-align: center;
}

input[type="text"] {
	width: 80%;
}

tfoot td {
	padding: 10px;
}

button.nick_btn, button.nick_close {
	background: white;
	border: 2px solid #212529;
	border-radius: 0.5em;
}

button.nick_btn:hover, button.nick_close:hover {
	background: #212529;
	border: 2px solid #ffffff;
	border-radius: 0.5em;
	color: white;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="nav_udc">
			<a class="navbar-brand" href="#">UDC</a>
		</div>
	</nav>