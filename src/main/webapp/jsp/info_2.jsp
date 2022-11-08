<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
	.zebra tr:nth-child(even) {
	 	background-color: #f2f2f2;
	}
	.title1, .content1, .title2, .content2{
		text-align: left;
		padding-left:10px;
	}
	.content1{
		padding-left:20px;
	}
	.title3, .content3{
		text-align: right;
		padding-right:20px;
	}
	
</style>
<body>
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
</body>
		