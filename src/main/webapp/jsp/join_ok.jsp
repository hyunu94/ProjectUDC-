<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO" scope="page"></jsp:useBean>
<jsp:useBean id="locationService" class="com.project.location.model.LocationService" scope="session"></jsp:useBean>
<jsp:useBean id="locationVo" class="com.project.location.model.LocationVO" scope="page"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String kind = request.getParameter("kind");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String nick = request.getParameter("nick");
	
	String jumin1 = request.getParameter("jumin1");
	String jumin2 = request.getParameter("jumin2");
	
	String mobile1 = request.getParameter("mobile1");
	String mobile2 = request.getParameter("mobile2");
	String mobile3 = request.getParameter("mobile3");
	
	/* String locationNo = request.getParameter("locationNo"); */
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String detailAdd = request.getParameter("detailAdd");
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	
	String jumin = jumin1 +"-"+ jumin2;
	String mobile = mobile1 +"-"+ mobile2 +"-"+ mobile3;
	
	//locationVo
	locationVo.setZipcode(zipcode);
	locationVo.setAddress(address);
	locationVo.setAddressdetail(detailAdd);
	locationVo.setAxisx(Long.parseLong(x));
	locationVo.setAxisy(Long.parseLong(y));
	
	//memberVo
	memberVo.setUserid(userid);
	memberVo.setPwd(pwd);
	memberVo.setName(name);
	memberVo.setNick(nick);
	memberVo.setJumin(jumin);
	memberVo.setMobile(mobile);
	memberVo.setKindNo(Integer.parseInt(kind));
	
	try{
		int cnt = locationService.insertLocation(locationVo);
		
		
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
</body>

</html>