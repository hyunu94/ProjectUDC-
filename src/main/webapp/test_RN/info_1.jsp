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

.default {
	border-color: #e7e7e7;
	color: black;
}

.default:hover {
	background: #e7e7e7;
}
</style>
<h3>회원정보</h3>
		<p>London is the capital city of England.</p>
		<table class="Full-width">
			<tr>
				<th>First Name</th>
				<th>Points</th>
			</tr>
			<tr>
				<td>회원 번호</td>
				<td>mno</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>id</td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td>nick</td>
			</tr>
			<tr>
				<td>이메일 주소</td>
				<td>email</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>tel</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>name</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>gender</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td>joindate</td>
			</tr>
		</table>
		<table class="btn_mold">
			<tr>
				<th>
					<button class="btn default">회원정보 수정</button>
				</th>
				<th>
					<button class="btn default">회원 탈퇴</button>
				</th>
			</tr>
		</table>