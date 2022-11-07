<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<title>회원정보 확인</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<style type="text/css">
	#userid{
		margin-bottom: 10px;
	}
</style>
<div class="body">
	<div class="div0">
		<form name="frm1" action="" method="post" >
			<div class="div1">
				<p class="p1">회원의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.</p>
				<input type="text" class="input1" id="userid" name="userid" placeholder="아이디(고정된 값으로 설정; 수정불가)" /><br>
				<input type="text" class="input1" id="pwd" name="pwd" placeholder="비밀번호"/>
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class=div3> 
				<input type="submit" value="확인" id="sub1">
			</div>
		</form>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>