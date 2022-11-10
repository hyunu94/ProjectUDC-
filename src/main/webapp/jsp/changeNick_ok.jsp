<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	request.setCharacterEncoding("utf-8");
	
	String userid = (String)session.getAttribute("userid");
	String nick = request.getParameter("nick");
	int memberNo = 0;
	
	memberVo = memberService.selectByUserid(userid);
	memberNo = memberVo.getMemberNo();
	
	memberVo.setNick(nick);
	
	String msg = "닉네임 변경 실패...", url="changeNick.jsp";
	try {
		int cnt = memberService.updateNick(memberNo, nick);

		if(cnt>0){
			msg="닉네임이 변경되었습니다!";
			url="../jsp/info.jsp";
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	//성공하면 창 닫기!!
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>