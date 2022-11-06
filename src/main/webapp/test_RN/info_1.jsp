<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<td>아이디</td>
				<td name="userid">honggildong</td>
			</tr>
			<tr>
				<td>이름</td>
				<td name="username">홍길동</td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td name="nickname">전우치</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td name="tel">010-1234-5678</td>
			</tr>
			<tr>
				<td>성별</td>
				<td name="gender">M</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td name="joindate">2022-10-01</td>
			</tr>
		</table>
	</div>
	<div class="div1">
		<table class="btn_mold">
			<colgroup>
				<col style="width: 33.3%;" />
				<col style="width: 33.3%;" />
				<col style="width: 33.3%;" />
			</colgroup>
			<tr>
				<td>
					<button class="btn default">회원정보 수정</button>
				</td>
				<td>
					<button class="btn default">비밀번호 변경</button>
				</td>
				<td>
					<button class="btn default">회원 탈퇴</button>
				</td>
			</tr>
		</table>
	</div>
</body>