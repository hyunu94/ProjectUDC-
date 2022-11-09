<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%@ include file="../login/checkLogin.jsp"%>
<link rel="stylesheet" href="../css/info.css">
<jsp:useBean id="memberService"
	class="com.project.member.model.MemberService" scope="session"></jsp:useBean>
<jsp:useBean id="memberVo" class="com.project.member.model.MemberVO"
	scope="page"></jsp:useBean>
<%
// 요청 파라미터 읽어오기
request.setCharacterEncoding("UTF-8");
String userid = (String) session.getAttribute("userid");
int locationNo = 0;
String kindName = "";
// DB 작업

try {
	memberVo = memberService.selectByUserid(userid);//유저 아이디로 내 회원정보 찾기
	locationNo = memberVo.getLocationNo(); //내 위치 고유 번호 읽어오기
	kindName = memberService.findKindName(userid);

} catch (SQLException e) {
	e.printStackTrace();
}

// 결과처리
	String address = memberService.findAdd(locationNo);//위치고유번호로 주소 찾기
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!-- content -->
<link rel="stylesheet" href="../css/table.css">
<div class="container">
	<div class="tab">
		<button class="tablinks" onclick="openCity(event, 'London')"
			id="defaultOpen">회원정보 보기</button>
		<button class="tablinks" onclick="openCity(event, 'Paris')">작성한
			글</button>
		<button class="tablinks" onclick="openCity(event, 'Seoul')">작성한
			댓글</button>
		<button class="tablinks" onclick="openCity(event, 'Tokyo')">예매/결제
			내역</button>
	</div>

	<!-- Tab content -->
	<div id="London" class="tabcontent">
		<div class="div0">
			<table class="Full-width">
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 50%;" />
				</colgroup>
				<tr>
					<td>회원유형</td>
					<td id="userid"><%=kindName %></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td id="userid"><%=userid%></td>
				</tr>
				<tr>
					<td>이름</td>
					<td id="username"><%=memberVo.getName()%></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td id="nickname"><%=memberVo.getNick()%></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td id="tel"><%=memberVo.getMobile()%></td>
				</tr>
				<tr>
					<td>주소</td>
					<td id="address"><%=address%></td>
				</tr>
			</table>
		</div>
		<div class="div1">
			<table class="btn_mold">
				<colgroup>
					<col style="width: 33%;" />
					<col style="width: 33%;" />
					<col style="width: 33%;" />
				</colgroup>
				<tr>
					<td>
						<button class="btn default"
							onclick="window.open('changeNick.jsp',
							 'window_name',
							 'toolbar=no, menubar=no, scrollbars=no, resizable=no, width=500, height=300, location=no, status=no');">닉네임
							변경</button>
					</td>
					<td>
						<button class="btn default"
							onclick="window.open('changePwd.jsp',
							 'window_name',
							 'toolbar=no, menubar=no, scrollbars=no, resizable=no, width=815, height=560, location=no, status=no');">비밀번호
							변경</button>
					</td>
					<td>
						<button class="btn default"
							onclick="window.open('Out.jsp',
							 'window_name',
							 'toolbar=no, menubar=no, scrollbars=no, resizable=no, width=815, height=360, location=no, status=no');">회원
							탈퇴</button>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div id="Paris" class="tabcontent">
		<h3>작성한 글</h3>
		<p>내가 작성한 글의 목록입니다.</p>
		<table class="zebra">
			<colgroup>
				<col style="width: 20%;" />
				<col style="width: 60%;" />
				<col style="width: 20%;" />
			</colgroup>
			<tr>
				<td class="title1">카테고리</td>
				<td class="title2">제목</td>
				<td class="title3">작성일</td>
			</tr>
			<tr>
				<td class="content1">후기</td>
				<td class="content2"><a href="#" style="text-decoration: none; color:black;">롤 결승 진짜 존잼 미친경기</a></td>
				<td class="content3">14:14</td>
			</tr>
			<tr>
				<td class="content1">잡담</td>
				<td class="content2"><a href="#" style="text-decoration: none; color:black;">와 결승재밌닼ㅋㅋㅋㅋ나5세트만보는데</a></td>
				<td class="content3">14:13</td>
			</tr>
			<tr>
				<td class="content1">질문</td>
				<td class="content2"><a href="#" style="text-decoration: none; color:black;">갤럽 결과 예능인부터 나오지?</a></td>
				<td class="content3">14:12</td>
			</tr>
		</table>
	</div>

	<div id="Seoul" class="tabcontent">
		<h3>작성한 댓글</h3>
		<p>내가 작성한 댓글의 목록입니다.</p>
		<table class="zebra">
			<colgroup>
				<col style="width: 40%;" />
				<col style="width: 40%;" />
				<col style="width: 20%;" />
			</colgroup>
			<tr>
				<td class="title1">게시글 제목</td>
				<td class="title2">나의 댓글</td>
				<td class="title3">작성일</td>
			</tr>
			<tr>
				<td class="content1"><a href="#" style="text-decoration: none; color:black;">롤 결승 진짜 존잼 미친경기</a></td>
				<td class="content2"><a href="#" style="text-decoration: none; color:black;">진짜 재밌어~~~</a></td>
				<td class="content3">14:16</td>
			</tr>
			<tr>
				<td class="content1"><a href="#" style="text-decoration: none; color:black;">와 결승재밌닼ㅋㅋㅋㅋ나5세트만보는데</a></td>
				<td class="content2"><a href="#" style="text-decoration: none; color:black;">나도 롤 잘하고 싶다</a></td>
				<td class="content3">14:15</td>
			</tr>
			<tr>
				<td class="content1"><a href="#" style="text-decoration: none; color:black;">갤럽 결과 예능인부터 나오지?</a></td>
				<td class="content2"><a href="#" style="text-decoration: none; color:black;">아 감사합니당</a></td>
				<td class="content3">14:14</td>
			</tr>
		</table>
	</div>

	<div id="Tokyo" class="tabcontent">
		<h3>예매/결제 내역</h3>
		<p>업데이트 중입니다</p>
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