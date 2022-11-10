<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO"
	scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String userid = (String)session.getAttribute("userid");
	String pdw = request.getParameter("pwd");
	
	int memberNo = 0; 
	
	memberVo = memberService.selectByUserid(userid);
	memberNo = memberVo.getMemberNo();
	
	String msg = "회원 탈퇴 실패...", url = "Out.jsp";
	try {
		int cnt = memberService.updateDel(memberNo);
		
		if(cnt>0) {
			msg = "회원 탈퇴 되었습니다.";
			url="../js/close.jsp";
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>