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
	String pwd = request.getParameter("newPwd");
	int memberNo = 0;
	
	memberVo = memberService.selectByUserid(userid);
	memberNo = memberVo.getMemberNo();
	
	memberVo.setPwd(pwd);
	String msg = "비밀번호 변경 실패...", url = "changePwd.jsp";
	try {
		int cnt = memberService.updatePwd(memberNo, pwd);
		
		if(cnt>0) {
			msg = "비밀번호가 변경되었습니다!";
			url="../jsp/close.jsp";
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