<%@page import="com.project.v_index.model.IndexVO"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" href="../css/card.css">
<style type="text/css">
.recent h1, .find h1 {
	letter-spacing: -2px;
	margin-top: 20px;
	font-weight: 800;
}
</style>



<jsp:useBean id="concertService" class="com.project.concert.model.ConcertService" scope="session"></jsp:useBean>
<%
	List<IndexVO> inlist = null;
	String content1 = "";
	String content2 = "";
	String content3 = "";
	
	try{
		inlist = concertService.selectImg();%>
		
<!-- content - 바뀌는 부분 -->
<div class="container">
	<main class="container">
		<div class="find">
			<h1>FINDING PLACE</h1>
		</div>
		<div class="map">
			<%@ include file="../api/main.jsp"%>
		</div>
		<div class="recent">
			<h1><a href="cList.jsp" style="text-decoration: none; color:black;">RECENT UPDATE</a></h1>
		</div>
		<div class="row mb-2">
							<%for(int i=0;i<inlist.size();i++){
								IndexVO vo = inlist.get(i);%>
			<div class="col-md-6">
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="article_card">
						<div class="bg-pic">
							
								<img src="../ConcertImg_upload/<%=vo.getThumbimg() %>" alt="" aria-hidden="true" />
							
						</div>
						<div class="inner">
							<div class="header">
								<!-- <div class="prix">JOHN MAYER</div> -->
							</div>
							<div class="footer">
								<span class="prix"><a href="cDetail.jsp?concertNo=<%=vo.getConcertNo()%>" style="text-decoration: none; color:white;"><%=vo.getArtist() %></a></span>
								<span class="unit"> <!-- &euro; --></span>
								<div>
									<%=vo.getStartdate() + " , " + vo.getLocationname() %>
								</div>
							</div>

							<div class="content">
								<ul> 
									<li class="title">UDC SuperConcert#00<%=(i+1) %>&nbsp;&nbsp;<%=vo.getTitle() %></li>
										<%String content = vo.getContent(); 
										String [] contents = content.split("/");%>
									<li><%=contents[0] %></li>
									<li><%=contents[1] %></li>
									<li><%=contents[2] %></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<% } //for
		}catch(SQLException e){
		e.printStackTrace();
		}%>
		</div>	
	</main>
</div>
<!-- content 바뀌는 부분 끝 -->

<%@ include file="../inc/bottom.jsp"%>