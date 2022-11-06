<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
</head>
<body>
	<h3>비밀번호 변경</h3>
	<div class="div0">
		<form name="frm1" action="" method="post" >
			<div class="div1">
				<p class="p1">아이디</p>
				<input type="text" class="input1" id="userid" name="userid" /><br>
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class="div1">
				<p class="p1">현재 비밀번호</p>
				<input type="text" class="input1" id="currentPwd" name="currentPwd" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">새 비밀번호</p>
				<input type="text" class="input1" id="newPwd" name="newPwd" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">새 비밀번호 확인</p>
				<input type="text" class="input1" id="newPwdConfirm" name="newPwdConfirm" />
				<p class="p2"></p>
			</div>
			<div class=div3> 
				<input type="submit" value="등록" id="sub1">
			</div>
		</form>
	</div>
</body>
</html>