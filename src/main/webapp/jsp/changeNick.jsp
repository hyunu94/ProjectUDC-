<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/smallTop.jsp"%>
<!-- content -->
<div class="body">
	<div class="nick_bar">
		<h2>닉네임 변경</h2>
	</div>
	<div class="nick_mold">
		<table class="nick_tb">
			<colgroup>
				<col style="width: 50%;" />
				<col style="width: 50%;" />
			</colgroup>
			<thead>
				<tr>
					<th><p>현재 닉네임</p></th>
					<th><p>변경할 닉네임</p></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><p>홍길동대장</p></td>
					<td><p>
							<input type="text">
						</p></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"><span><button type="button"
								class="nick_btn">변경</button></span> <span><button type="submit"
								class="nick_close" onClick="window.close()">취소</button></span></td>
				</tr>
			</tfoot>
		</table>
		<div class="nick_btn"></div>
	</div>
	<!-- content -->
	<%@ include file="../inc/smallBottom.jsp"%>