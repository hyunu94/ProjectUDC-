<%@page import="com.project.v_cDetail.model.cDetailViewVO"%>
<%@page import="com.project.concert.model.ConcertService"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<link rel="stylesheet" type="text/css" href="../css/cDetail.css" />
<%
	String concertNo = request.getParameter("concertNo");

	ConcertService concertservice = new ConcertService();
	cDetailViewVO vo = concertservice.selectbyNo(Integer.parseInt(concertNo));
	String content=vo.getContent();
	String[] contents = content.split("/");
	
	
%>
<div class="body">
	<div class="div0">
		<h3>공연정보</h3>
		<div class="div_img">
			<input type="image" src="../ConcertImg_upload/<%=vo.getThumbimg() %>" name="main_img" class="main_img">
		</div>
		<div class="div_table">
			<table>
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 50%;" />
				</colgroup>
				<tr>
					<td>
						<span class="question">출연 아티스트</span>
					</td>
					<td>
						<span class="answer" id="artist"><%=vo.getArtist() %></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question"> 공연 제목</span>
					</td>
					<td>
						<span class="answer" id="title"><%=vo.getTitle() %></span>
					</td>
				</tr>			
				<tr>
					<td style="border-bottom: none;">
						<span class="question">소개</span>
					</td>
					<td style="border-bottom: none;">
						<span class="answer" id="content1"><%=contents[0] %></span>
					</td>
				</tr>			
				<tr>
					<td style="border-bottom: none;">
						<span class="question"></span>
					</td>
					<td style="border-bottom: none;">
						<span class="answer" id="content2"><%=contents[1] %></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question"></span>
					</td>
					<td>
						<span class="answer" id=content3><%=contents[2] %></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 일정</span>
					</td>
					<td>
						<span class="answer" id="date"><%=vo.getStartdate() %></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 시각</span>
					</td>
					<td>
						<span class="answer" id="time"><%=vo.getTime() %></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 가격</span>
					</td>
					<td>
						<span class="answer" id="price"><%=vo.getPrice() %></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 장소</span>
					</td>
					<td>
						<span class="answer" id="location"><%=vo.getLocationName()%></span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">주소</span>
					</td>
					<td>
						<span class="answer" id="address"><%= vo.getAddress() %><a href="#" style="text-decoration: none;">&nbsp;[위치보기]</a> </span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">문의 전화</span>
					</td>
					<td>
						<span class="answer" id="tel"><%=vo.getMobile() %></span>
					</td>
				</tr>			
			</table>
		</div>
		<div class=div3> 
				<input type="button" value="예매하기" id="sub1">
		</div>
		<div class="div_btns" >
			<table style="width:800px; margin-bottom: 40px;">
				<colgroup>
					<col style="width: 50%;" />
					<col style="width: 50%;" />
				</colgroup>
				<tr>
					<td style="padding-left:0px; border: none;">
						<div>
							<input type="button" class="btns" value="목록">
							<input type="button" class="btns" value="수정">
							<input type="button" class="btns" value="삭제">
						</div>
					</td>
					<td style="padding-right:0px; border: none;">
						<div>
							<input type="button" class="btns" value="글쓰기">
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>