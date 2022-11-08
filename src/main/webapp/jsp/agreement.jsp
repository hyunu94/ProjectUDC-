<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<div class="body">
	<h2>회원 약관</h2>
	<iframe src="../inc/provision.html" width="700px" height="300px"></iframe>
	<br>
	<br>
	<div style="width: 700px">
		<form name="frmAgree" method="post" action="join.jsp">
			<fieldset>
				<div style="text-align: right;">
					<input type="checkbox" name="chkAgree" id="chkAgree"> <label
						for="chkAgree">약관에 동의합니다.</label>
				</div>
				<div style="text-align: center;">
					<input type="submit" value="확인"> <input type="reset"
						value="취소">
				</div>
			</fieldset>
		</form>
	</div>
</div>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=frmAgree]').submit(function(){
	         if(!$('#chkAgree').is(':checked')){      
	            alert('약관에 동의하세요.');
	            $('#chkAgree').focus();
	            event.preventDefault();
	         }
	      });
	});
</script>
<style type="text/css">
.body {
    margin: 0 auto;
    width: fit-content;
}
</style>
<%@ include file="../inc/bottom.jsp"%>
