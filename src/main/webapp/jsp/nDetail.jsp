<%@page import="com.project.v_boardNo_search.model.DetailboardViewVO"%>
<%@page import="com.project.v_board.model.BoardSelectVO"%>
<%@page import="com.project.board.model.BoardService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<title>일반게시판 > 내용보기</title>
<link rel="stylesheet" type="text/css" href="../css/ndetail1.css" />
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
</head>
<body>
<%
	String boardNo = request.getParameter("boardNo");
	BoardService service = new BoardService();
	DetailboardViewVO vo = new DetailboardViewVO();
	
	try{
		vo = service.selectByboardNO(Integer.parseInt(boardNo));
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
	<div class="div0">
		<h3><%=vo.getCatename() %></h3>
		<div class="div00">
			<p class="p1"><%=vo.getTitle() %></p>
		</div>
		<div class="div1">
			<table>
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 50%;" />
				</colgroup>
				<tr>
					<td>
						<div class="div_inner1">
							<p class="p1">
								<a href="#" style="text-decoration: none;"><%=vo.getNick() %></a>
							</p>
						</div>
					</td>
					<td>
						<div class="div_inner2">
							<p class="p2">날짜&nbsp;</p>
							<p class="p1">2022-10-01 17:55</p>
							<p class="p2">&nbsp;&nbsp;조회수&nbsp;</p>
							<p class="p2">100</p>
							<p class="p2">&nbsp;&nbsp;추천수&nbsp;</p>
							<p class="p2">10</p>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="div2">
			<p class="p1"><%=vo.getContent() %></p>
		</div>
		<div class="div_btns">
			<table>
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 50%;" />
				</colgroup>
				<tr>
					<td>
						<div>
							<input type="button" class="btns" value="목록"> <input
								type="button" class="btns" value="수정"> <input
								type="button" class="btns" value="삭제">
						</div>
					</td>
					<td>
						<div>
							<input type="button" class="btns" value="글쓰기">
						</div>
					</td>
				</tr>
			</table>
		</div>

		<!-- 댓글 for문 돌릴 곳 (시작) -->
		<div class="div_comm">
			<table>
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 50%;" />
				</colgroup>
				<!-- 첫 번째 줄 : [좌]아이디/작성일자 //[우]수정 -->
				<tr>
					<td>
						<div class="div_inner">
							<p class="p1">
								<a href="#" style="text-decoration: none; color: #466cb4;">이거는</a>
							</p>
							<p>&nbsp;&nbsp;&nbsp;</p>
							<p class="p1">2022-10-01 18:50</p>
						</div>
					</td>
					<td>
						<div class="div_inner">
							<p class="p1">
								<a href="#" style="text-decoration: none;">⋮</a>
							</p>
						</div>
					</td>
				</tr>
				<!-- 두 번째 줄 : 댓글 본문 내용 -->
				<tr>
					<td colspan="2" style="text-align: left;"><span class="p1">미구현</span>
					</td>
				</tr>
				<!-- 두 번째 줄 : 댓글 본문 내용 -->
				<tr>
					<td colspan="2" style="text-align: right;"><br>
						<div>
							<input type="button" class="btns" value="대댓글">
						</div></td>
				</tr>
			</table>
		</div>
		<!-- 댓글 for문 돌릴 곳 (끝) -->

		<div class="div3" id="comment">
			<form name="frm1" method="post" action="">
				<textarea class="input2" rows="10" cols="30"></textarea>
				<div class=div3>
					<input type="submit" value="댓글 등록" id="sub1">
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../inc/bottom.jsp"%>