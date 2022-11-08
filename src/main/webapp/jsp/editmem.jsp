<%@page import="java.sql.SQLException"%>
<%@page import="com.project.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<%-- 
<jsp:useBean id="memberService" class="com.project.member.model.MemberService" scope="session"></jsp:useBean>


<%
	//1
	String userid=(String)session.getAttribute("userid");
	MemberVO vo=null;
	try{
		//2
		vo = memberService.selectByUserid(userid);
		
		
	}catch(SQLException e){
		e.printStackTrace();
	}
		
%>
 --%>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#pwd').focus();
	
	$('#wr_submit').click(function(){
		if($('#pwd').val().length<1){
			alert('비밀번호를 입력하세요');
			$('#pwd').focus();
			event.preventDefault();
		}else if($('#pwd').val()!=$('#pwd2').val()){
			alert('비밀번호가 일치하지 않습니다.');
			$('#pwd2').focus();
			event.preventDefault();
		}
	});
    
 });
 
</script>
<link rel="stylesheet" href="../css/table.css">
<style>
.body {
	width: 630px;
	height: 500px;
	margin: 0 auto;
}

.divForm {
	border: 1px solid lightgray;
}

.form_mold {
    width: fit-content;
    padding: 50px 50px 0 50px;
    margin: auto;
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 1em;
	font-size: 15px;
}

.fm_btn {
	grid-column: 1 / 3;
	text-align: center;
    margin: 20px 0 20px 0;
}
</style>
<div class="body">
	<h2>회원 정보 수정</h2>
	<div class="divForm">
		<form name="frm1" method="post" action="editmem_ok">
			<div class="form_mold">
				<div>
					<span class="sp1">이름</span>
				</div>
				<div>
					<input type="text" name="name" id="name">
				</div>
				<div>
					<span class="sp1">회원ID</span>
				</div>
				<div>
					<input type="text" name="userid" id="userid">
				</div>
				<div>
					<span class="sp1">닉네임</span>
				</div>
				<div>
					<input type="text" name="nick" id="nick">
				</div>
				<div>
					<label for="pwd">비밀번호</label>
				</div>
				<div>
					<input type="Password" name="pwd" id="pwd">
				</div>
				<div>
					<label for="pwd2">비밀번호 확인</label>
				</div>
				<div>
					<input type="Password" name="pwd2" id="pwd2">
				</div>
				<div>
					<label for="sp1">핸드폰</label>
				</div>
				<div>
					<input type="text" name="mobile" id="mobile">
				</div>
				<div class="fm_btn">
					<input class="btn btn-outline-dark me-2" 
					type="submit" id="wr_submit" value="회원수정">
				</div>
			</div>
		</form>
	</div>

</div>
<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>
<!-- content -->
<%@ include file="../inc/bottom.jsp"%>