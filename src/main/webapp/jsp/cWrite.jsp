<%@page import="com.project.member.model.MemberVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.project.member.model.MemberService"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/cWrite.css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(function() {
		  $('#artist').focus();
		
		$('#sub1').click(function(){
			var hour = $('#time').val().substr(0,2);
			var minute = $('#time').val().substr(3,2)
			
	    	if($('#artist').val().length<1){
				alert('공연자를 입력하세요');
				$('#artist').focus();
				event.preventDefault();
	    	}else if($('#title').val().length<1){
				alert('공연제목을 입력하세요');
				$('#title').focus();
				event.preventDefault();
	    	}else if($('#start').val().length<1){
				alert('시작날짜를 선택하세요');
				$('#start').focus();
				event.preventDefault();
	    	}else if($('#time').val().length<1){
				alert('공연시각을 입력하세요');
				$('#time').focus();
				event.preventDefault();
	    	}else if(!validate_time($('#time').val()) ||
	    			$('#time').val().substr(2,1).indexOf(':') == -1){
				alert('공연시각을 보기와 같이 입력하세요.\n\n예)17:00');
				$('#time').focus();
				event.preventDefault();	
			}else if(hour>24 || minute>60){
				alert('공연시각은\n00:00 ~ 23:59 사이만 입력가능합니다');
				$('#time').focus();
				event.preventDefault();	
			}else if($('#price').val().length<1){
				alert('가격을 입력하세요');
	    		$('#price').focus();
	    		event.preventDefault();
	    	}else if(!validate_price($('#price').val())){
				alert('가격은 숫자만 가능합니다.');
				$('#price').focus();
				event.preventDefault();	
			}else if($('#content1').val().length<1){
				alert('공연소개를 입력하세요');
	    		$('#content1').focus();
	    		event.preventDefault();
			}
			
			if($('#img').val()<1){
				$('#img').val("");
			}
	    });
	
	    $.datepicker.setDefaults($.datepicker.regional['ko']);
	    $("#start").datepicker({
	    	monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	dateFormat: "yy-mm-dd",
	    	showMonthAfterYear: true,
	    	onClose: function( selectedDate ) {    
               $("#end").datepicker( "option", "minDate", selectedDate );
           }
	    });
	    $("#end").datepicker({
	    	monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	dateFormat: "yy-mm-dd",
	    	showMonthAfterYear: true,
	    	onClose: function( selectedDate ) {    
                $("#start").datepicker( "option", "maxDate", selectedDate );
            }
	    });
	    
	});
	//가격 숫자만 가능
	function validate_price(price){
		 var pattern=new RegExp(/^[0-9]*$/g);
		 return pattern.test(price);
	 }
	
	//공연시각 숫자 랑 : 만 가능
	function validate_time(time){
		 var pattern=new RegExp(/^[0-9:]*$/g);
		 return pattern.test(time);
	 }
	
</script>
<%
	String userid=(String)session.getAttribute("userid");
	boolean login = false;
	
	if(userid!=null && !userid.isEmpty()){ //세션에 값이 있으면 로그인된 상태
		login = true;
	}
	
	
	MemberService memberService = new MemberService();
	MemberVO memberVo = null;
	try{
		memberVo=memberService.selectByUserid(userid);
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
<style type="text/css">
	.input1{
		width:600px;
	}
	.input3{
		font-family: 'Noto Sans KR', sans-serif;
		font-weight: 300;
	}
</style>
<div class="body">
	<div class="div0">
		<div class="div1">
			<h3>공연정보를 입력해 주세요</h3>
		</div> 
		<form name="frm1" action="cWrite_ok.jsp" enctype="multipart/form-data" method="post" >
			<div class="div1">
				<p class="p1">ARTIST</p>
				<input type="text" class="input1" id="artist" name="artist" placeholder="출연 아티스트를 입력하세요" /><br>
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class="div1">
				<p class="p1">TITLE</p>
				<input type="text" class="input1" id="title" name="title" placeholder="공연 제목을 입력하세요" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">DATE</p>
				<input type="text" class="input1" id="start" name="startdate" placeholder="공연날짜를 입력하세요"/>
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">TIMETABLE</p>
				<input type="text" class="input1" id="time" name="time" maxlength="5"  placeholder="공연시각을 입력하세요"/>
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">PRICE</p>
				<input type="text" class="input1" id="price" name="price"  placeholder="티켓 가격을 입력하세요" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">CONTENT1</p>
				<input type="text" class="input1" id="content1" name="content1" maxlength="25" placeholder="공연소개를 3줄요약 해주세요(25자)"/>
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">CONTENT2</p>
				<input type="text" class="input1" id="content2" name="content2" maxlength="25" placeholder="공연소개를 3줄요약 해주세요(25자)"/>
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">CONTENT3</p>
				<input type="text" class="input1" id="content3" name="content3" maxlength="25" placeholder="공연소개를 3줄요약 해주세요(25자)" />
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">VIDEO LINK</p>
				<input type="text" class="input1" id="link" name="link" placeholder="관련 공영영상 링크를 입력하세요"/>
				<p class="p2"></p>
			</div>
			<div class="div1">
				<p class="p1">사진 첨부 (가로 800px 이상의 사진으로 업로드하세요)</p>
				<input type="file" class="input3" name="img" id="img">
				<p class="p2"></p>
			</div>
			<div class=div3> 
				<input type="submit" value="작성 완료" id="sub1">
			</div>
				<input type="hidden" value="<%=memberVo.getMemberNo() %>" name="memberNo">
		</form>
	</div>
</div>
<!-- content 바뀌는 부분 끝 -->
<%@ include file="../inc/bottom.jsp"%>