<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" type="text/css" href="../css/nWrite.css" />
<script type="text/javascript" src="../smartEdit/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

	var oEditors=[];
	
	$(function() {
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder : "content",
			sSkinURI : "../smartEdit/SmartEditor2Skin.html",
		      htParams : {
		          bUseToolbar : true,             
		          bUseVerticalResizer : true,     
		          bUseModeChanger : true,         
		          fOnBeforeUnload : function(){
		        	  
		          }
		      }, 
		      fCreator: "createSEditor2"
		      });
	});
</script>
</head>
<body>
	<h3>일반게시판 > 글쓰기</h3>
	<div class="div0">
		<form class="frm1" name="frm1" method="post" action="">
			<div class="div1">
				<p class="p1">카테고리</p>
				<select class="sel1" name="category" id="category">
					<option >분류</option>
					<option>잡담 게시판</option>
					<option>후기 게시판</option>
					<option>같이가요 게시판</option>
				</select>
			</div>
			<div class="div1">
				<p class="p1">제목</p>
				<input type="text" class="input1" id="title" name="title">
				<p class="p2">숨김 메시지 표시</p> 				
			</div>
			<div class="div1">
				<textarea class="input2" id="content" name="content" rows="10" cols="30"></textarea>
				<p class="p2"></p>
				<input type="file" class="input3" name="attach" id="attach">
			</div>
			<div class=div3> 
				<input type="submit" value="등록" id="sub1">
			</div>
		</form>
	</div>
</body>
</html>