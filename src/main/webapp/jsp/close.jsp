<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/smallTop.jsp"%>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script language="javascript">
var wintimer;
clearTimeout(wintimer);
wintimer= setTimeout("closewin()",3000);

function closewin() {
   window.close();
}

</script>

<div class="close">
	<p>이 창은 3초 후에 자동으로 닫힙니다</p>
</div>
<!-- content -->
<%@ include file="../inc/smallBottom.jsp"%>