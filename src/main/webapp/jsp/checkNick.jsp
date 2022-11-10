<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<title>닉네임 중복 확인</title>
<%
	request.setCharacterEncoding("utf-8");

	String nick = request.getParameter("nick");
	
	int result=0;
	if(nick!=null && !nick.isEmpty()){
		try{
			result=memberService.duplicateNick(nick);
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
%>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#nickck').click(function(){
			if (!validate_nick($('#nick').val())) {
				alert('닉네임은 영문, 한글만 가능합니다.');
				$('#nick').focus();
				event.preventDefault();
			}
		});
		
	$('#btUse').click(function(){
				
			$(opener.document).find('#nick').val("<%=nick%>");
			$(opener.document).find("#chNick").val("Y");
			
			self.close();
		});
		
	});
	
	//닉네임 영문, 한글만 가능
	function validate_nick(nick) {
		var pattern = new RegExp(/^[a-zA-Zㄱ-ㅎ가-힣]+$/g);
		return pattern.test(nick);
	}
</script>
<style type="text/css">

</style>
<div class="mini_body">
	<form name="frmNick" method="post" action="checkNick.jsp">
		<label for="nick">닉네임 : </label> 
		<input type="text" name="nick" id="nick" size="17" value="<%=nick%>"> 
		<input type="submit" value="중복확인" id="nickck">

		<%if(result==MemberService.EXIST_ID){ %>
		<p>이미 등록된 닉네임입니다. 다른 닉네임을 입력하세요</p>
		<%}else if(result==MemberService.NON_EXIST_ID){ %>
		<input type="button" value="사용하기" id="btUse">
		<p>사용가능한 닉네임입니다. [사용하기]버튼을 클릭하세요</p>
		<%} %>
	</form>
</div>
<!-- content -->
<%@ include file="../inc/smallBottom.jsp"%>