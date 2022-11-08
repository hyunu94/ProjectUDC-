<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" href="../css/login.css">
<%
	String ck_value="";
	Cookie[] ckArr = request.getCookies();
	if(ckArr!=null){
		for(int i=0;i<ckArr.length; i++){
			if(ckArr[i].getName().equals("ck_userid")){
				ck_value=ckArr[i].getValue();
				break;
			}
		}
	}
%>
<style type="text/css">

</style>
<div class="body">
	<h2>&nbsp;Login</h2>
	<form id="frmLogin" method="post" action="login_ok.jsp">
		<div class="imgcontainer">
			<svg xmlns="http://www.w3.org/2000/svg" width="200" height="200"
				fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
				<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
				<path fill-rule="evenodd"
					d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
			</svg>
		</div>
		<div class="container">
			<label for="userid">아이디</label>
			<input type="text" placeholder="Enter Username" name="userid" id="userid" value="<%=ck_value%>" required> 
			<label for="psw">비밀번호</label>
			<input type="password" placeholder="Enter Password" name="pwd"  id="pwd" required>

			<button type="submit">Login</button>
			<label></label>
			<input type="checkbox" name="chkSave" id="chkSave">
			<label for="chkSave">아이디 저장하기</label>
		</div>
			<span class="psw">Forgot <a href="#" style="text-decoration: none;">password?</a></span>
	</form>
</div>

<%@ include file="../inc/bottom.jsp"%>
