<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" href="../css/nList.css">
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var str = $('tr').find('span').val();
		
		if (str=='공지') {
			$(this).css('background','pink');
		}		
	});
</script>
</head>
<body>
	<div class="contents">

		<div class="grid-container grid03">
			<div class="grid-item1">
				<b>커뮤니티</b>
			</div>
			<div class="tab">
				<button class="tablink" onclick="openPage('All', this, '#eeeeee')" id="defaultOpen">전체</button>
				<button class="tablink" onclick="openPage('Review', this, '#eeeeee')">후기</button>
				<button class="tablink" onclick="openPage('Chat', this, '#eeeeee')">잡담</button>
				<button class="tablink" onclick="openPage('together', this, '#eeeeee')">같이가요</button>
			</div>
			<div class="grid-item3">

				<div id="All" class="tabcontent">
					<!-- content - 바뀌는 부분 -->
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 9%;" />
									<col style="width: 55%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
								</colgroup>
								<thead>
									<tr>
										<td scope="col" class="no"><span>번호</span></td>
										<td scope="col" class="title" style="text-align: center;"><span>제목</span></td>
										<td scope="col" class="writer"><span>글쓴이</span></td>
										<td scope="col" class="regdate"><span>등록일</span></td>
										<td scope="col" class="count"><span>조회</span></td>
										<td scope="col" class="recommand"><span>추천</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공지</td>
										<td><a href="#" style="text-decoration: none; color:black;">글쓰기 공지사항을 준수해주세요</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">관리자</a></td>
										<td>2022-10-01</td>
										<td>200</td>
										<td>99</td>
									</tr>
									<!-- 반복구간(시작) -->
									<tr>
										<td>1</td>
										<td><a href="#" style="text-decoration: none; color:black;">1등</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">홍길동</a></td>
										<td>2022-10-02</td>
										<td>10</td>
										<td>213</td>
									</tr>
									<!-- 반복구간(끝) -->
								</tbody>
							</table>
							<div class="addons" style="display: block;">
								<form name="frm" action="" method="get">
									<div class="addons2" style="display: block;">
										<select name="search_target" class="sel1">
											<option value="title_content">전체</option>
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select> 
										<input type="text" name="search_keyword" class="keyw" value="" > 
										<input type="submit" class="sub1" value="검색">
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="Review" class="tabcontent">
					<!-- content - 바뀌는 부분 -->
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 9%;" />
									<col style="width: 55%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
								</colgroup>
								<thead>
									<tr>
										<td scope="col" class="no"><span>번호</span></td>
										<td scope="col" class="title" style="text-align: center;"><span>제목</span></td>
										<td scope="col" class="writer"><span>글쓴이</span></td>
										<td scope="col" class="regdate"><span>등록일</span></td>
										<td scope="col" class="count"><span>조회</span></td>
										<td scope="col" class="recommand"><span>추천</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공지</td>
										<td><a href="#" style="text-decoration: none; color:black;">글쓰기 공지사항을 준수해주세요</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">관리자</a></td>
										<td>2022-10-01</td>
										<td>200</td>
										<td>99</td>
									</tr>
									<!-- 반복구간(시작) -->
									<tr>
										<td>1</td>
										<td><a href="#" style="text-decoration: none; color:black;">후기게시판</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">홍길동</a></td>
										<td>2022-10-02</td>
										<td>10</td>
										<td>213</td>
									</tr>
									<!-- 반복구간(끝) -->
								</tbody>
							</table>
							<div class="addons" style="display: block;">
								<form name="frm" action="" method="get">
									<div class="addons2" style="display: block;">
										<select name="search_target" class="sel1">
											<option value="title_content">전체</option>
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select> 
										<input type="text" name="search_keyword" class="keyw" value="" > 
										<input type="submit" class="sub1" value="검색">
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="Chat" class="tabcontent">
					<!-- content - 바뀌는 부분 -->
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 9%;" />
									<col style="width: 55%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
								</colgroup>
								<thead>
									<tr>
										<td scope="col" class="no"><span>번호</span></td>
										<td scope="col" class="title" style="text-align: center;"><span>제목</span></td>
										<td scope="col" class="writer"><span>글쓴이</span></td>
										<td scope="col" class="regdate"><span>등록일</span></td>
										<td scope="col" class="count"><span>조회</span></td>
										<td scope="col" class="recommand"><span>추천</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공지</td>
										<td><a href="#" style="text-decoration: none; color:black;">글쓰기 공지사항을 준수해주세요</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">관리자</a></td>
										<td>2022-10-01</td>
										<td>200</td>
										<td>99</td>
									</tr>
									<!-- 반복구간(시작) -->
									<tr>
										<td>1</td>
										<td><a href="#" style="text-decoration: none; color:black;">잡담게시판</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">홍길동</a></td>
										<td>2022-10-02</td>
										<td>10</td>
										<td>213</td>
									</tr>
									<!-- 반복구간(끝) -->
								</tbody>
							</table>
							<div class="addons" style="display: block;">
								<form name="frm" action="" method="get">
									<div class="addons2" style="display: block;">
										<select name="search_target" class="sel1">
											<option value="title_content">전체</option>
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select> 
										<input type="text" name="search_keyword" class="keyw" value="" > 
										<input type="submit" class="sub1" value="검색">
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="together" class="tabcontent">
					<!-- content - 바뀌는 부분 -->
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 9%;" />
									<col style="width: 55%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
									<col style="width: 9%;" />
								</colgroup>
								<thead>
									<tr>
										<td scope="col" class="no"><span>번호</span></td>
										<td scope="col" class="title" style="text-align: center;"><span>제목</span></td>
										<td scope="col" class="writer"><span>글쓴이</span></td>
										<td scope="col" class="regdate"><span>등록일</span></td>
										<td scope="col" class="count"><span>조회</span></td>
										<td scope="col" class="recommand"><span>추천</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공지</td>
										<td><a href="#" style="text-decoration: none; color:black;">글쓰기 공지사항을 준수해주세요</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">관리자</a></td>
										<td>2022-10-01</td>
										<td>200</td>
										<td>99</td>
									</tr>
									<!-- 반복구간(시작) -->
									<tr>
										<td>1</td>
										<td><a href="#" style="text-decoration: none; color:black;">같이가요 게시판</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">홍길동</a></td>
										<td>2022-10-02</td>
										<td>10</td>
										<td>213</td>
									</tr>
									<!-- 반복구간(끝) -->
								</tbody>
							</table>
							<div class="addons" style="display: block;">
								<form name="frm" action="" method="get">
									<div class="addons2" style="display: block;">
										<select name="search_target" class="sel1">
											<option value="title_content">전체</option>
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select> 
										<input type="text" name="search_keyword" class="keyw" value="" > 
										<input type="submit" class="sub1" value="검색">
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>
			</div>
		</div>
	</div>
	<script>
		function openPage(pageName, elmnt, color) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].style.backgroundColor = "";
			}
			document.getElementById(pageName).style.display = "block";
			elmnt.style.backgroundColor = color;
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
	
<%@ include file="../inc/bottom.jsp"%>