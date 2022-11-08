<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="memberService" class="com.project.member.model.MemberService"
	scope="session"></jsp:useBean>
<!DOCTYPE html>
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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
 <form name="frmUserid" method="post" action="checkUserid.jsp">
	<label for="userid">아이디 : </label>
	<input type="text" name="userid" id="userid" size="17" 
		value="<%=userid%>">
	<input type="submit" value="중복확인" id="idck"> 
	
	<%if(){ %>
		<p>이미 등록된 아이디입니다. 다른 아이디를 입력하세요</p>
	<%}else if(){ %>
		<input type="button" value="사용하기" id="btUse">
		<p>사용가능한 아이디입니다. [사용하기]버튼을 클릭하세요</p>
	<%} %>
</form> 
</body>
</html>