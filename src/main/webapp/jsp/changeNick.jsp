<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO"
	scope="page"></jsp:useBean>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<title>닉네임 변경</title>

<%
request.setCharacterEncoding("utf-8");

String userid = (String)session.getAttribute("userid");
String nick = request.getParameter("nick");
memberVo = memberService.selectByUserid(userid);
String curNick = memberVo.getNick();

int result = 0;

if ( nick != null && !nick.isEmpty()) {
	try {
		result = memberService.duplicateNick(nick);
	} catch (SQLException e) {
		e.printStackTrace();
	}
} else {
	nick = "";
}
%>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
   $(function(){
	   $('#btnChkNick').click(function(){
	    	var nick=$('#nick').val();
	    	open('checkNick.jsp?nick='+nick,'chk',
	    		'width=500,height=300,left=0,top=0,location=yes,resizable=yes');	
	    });
	   
      $('#nick_submit').click(function(){
    	  if ($('#nick').val().length < 1) {
				alert('닉네임 입력하세요.');
				$('#nick').focus();
				event.preventDefault();
			} else if (!validate_nick($('#nick').val())) {
				alert('닉네임은 영문, 한글만 가능합니다.');
				$('#nick').focus();
				event.preventDefault();
			}else if($('#chNick').val()!='Y'){
				alert('닉네임 중복확인을 해야 합니다.');
				$('#btnChkNick').focus();
				event.preventDefault();			
			}
      });
   });

	//닉네임 영문, 한글만 가능
	function validate_nick(nick) {
		var pattern = new RegExp(/^[a-zA-Zㄱ-ㅎ가-힣]+$/g);
		return pattern.test(nick);
	}
</script>
	<div class="body">
		<div class="nick_bar">
			<h2>닉네임 변경</h2>
		</div>
		<div class="small_mold">
			<table class="nick_tb">
				<form name="frmNick" method="post" action="changeNick_ok.jsp">
					<colgroup>
						<col style="width: 50%;" />
						<col style="width: 50%;" />
					</colgroup>
				<thead>
					<tr>
						<th><label for="nick">현재 사용중인 닉네임</label></th>
						<th><label for="chgnick">변경할 닉네임 입력</label></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><span><%=curNick %></span></td>
						<td><input type="hidden" value="<%=memberVo.getMemberNo() %>" />
							<div class="second_regi">
								<input id="nick" type="text"
								 name="nick" placeholder="닉네임 중복확인을 누르세요">
								<input id="btnChkNick" type="button"
								 onclick="" value="닉네임 중복 확인" />
							</div>
							</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="submit" id="nick_submit" value="변경하기">
							 <input type ="hidden" name="chNick" id="chNick"> <!-- 닉네임 체크 유무 -->
						</td>
					</tr>
				</tfoot>
				</form>
			</table>
		</div>
	</div>
	<!-- content -->
	<%@ include file="../inc/smallBottom.jsp"%>