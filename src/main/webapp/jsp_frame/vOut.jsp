<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<style type="text/css">
	#userid{
		margin-bottom: 10px;
	}
	#sub1{
		background-color: #f2dede;
		color : #b94a48;
		font-weight: 800;
	}
	#sub1:hover{
		background-color: #e9a2a2;
		color : #b94a48;
		font-weight: 900;
	}
	

</style>
</head>
<body>
	<div class="div0">
		<form name="frm1" action="" method="post" >
			<div class="div1">
				<p class="p1">탈퇴하려면 비밀번호를 입력하세요</p>
				<input type="text" class="input1" id="userid" name="userid" placeholder="아이디(고정된 값으로 설정; 수정불가)" /><br>
				<input type="text" class="input1" id="pwd" name="pwd" placeholder="비밀번호"/>
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class=div3> 
				<input type="submit" value="회원 탈퇴" id="sub1">
			</div>
		</form>
	</div>
</body>
</html>