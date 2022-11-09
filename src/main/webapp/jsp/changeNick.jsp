<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<%
request.setCharacterEncoding("utf-8");

String MemberNo = request.getParameter("MemberNo");
String nick = request.getParameter("nick");

int result = 0;
if (nick != null && !nick.isEmpty()) {
	try {
		result = memberService.duplicateNick(nick);
	} catch (SQLException e) {
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
   $(function(){
      $('#nickck').click(function(){
         if (!validate_nick($('#nick').val())) {
            alert('닉네임은 영문, 한글만 가능합니다.');
            $('#nick').focus();
            event.preventDefault();
         }
      });
      
   $('#btUse').click(function(){
         $('input[name=nick]').find('#nick').val("<%=nick%>");
         $(opener.document).find("#chNick").val("Y");
			self.close();
		});

	});

	//닉네임 영문, 한글만 가능
	function validate_nick(nick) {
		var pattern = new RegExp(/^[a-zA-Zㄱ-ㅎ가-힣]+$/g);
		return pattern.test(nick);
	}
</script>
</head>
<body>
	<div class="body">
		<div class="nick_bar">
			<h2>닉네임 변경</h2>
		</div>
		<div class="nick_mold">
			<table class="nick_tb">
				<form name="frmNick" method="post" action="changeNick.jsp">
					<colgroup>
						<col style="width: 50%;" />
						<col style="width: 50%;" />
					</colgroup>
					<thead>
						<tr>
							<th><label for="nick">현재 사용중인 닉네임</label></th>
							<th><label for="chgnick">변경할 닉네임 입력</label></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><span>현재 사용자 닉네임</span></td>
							<td>
								<input type="text" name="nick"
								id="nick" size="15">
								<input type="submit" value="중복확인" id="nickck">
								<%
									if (result == MemberService.EXIST_ID) {
									%>
								<p>이미 등록된 닉네임</p>
								<%
									} else if (result == MemberService.NON_EXIST_ID) {
									%>
								<input type="button" value="사용하기" id="btUse">
								<p>사용가능한 닉네임</p>
								<%
								}
								%>
							</td>
						</tr>
					</tbody>
				</form>
			</table>
		</div>
	</div>
	<!-- content -->
	<%@ include file="../inc/smallBottom.jsp"%>