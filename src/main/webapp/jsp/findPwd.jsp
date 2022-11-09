<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="body">
		<h2>아이디로 비밀번호 찾기</h2>
		<form name="frmPwd" method="post" action="findPwd.jsp">
	<label for="userid">아이디 : </label>
	<input type="text" name="userid" id="userid" size="17">
	<input type="submit" value="비밀번호 찾기" id="pwdck"> 
</form> 
	</div>
</body>
</html>