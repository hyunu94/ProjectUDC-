<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/cDetail.css" />
</head>
<body>
	<div class="div0">
		<h3>공연정보</h3>
		<div class="div_img">
			<input type="image" src="../img/11.jpg" name="main_img" class="main_img">
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
						<span class="answer" id="artist">휘트니 휴스턴 Whitney Houston</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question"> 공연 제목</span>
					</td>
					<td>
						<span class="answer" id="title">영원한 팝의 여왕의 귀환</span>
					</td>
				</tr>			
				<tr>
					<td style="border-bottom: none;">
						<span class="question">소개</span>
					</td>
					<td style="border-bottom: none;">
						<span class="answer" id="content1">The night we held on till the morning</span>
					</td>
				</tr>			
				<tr>
					<td style="border-bottom: none;">
						<span class="question"></span>
					</td>
					<td style="border-bottom: none;">
						<span class="answer" id="content2">You know you'll never love that way again</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question"></span>
					</td>
					<td>
						<span class="answer" id=content3>Didn't we almost have it all</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 일정</span>
					</td>
					<td>
						<span class="answer" id="date">2022-12-23 ~ 2022-12-24</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 시각</span>
					</td>
					<td>
						<span class="answer" id="time">19:00</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 가격</span>
					</td>
					<td>
						<span class="answer" id="price">50,000</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">공연 장소</span>
					</td>
					<td>
						<span class="answer" id="location">이젠 아카데미 신촌</span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">주소</span>
					</td>
					<td>
						<span class="answer" id="address">서울특별시 서대문구 신촌로 141 위고인빌딩 1층 <a href="#" style="text-decoration: none;">&nbsp;[위치보기]</a> </span>
					</td>
				</tr>			
				<tr>
					<td>
						<span class="question">문의 전화</span>
					</td>
					<td>
						<span class="answer" id="tel">010-7878-8787</span>
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
</body>
</html>