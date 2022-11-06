<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script> 
<script type="text/javascript">
	$(function(){
		$('#userid').focus();
		
		$('#wr_submit').click(function(){
			if($('input[name=kind]:radio:checked').length<1){
				alert('회원유형을 선택하세요');
				event.preventDefault();
			}else if($('#userid').val().length<1){
				alert('아이디를 입력하세요');
				$('#userid').focus();
				event.preventDefault();
			}else if(!validate_userid($('#userid').val())){
				alert('아이디는 영문, 숫자, _(밑줄문자)만 가능합니다.');
				$('#userid').focus();
				event.preventDefault();	
			}else if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}else if($('#pwd').val()!=$('#pwd2').val()){
				alert('비밀번호가 일치하지 않습니다.');
				$('#pwd2').focus();
				event.preventDefault();
			}else if($('#name').val().length<1){
				alert('이름을 입력하세요.');
				$('#name').focus();
				event.preventDefault();
			}else if($('#nick').val().length<1){
				alert('닉네임 입력하세요.');
				$('#nick').focus();
				event.preventDefault();
			}else if($('#jumin1').val().length<1){
				alert('주민번호 앞자리를 입력하세요.');
				$('#jumin1').focus();
				event.preventDefault();
			}else if($('#jumin2').val().length<1){
				alert('주민번호 뒷자리를 입력하세요.');
				$('#jumin2').focus();
				event.preventDefault();
			}else if(!validate_jumin($('#jumin1').val())
					|| !validate_jumin($('#jumin2').val())){
				alert('주민번호는 숫자만 가능합니다.');
				$('#jumin1').focus();
				event.preventDefault();
			}else if($('#mobile2').val().length<1){
				alert('핸드폰번호를 입력하세요.')
				event.preventDefault();
			}else if($('#mobile3').val().length<1){
				alert('핸드폰번호를 입력하세요.')
				event.preventDefault();
			}else if(!validate_phone($('#mobile2').val())
					|| !validate_phone($('#mobile3').val())){
				alert('전화번호는 숫자만 가능합니다.');
				$('#mobile2').focus();
				event.preventDefault();
			}else if($('input[name=locationNo]:radio:checked').length<1){
				alert('관심지역을 선택하세요.');
				event.preventDefault();
			}
			
		});
		
	});
	
	function validate_phone(hp){
		 var pattern=new RegExp(/^[0-9]*$/g);
		 return pattern.test(hp);//정규식과 일치하면 true
		 /* 0 에서 9사이의 숫자로 시작하거나 끝나야 한다는 의미 (^는 시작, $는 끝을 의미)
		 닫기 대괄호(]) 뒤의 * 기호는 0번 이상 반복 */
	 }
	
	function validate_userid(id){
		 var pattern = new RegExp(/^[a-zA-Z0-9_]+$/g);
		 return pattern.test(id);
		 
		 /* a에서 z 사이의 문자, A~Z사이의 문자, 0 에서 9사이의 숫자나 _로 
		 시작하거나 끝나야 한다는 의미
		 닫기 대괄호(]) 뒤의 + 기호는 이 패턴이 한 번 또는 그 이상 반복된다는 의미 */
	 }
	
	function validate_jumin(jumin){
		 var pattern = new RegExp(/^[0-9]+$/g);
		 return pattern.test(jumin);
	}
	
</script>
</head>
<body>
	<h3>정보를 입력해 주세요.</h3>
<form id = "regist" method="post" action="join_ok.jsp">
	<div class = "first_regi">
		<strong class = "text_regi">회원 유형</strong>
	</div>
	<div class = "second_regi">
		일반 회원<input type="radio" name="kind" value="1">
		기업 회원<input type="radio" name="kind" value="2">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">아이디</strong>
	</div>
	<div class = "second_regi">
		<input id="userid" type="text" name="userid">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">비밀번호</strong>
	</div>
	<div class = "second_regi">
		 <input id="pwd" type="Password" name="pwd">
	</div>
	<div class = "first_regi">
		<strong class = "text_regi">비밀번호 확인</strong>
	</div>
	<div class = "second_regi">
		 <input id="pwd2" type="Password" name="pwd2">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">이름</strong>
	</div>
	<div class = "second_regi">
		<input id="name" type="text" name="name">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">닉네임</strong>
	</div>
	<div class = "second_regi">
		<input id="nick" type="text" name="nick">
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">주민번호</strong>
	</div>
	<div class = "second_regi">
		<span>
		<input id="jumin1" type="text" name="jumin1" maxlength="6"> -
		<input id="jumin2" type="Password" name="jumin2" maxlength="7"> 		
		</span>		
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class = "first_regi">
		<strong class = "text_regi">핸드폰번호</strong>
	</div>
	<div class = "second_regi">
		<span>
		<select id = "mobile1" class="mobile" name="mobile1">
			<option>010</option>
			<option>011</option>
			<option>017</option>
		</select>
		- <input class = "mobile" id="mobile2" type="text" name="mobile2" maxlength="4"> 
		- <input class = "mobile" id="mobile3" type="text" name="mobile3" maxlength="4"> 		
		</span>		
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class="multi_radio1">
		<strong class = "text_regi">관심지역</strong>	
	</div>
	<div class="multi_radio2">
		강남구<input type="radio" name="locationNo" value="1">
		서대문구<input type="radio" name="locationNo" value="2">
		중구<input type="radio" name="locationNo" value="3">
		종로구<input type="radio" name="locationNo" value="4">
		은평구<input type="radio" name="locationNo" value="5">
		모르구<input type="radio" name="locationNo" value="6">	
	</div>
	<!-- <div class = "realize">
	</div> 유효성 검사 칸-->
	<div class="multi_radio1">
	</div>
	<div class="multi_radio2">
		<input type="submit" id="wr_submit"value="가입 완료">
	</div>
</form>
</body>
</html>