<%@page import="com.project.concert.model.ConcertService"%>
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

<%
	


%>

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
			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="article_card">
						<div class="bg-pic">
							<img src="../img/slidetest.jpg" alt="" aria-hidden="true" />
						</div>

						<div class="inner">
							<div class="header">
								<!-- <div class="prix">JOHN MAYER</div> -->
							</div>
							<div class="footer">
								<span class="prix">JOHN MAYER<span class="unit"> <!-- &euro; -->
								</span></span>
								<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
							</div>

							<div class="content">
								<ul>
									<li class="title">UDC SuperConcert#001 JOHN MAYER!</li>
									<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
									<li>존 메이어, 8년만에 다시 내한!</li>
									<li>올 겨울 크리스마스를 준비하세요!</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="article_card">
						<div class="bg-pic">
							<img src="../img/slidetest.jpg" alt="" aria-hidden="true" />
						</div>

						<div class="inner">
							<div class="header">
								<!-- <div class="prix">JOHN MAYER</div> -->
							</div>
							<div class="footer">
								<span class="prix">JOHN MAYER<span class="unit"> <!-- &euro; -->
								</span></span>
								<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
							</div>

							<div class="content">
								<ul>
									<li class="title">UDC SuperConcert#001 JOHN MAYER!</li>
									<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
									<li>존 메이어, 8년만에 다시 내한!</li>
									<li>올 겨울 크리스마스를 준비하세요!</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="article_card">
						<div class="bg-pic">
							<img src="../img/slidetest.jpg" alt="" aria-hidden="true" />
						</div>

						<div class="inner">
							<div class="header">
								<!-- <div class="prix">JOHN MAYER</div> -->
							</div>
							<div class="footer">
								<span class="prix">JOHN MAYER<span class="unit"> <!-- &euro; -->
								</span></span>
								<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
							</div>

							<div class="content">
								<ul>
									<li class="title">UDC SuperConcert#001 JOHN MAYER!</li>
									<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
									<li>존 메이어, 8년만에 다시 내한!</li>
									<li>올 겨울 크리스마스를 준비하세요!</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="article_card">
						<div class="bg-pic">
							<img src="../img/slidetest.jpg" alt="" aria-hidden="true" />
						</div>

						<div class="inner">
							<div class="header">
								<!-- <div class="prix">JOHN MAYER</div> -->
							</div>
							<div class="footer">
								<span class="prix">JOHN MAYER<span class="unit"> <!-- &euro; -->
								</span></span>
								<div>2022/12/23 ~ 2022/12/24, 신촌EZEN홀</div>
							</div>

							<div class="content">
								<ul>
									<li class="title">UDC SuperConcert#001 JOHN MAYER!</li>
									<li>롤링스톤즈 선정 2022년 세계 3대 기타리스트</li>
									<li>존 메이어, 8년만에 다시 내한!</li>
									<li>올 겨울 크리스마스를 준비하세요!</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</main>
</div>
<!-- content 바뀌는 부분 끝 -->

<%@ include file="../inc/bottom.jsp"%>