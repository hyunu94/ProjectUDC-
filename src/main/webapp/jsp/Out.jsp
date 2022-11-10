<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO"
	scope="page"></jsp:useBean>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<title>회원탈퇴</title>
<%
request.setCharacterEncoding("UTF-8");
String userid = (String) session.getAttribute("userid");
memberVo = memberService.selectByUserid(userid);
%>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$('#sub1').click(function(){
			if(confirm('삭제하시겠습니까?')==false){
				alert('취소되었습니다');
				return false;
			}else{
				
				if($('#pwd').val()!=<%=memberVo.getPwd()%>){
					alert('비밀번호가 일치하지않습니다.');
					return false;
				} else {
					location.href="out_ok.jsp";
					self.close();
					
				}
			}
		});
		
	});
</script>
<style type="text/css">
#userid {
	margin-bottom: 10px;
}

#sub1 {
	background-color: #f2dede;
	color: #b94a48;
	font-weight: 500;
}

#sub1:hover {
	background-color: #e9a2a2;
	color: #b94a48;
	font-weight: 600;
}
</style>
<div class="body">
	<div class="div0">
		<form name="frm1" action="Out.jsp" method="post">
			<div class="div1">
				<p class="p1">탈퇴하려면 비밀번호를 입력하세요</p>
				<input type="text" class="input1" id="userid" name="userid"
					placeholder="<%=userid%>" style="font-size: 18px;" disabled /><br>
				<input type="text" class="input1" id="pwd" name="pwd"
					placeholder="비밀번호" />
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class=div3>
				<input type="submit" value="회원 탈퇴" id="sub1">
			</div>
		</form>
	</div>
</div>
<%@ include file="../inc/smallBottom.jsp"%>