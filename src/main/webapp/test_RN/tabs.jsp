<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/board.css">
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var str = $('tr').find('span').val();
		
		if (str=='공지') {
			$(this).css('background','pink');
		}		
	});
</script>
<style>
* {
	box-sizing: border-box
}

.contents {
	max-width: 1000px;
	margin: 0 auto;
}

/* Style tab links */
.tablink {
	background-color: #55555580;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
}

.tablink:hover {
	background-color: #777;
}

.grid-container {
	display: grid;
	grid-template-columns: 15%;
	margin-bottom: 20px;
}

.grid03>.grid-item3 {
	grid-column: 1/3;
}

div.grid-item1 {
	text-align: center;
	margin-top: 10%;
	font-size: 25px;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
	color: white;
	display: none;
	padding: 25px 20px;
	height: 100%;
}

#All, #quest, #Review, #Chat, #together {
	background-color: white;
}

.in_content h1 {
	font-size: 25px;
	font-weight: bold;
	color: black;
}

.board {
	width: 100%;
}

.board th {
	color: gray;
}

.board tr {
	border-bottom: 1px solid lightgray;

}

input[type="submit"] {
	background: #ffffff;
	color: #212529;
	border-radius: 0.5em;
}

input[type="submit"]:hover {
	background: #212529;
	color: white;
	border-radius: 0.5em;
	transition: 0.5s;
}
</style>
</head>
<body>
	<div class="contents">

		<div class="grid-container grid03">
			<div class="grid-item1">
				<b>전체 게시판</b>
			</div>
			<div class="grid-item2">
				<button class="tablink" onclick="openPage('All', this, '#212529')"
					id="defaultOpen">전체</button>
				<button class="tablink"
					onclick="openPage('Review', this, '#212529')">후기</button>
				<button class="tablink" onclick="openPage('Chat', this, '#212529')">잡담</button>
				<button class="tablink"
					onclick="openPage('together', this, '#212529')">같이가요</button>
			</div>
			<div class="grid-item3">

				<div id="All" class="tabcontent">
					<!-- content - 바뀌는 부분 -->
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 70%;" />
									<col style="width: 7%;" />
									<col style="width: 7%;" />
									<col style="width: 5%;" />
									<col style="width: 5%;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="no"><span>번호</span></th>
										<th scope="col" class="title"><span>제목</span></th>
										<th scope="col" class="writer"><span>글쓴이</span></th>
										<th scope="col" class="regdate"><span>등록일</span></th>
										<th scope="col" class="recommand"><span>추천</span></th>
										<th scope="col" class="m_no"><span>조회</span></th>
									</tr>
								</thead>
								<tbody>
									<tr>

										<td>공지</td>
										<td>제목+이미지+댓글수</td>
										<td>3</td>
										<td>4</td>
										<td>5</td>
										<td>5</td>
									</tr>
									<tr>

										<td>1</td>
										<td>제목+이미지+댓글수</td>
										<td>3</td>
										<td>4</td>
										<td>5</td>
										<td>5</td>
									</tr>
								</tbody>
							</table>
							<div class="board">
								<div class="fr"></div>
							</div>
							<div class="board" style="display: block;">
								<form name="frm" action="" method="get">
									<input type="hidden" name="act" value=""> <input
										type="hidden" name="vid" value=""> <input
										type="hidden" name="mid" value="ktalk"> <input
										type="hidden" name="category" value=""> <input
										type="hidden" name="group_srl" value=""> <select
										name="search_target">
										<option value="title_content">전체</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select> <input type="text" name="search_keyword" value=""> <input
										type="submit" value="검색">
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="quest" class="tabcontent">
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 70%;" />
									<col style="width: 7%;" />
									<col style="width: 7%;" />
									<col style="width: 5%;" />
									<col style="width: 5%;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="no"><span>번호</span></th>
										<th scope="col" class="title"><span>제목</span></th>
										<th scope="col" class="writer"><span>글쓴이</span></th>
										<th scope="col" class="regdate"><span>등록일</span></th>
										<th scope="col" class="recommand"><span>추천</span></th>
										<th scope="col" class="m_no"><span>조회</span></th>
									</tr>
								</thead>
								<tbody>
									<tr>

										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<div class="board">
								<div class="fr"></div>
							</div>
							<div class="board" style="display: block;">
								<form name="frm" action="" method="get">
									<input type="hidden" name="act" value=""> <input
										type="hidden" name="vid" value=""> <input
										type="hidden" name="mid" value="ktalk"> <input
										type="hidden" name="category" value=""> <input
										type="hidden" name="group_srl" value=""> <select
										name="search_target">
										<option value="title_content">전체</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select> <input type="text" name="search_keyword" value=""> <input
										type="submit" value="검색">
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="Review" class="tabcontent">
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 70%;" />
									<col style="width: 7%;" />
									<col style="width: 7%;" />
									<col style="width: 5%;" />
									<col style="width: 5%;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="no"><span>번호</span></th>
										<th scope="col" class="title"><span>제목</span></th>
										<th scope="col" class="writer"><span>글쓴이</span></th>
										<th scope="col" class="regdate"><span>등록일</span></th>
										<th scope="col" class="recommand"><span>추천</span></th>
										<th scope="col" class="m_no"><span>조회</span></th>
									</tr>
								</thead>
								<tbody>
									<tr>

										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<div class="board">
								<div class="fr"></div>
							</div>
							<div class="board" style="display: block;">
								<form name="frm" action="" method="get">
									<input type="hidden" name="act" value=""> <input
										type="hidden" name="vid" value=""> <input
										type="hidden" name="mid" value="ktalk"> <input
										type="hidden" name="category" value=""> <input
										type="hidden" name="group_srl" value=""> <select
										name="search_target">
										<option value="title_content">전체</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select> <input type="text" name="search_keyword" value=""> <input
										type="submit" value="검색">
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="Chat" class="tabcontent">
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 70%;" />
									<col style="width: 7%;" />
									<col style="width: 7%;" />
									<col style="width: 5%;" />
									<col style="width: 5%;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="no"><span>번호</span></th>
										<th scope="col" class="title"><span>제목</span></th>
										<th scope="col" class="writer"><span>글쓴이</span></th>
										<th scope="col" class="regdate"><span>등록일</span></th>
										<th scope="col" class="recommand"><span>추천</span></th>
										<th scope="col" class="m_no"><span>조회</span></th>
									</tr>
								</thead>
								<tbody>
									<tr>

										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<div class="board">
								<div class="fr"></div>
							</div>
							<div class="board" style="display: block;">
								<form name="frm" action="" method="get">
									<input type="hidden" name="act" value=""> <input
										type="hidden" name="vid" value=""> <input
										type="hidden" name="mid" value="ktalk"> <input
										type="hidden" name="category" value=""> <input
										type="hidden" name="group_srl" value=""> <select
										name="search_target">
										<option value="title_content">전체</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select> <input type="text" name="search_keyword" value=""> <input
										type="submit" value="검색">
								</form>
							</div>
						</div>
					</div>
					<!-- content 바뀌는 부분 끝 -->
				</div>

				<div id="together" class="tabcontent">
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 70%;" />
									<col style="width: 7%;" />
									<col style="width: 7%;" />
									<col style="width: 5%;" />
									<col style="width: 5%;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="no"><span>번호</span></th>
										<th scope="col" class="title"><span>제목</span></th>
										<th scope="col" class="writer"><span>글쓴이</span></th>
										<th scope="col" class="regdate"><span>등록일</span></th>
										<th scope="col" class="recommand"><span>추천</span></th>
										<th scope="col" class="m_no"><span>조회</span></th>
									</tr>
								</thead>
								<tbody>
									<tr>

										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<div class="board">
								<div class="fr"></div>
							</div>
							<div class="board" style="display: block;">
								<form name="frm" action="" method="get">
									<input type="hidden" name="act" value=""> <input
										type="hidden" name="vid" value=""> <input
										type="hidden" name="mid" value="ktalk"> <input
										type="hidden" name="category" value=""> <input
										type="hidden" name="group_srl" value=""> <select
										name="search_target">
										<option value="title_content">전체</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select> <input type="text" name="search_keyword" value=""> <input
										type="submit" value="검색">
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