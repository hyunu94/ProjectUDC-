<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
 <!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

</style>
<script type="text/javascript">
$(document).ready(function() {
	  $('#summernote').summernote();
	});
</script>

</head>
<body>
<div id="summernote" ></div>
</body>
</html>

<!-- 제이쿼리로 <iframe> 에 있는 값을 부모창으로 호출할수 있어요.  부모창에서 다음과 같이 호출합니다.
$('#아이프레임ID값').contents().find('.note-editable').html(); -->