<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../smartEdit/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
var oEditors = [];
 
var oEditors=[];
$(function() {
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder : "txtCon",
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
	<textarea rows="10" cols="30" id="txtCon" name="ir1"></textarea>
</body>
</html>