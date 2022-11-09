<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.project.member.model.MemberVO"%>
<%@page import="com.project.member.model.MemberService"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");

	String userid= (String)request.getAttribute("userid");
	
	MemberService service = new MemberService();
	MemberVO memberVo = new MemberVO();
	int locationNo = 0;

	try {
		memberVo = service.selectByUserid(userid);//유저 아이디로 내 회원정보 찾기
		locationNo = memberVo.getLocationNo(); //내 위치 고유 번호 읽어오기
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
		String address = service.findAdd(locationNo);//위치고유번호로 주소 찾기
			
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
%>
<style type="text/css">
table.btn_mold {
	border: none;
	width: 100%;
	height: auto;
}

table.btn_mold th, table.btn_mold td {
	padding: 0px;
}

table.btn_mold th:nth-child(1) {
	text-align: left;
}

table.btn_mold th:nth-child(2) {
	text-align: right;
}

.t_btn {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
}

/* 밑에 버튼 3개 */
.default {
	border-color: #e7e7e7;
	color: black;
	font-size:10pt;
	width:310px;
}

.default:hover {
	background: #e7e7e7;
}
</style>

<body>

	<div class="div0">
		<table class="Full-width">
			<colgroup>
				<col style="width: 50%;" />
				<col style="width: 50%;" />
			</colgroup>
			<tr>
				<td>회원유형</td>
				<td id="userid">일반회원</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td id="userid"><%=userid %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td id="username"><%=memberVo.getName() %></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td id="nickname"><%=memberVo.getNick() %></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td id="tel"><%=memberVo.getMobile() %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td id="address"><%=address %></td>
			</tr>
			<tr>
				<td>가입일</td>
				<td id="joindate"><%=sdf.format(memberVo.getName()) %></td>
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
							 'toolbar=no, menubar=no, scrollbars=no, resizable=no, width=500, height=300, location=no, status=no');">닉네임 변경</button>
				</td>
				<td>
					<button class="btn default"
					 onclick="window.open('changePwd.jsp',
							 'window_name',
							 'toolbar=no, menubar=no, scrollbars=no, resizable=no, width=815, height=560, location=no, status=no');">비밀번호 변경</button>
				</td>
				<td>
					<button class="btn default"
					 onclick="window.open('Out.jsp',
							 'window_name',
							 'toolbar=no, menubar=no, scrollbars=no, resizable=no, width=815, height=360, location=no, status=no');">회원 탈퇴</button>
				</td>
			</tr>
		</table>
	</div>
</body>