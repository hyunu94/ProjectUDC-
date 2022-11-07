<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" class="com.project.member.model.MemberService"
	scope="session"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");	

	String userid=request.getParameter("userid");
	
	
	if(userid!=null && !userid.isEmpty()){
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>