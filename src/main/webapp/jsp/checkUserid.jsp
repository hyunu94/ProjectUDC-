<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<title>아이디 중복 확인</title>
<%
request.setCharacterEncoding("utf-8");

String userid = request.getParameter("userid");

int result = 0;
if (userid != null && !userid.isEmpty()) {
	try {
		result = memberService.duplicateUserid(userid);
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
%>
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#idck').click(function(){
			if (!validate_userid($('#userid').val())) {
				alert('아이디는 영문, 숫자, _(밑줄문자)만 가능합니다.');
				$('#userid').focus();
				event.preventDefault();
			}
		});
		
		$('#btUse').click(function(){
			
			$(opener.document).find('#userid').val("<%=userid%>");
			$(opener.document).find("#chkId").val("Y");

			self.close();
		});

		//아이디 영문, 숫자, 특수문자(_)만 가능
		function validate_userid(id) {
			var pattern = new RegExp(/^[a-zA-Z0-9_]+$/g);
			return pattern.test(id);

		}
	});
</script>
<div class="mini_body">
	<form name="frmUserid" method="post" action="checkUserid.jsp">
		<label for="userid">아이디 : </label>
		<input type="text" name="userid" id="userid" size="17" value="<%=userid%>">
		<input type="submit" value="중복확인" id="idck">

		<%
		if (result == MemberService.EXIST_ID) {
		%>
		<p>이미 등록된 아이디입니다. 다른 아이디를 입력하세요</p>
		<%
		} else if (result == MemberService.NON_EXIST_ID) {
		%>
		<input type="button" value="사용하기" id="btUse">
		<p>사용가능한 아이디입니다. [사용하기]버튼을 클릭하세요</p>
		<%
		}
		%>
	</form>
</div>
<!-- content -->
<%@ include file="../inc/smallBottom.jsp"%>