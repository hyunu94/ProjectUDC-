<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<style>
.body {
	width: 500px;
	margin: 0 auto;
}

.nick_mold {
	border: 1px solid lightgray;
}

.nick_tb {
	width: -webkit-fill-available;
}

.nick_tb {
	text-align: center;
}
</style>
<div class="body">
	<h2>닉네임 변경</h2>
	<div class="nick_mold">
		<table class="nick_tb">
			<colgroup>
				<col style="width: 50%;" />
				<col style="width: 50%;" />
			</colgroup>
			<thead>
			<tr>
				<th><p>현재 닉네임</p></th>
				<th><p>바꿀 닉네임</p></th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td><p>홍길동대장</p></td>
				<td><p><input type="text"></p></td>
			</tr>
			</tbody>
			<tfoot>
			<tr>
				<td colspan="2">
				<span><input type="submit" value="변경"></span>
				<span><input type="submit" value="취소" onClick="window.close()"></span>
				</td>
			</tr>
			</tfoot>
		</table>
		<div class="nick_btn">
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>