<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h3>정보를 입력해 주세요.</h3>
<form id = "regist" method="post" action="join_ok.jsp">
	<div class = "first_regi">
		<strong class = "text_regi">회원 유형</strong>
	</div>
	<div class = "second_regi">
		일반 회원<input type="radio" name="kind" value="1">
		기업 회원<input type="radio" name="kind" value="2">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">아이디</strong>
	</div>
	<div class = "second_regi">
		<input id="userid" type="text" name="userid">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">비밀번호</strong>
	</div>
	<div class = "second_regi">
		 <input id="pwd" type="text" name="pwd">
	</div>
	<div class = "first_regi">
		<strong class = "text_regi">비밀번호 확인</strong>
	</div>
	<div class = "second_regi">
		 <input id="pwd2" type="text" name="pwd2">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">이름</strong>
	</div>
	<div class = "second_regi">
		<input id="name" type="text" name="name">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">닉네임</strong>
	</div>
	<div class = "second_regi">
		<input id="nick" type="text" name="nick">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">주민번호</strong>
	</div>
	<div class = "second_regi">
		<span>
		<input id="jumin1" type="text" name="jumin1"> -
		<input id="jumin2" type="text" name="jumin2"> 		
		</span>		
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">핸드폰번호</strong>
	</div>
	<div class = "second_regi">
		<span>
		<select id = "mobile1" class="mobile" name="mobile1">
			<option>010</option>
			<option>011</option>
			<option>017</option>
		</select>
		- <input class = "mobile" id="mobile2" type="text" name="mobile2"> 
		- <input class = "mobile" id="mobile3" type="text" name="mobile3"> 		
		</span>		
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class="multi_radio1">
		<strong class = "text_regi">관심지역</strong>	
	</div>
	<div class="multi_radio2">
		강남구<input type="radio" name="locationNo" value="1">
		서대문구<input type="radio" name="locationNo" value="2">
		중구<input type="radio" name="locationNo" value="3">
		종로구<input type="radio" name="locationNo" value="4">
		은평구<input type="radio" name="locationNo" value="5">
		모르구<input type="radio" name="locationNo" value="6">	
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class="multi_radio1">
	</div>
	<div class="multi_radio2">
		<input type="submit" value="가입 완료">
	</div>
</form>
</body>
</html>