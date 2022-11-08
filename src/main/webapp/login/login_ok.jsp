<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="memberService"
		class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
	
	
	<%
	request.setCharacterEncoding("utf-8");
	//1
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String chkSave = request.getParameter("chkSave");

	//2
	String msg = "로그인 처리 실패", url = "login.jsp";
	try {
		int result = memberService.loginCheck(userid, pwd);

		//3
		if (result == MemberService.LOGIN_OK) {
			//[1] session에 저장
			session.setAttribute("userid", userid);

			//[2] 쿠키에 저장 - 아이디 저장하기가 체크되었다면
			Cookie ck = new Cookie("ck_userid", userid);
			ck.setPath("/");

			//체크하면 on, 체크 안하면 null
			if (chkSave != null) { //체크된 경우
				ck.setMaxAge(1000 * 24 * 60 * 60); //쿠키 유지시간 : 1000일
				response.addCookie(ck);
			} else { //체크안한 경우 - 기존 쿠키 제거
				ck.setMaxAge(0); // 쿠키 삭제
				response.addCookie(ck);
			}
			
			msg=userid + "님 로그인되었습니다.";
			url="../jsp/index.jsp";
		} else if (result == MemberService.DISAGREE_PWD) {
			msg = "비밀번호가 일치하지 않습니다.";
		} else if (result == MemberService.NONE_USERID) {
			msg = "해당 아이디가 존재하지 않습니다.";
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