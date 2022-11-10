<%@page import="java.sql.SQLException"%>
<%@page import="com.project.concert.model.ConcertVO"%>
<%@page import="java.util.List"%>
<%@page import="com.project.concert.model.ConcertService"%>
<%@page import="com.project.member.model.MemberService"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<title>글쓰기</title>
<link rel="stylesheet" type="text/css" href="../css/nWrite.css" />
<script type="text/javascript"
	src="../smartEdit/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	var oEditors = [];

	$(function() {
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "content",
			sSkinURI : "../smartEdit/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true,
				bUseVerticalResizer : true,
				bUseModeChanger : true,
				fOnBeforeUnload : function() {

				}
			},
			fCreator : "createSEditor2"
		});
		
		$("#sub1").click(function(){
	          //id가 smarteditor인 textarea에 에디터에서 대입
	            oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	          $('#frm1').submit();
	      })
		
	});
</script>
</head>
<body>
<%
String cl_userid=(String)session.getAttribute("userid");
boolean cl_login = false;

if(cl_userid!=null && !cl_userid.isEmpty()){ //세션에 값이 있으면 로그인된 상태
	cl_login = true;
}

ConcertService service = new ConcertService();
List<ConcertVO> list = null;

try {
	list = service.selectNoTitle();
	%>
<div class="body">
	<h3>일반게시판 > 글쓰기</h3>
	<div class="div0">
		<form class="frm1" name="frm1" method="post" action="nWrite_ok.jsp">
			<div class="div1">
				<p class="p1">카테고리</p>
				<select class="sel1" name="catename" id="catename">
					<option>분류</option>
					<option>잡담 게시판</option>
					<option>후기 게시판</option>
					<option>같이 가요 게시판</option>
				</select>
			</div>
			<div class="div1" id="con_select">
				<p class="p1">공연선택</p>
				<select class="sel1" name="concerttitle" id="concerttitle">
					<option>선택</option>
				<%for (int i = 0; i < list.size(); i++) {
					ConcertVO vo = new ConcertVO();
					vo = list.get(i);%>
					<option><%=vo.getTitle() %></option>
					<%}%>
				</select>
				<%} catch (SQLException e) {
					e.printStackTrace();
					}%>
			</div>
			<div class="div1">
				<p class="p1">제목</p>
				<input type="text" class="input1" id="title" name="title">
				<p class="p2">숨김 메시지 표시</p>
			</div>
			<div class="div1">
				<textarea class="input2" id="content" name="content" rows="10" cols="30"></textarea>
				<p class="p2"></p>
				<input type="file" class="input3" name="img" id="img">
			</div>
			<div class=div3>
				<input type="submit" value="등록" id="sub1">
			</div>
		</form>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>