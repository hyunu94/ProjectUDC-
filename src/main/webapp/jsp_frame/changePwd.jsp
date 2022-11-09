<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<%

%>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
</head>
<body>
	<div class="div0">
		<h3>비밀번호 변경</h3>
		<form name="frm1" action="" method="post">
			<div class="div1">
				<p class="p1">아이디</p>
				<input type="text" class="input1" id="userid" name="userid"
					placeholder="아이디(고정된 값으로 설정; 수정불가)" /><br>
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class="div1">
				<p class="p1">현재 비밀번호</p>
				<input type="text" class="input1" id="currentPwd" name="currentPwd"
					placeholder="현재 비밀번호" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">새 비밀번호</p>
				<input type="text" class="input1" id="newPwd" name="newPwd"
					placeholder="새 비밀번호" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">새 비밀번호 확인</p>
				<input type="text" class="input1" id="newPwdConfirm"
					name="newPwdConfirm" placeholder="새 비밀번호 확인" />
				<p class="p2"></p>
			</div>
			<div class=div3>
				<input type="submit" value="등록" id="sub1">
			</div>
		</form>
	</div>
	<!-- content -->
	<%@ include file="../inc/smallBottom.jsp"%>