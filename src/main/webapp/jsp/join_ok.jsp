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
	String locationName = request.getParameter("locationName");
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	double axisx = Double.parseDouble(x);
	double axisy = Double.parseDouble(y);
	
	axisx = (Math.ceil(axisx*1000000))/1000000;
	axisy = (Math.ceil(axisy*1000000))/1000000;
	
	String jumin = jumin1 +"-"+ jumin2;
	String mobile = mobile1 +"-"+ mobile2 +"-"+ mobile3;
	
	//locationVo
	locationVo.setZipcode(zipcode);
	locationVo.setAddress(address);
	locationVo.setLocationname(locationName);

	locationVo.setAxisx(axisx);
	locationVo.setAxisy(axisy);

	
	String msg="회원가입 실패!", url="join.jsp";
	try{
		int cnt = locationService.insertLocation(locationVo); //location테이블에 데이터 저장
		
		if(cnt>0){
			int locationNo = locationService.selectByAddress(zipcode, address);
			
			//memberVo
			memberVo.setUserid(userid);
			memberVo.setPwd(pwd);
			memberVo.setName(name);
			memberVo.setNick(nick);
			memberVo.setJumin(jumin);
			memberVo.setMobile(mobile);
			memberVo.setKindNo(Integer.parseInt(kind));
			memberVo.setLocationNo(locationNo);
			
			int count=memberService.insertMember(memberVo);
			
			if(count>0){
				msg="회원가입되었습니다.";
				url="index.jsp";
			}
			
		}
		
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>

</html>