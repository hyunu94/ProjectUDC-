<%@page import="java.util.Scanner"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../login/checkLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="memberService" class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO" scope="page"></jsp:useBean>
<%
	String userid=(String)session.getAttribute("userid");
	request.setCharacterEncoding("utf-8");

	String pwd=request.getParameter("pwd");
	String name=request.getParameter("name");
	String nick=request.getParameter("nick");
	String mobile=request.getParameter("mobile");
	

		memberVo.setUserid(userid);
		memberVo.setName(name);
		memberVo.setPwd(pwd);
		memberVo.setNick(nick);
		memberVo.setMobile(mobile);
		
		
	try{
		int cnt = memberService.updateMember(memberVo);
		
		if(cnt>0){%>
			<script type="text/javascript">
				alert('회원정보 수정 완료');
				location.href="";
			</script>
			
		<% }else{%>
				<script type="text/javascript">
				alert('회원정보 수정 실패');
				location.href="editmem.jsp";
			</script>
		<% }
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
</body>
</html>