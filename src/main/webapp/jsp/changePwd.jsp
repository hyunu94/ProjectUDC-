<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO"
	scope="page"></jsp:useBean>	
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<title>비밀번호 변경</title>

<%
	request.setCharacterEncoding("UTF-8");

	String userid = (String)session.getAttribute("userid");
	
	memberVo = memberService.selectByUserid(userid);
	
	
%>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#currentPwd').focus();

		$('#sub1').click(function() {
					if ($('#currentPwd').val().length < 1) {
						alert('현재 비밀번호를 입력하세요');
						$('#currentPwd').focus();
						event.preventDefault();
					} else if (($('#currentPwd').val()) != '<%=memberVo.getPwd()%>') {
						alert('비밀번호가 일치하지 않습니다');
						$('#currentPwd').focus();
						event.preventDefault();
					} else if ($('#newPwd').val().length < 1) {
						alert('변경할 비밀번호를 입력하세요');
						$('#newPwd').focus();
						event.preventDefault();
					} else if ($('#newPwd').val() != $('#newPwdConfirm').val()) {
						alert('변경할 비밀번호가 일치하지 않습니다.');
						$('#newPwdConfirm').focus();
						event.preventDefault();
					}
		});
	});

</script>
<div class="body">
	<div class="div0">
		<h3>비밀번호 변경</h3>
		<form name="frm1" action="changePwd_ok.jsp" method="post" >
			<div class="div1">
				<p class="p1">아이디</p>
				<input type="text" class="input1" id="userid" name="userid"
				 placeholder="<%=userid %>" style="font-size:18px;" disabled/><br>
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class="div1">
				<p class="p1">현재 비밀번호</p>
				<input type="text" class="input1" id="currentPwd" name="currentPwd" placeholder="현재 비밀번호" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">새 비밀번호</p>
				<input type="text" class="input1" id="newPwd" name="newPwd" placeholder="새 비밀번호"/>
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">새 비밀번호 확인</p>
				<input type="text" class="input1" id="newPwdConfirm" name="newPwdConfirm" placeholder="새 비밀번호 확인"/>
				<p class="p2"></p>
			</div>
			<div class=div3> 
				<input type="submit" value="등록" id="sub1">
			</div>
		</form>
	</div>
</div>
<%@ include file="../inc/smallBottom.jsp"%>