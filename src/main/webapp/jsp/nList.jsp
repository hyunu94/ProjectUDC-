<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- content -->
<link rel="stylesheet" href="../css/board.css">
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 10px;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

.page {
	text-align: center;
}

.write {
	position: absolute;
}

input.btn.btn-outline-dark.me-2 {
	height: 30px;
	padding: 0% 10% 0 10%;
}

.board {
	text-align: center;
	margin-top: 10px;
	margin-bottom: 10px;
}
</style>
<div class="body">
	<div class="wrapper">
		<div class="coummunity">
			<p>커뮤니티</p>
		</div>

		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'Tokyo')">같이 가요</button>
			<button class="tablinks" onclick="openCity(event, 'Paris')">후기</button>
			<button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">전체</button>
		</div>

		<div class="tabcontent_mold">
			<div id="London" class="tabcontent">
				<h3>London</h3>
				<p>London is the capital city of England.</p>
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
				<div class="board" style="display: block;">
					<form name="frm" action="" method="get">
						<div class="write">
							<input type="button" class="btn.btn-outline-dark.me-2" value="글쓰기">
						</div>
						<input type="hidden" name="act" value=""> 
						<input type="hidden" name="vid" value=""> 
						<input type="hidden" name="mid" value="ktalk"> 
						<input type="hidden" name="category" value=""> 
						<input type="hidden" name="group_srl" value=""> 
						<select name="search_target">
							<option value="title_content">전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> 
						<input type="text" name="search_keyword" value=""> 
						<input type="submit" value="검색">
					</form>
				</div>
				<div class="page">
					<p>페이징 뷰 자리</p>
				</div>
			</div>

			<div id="Paris" class="tabcontent">
				<h3>Paris</h3>
				<p>Paris is the capital of France.</p>
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
				<div class="board" style="display: block;">
					<form name="frm" action="" method="get">
						<div class="write">
							<input type="button" class="btn.btn-outline-dark.me-2" value="글쓰기">
						</div>
						<input type="hidden" name="act" value=""> 
						<input type="hidden" name="vid" value=""> 
						<input type="hidden" name="mid" value="ktalk"> 
						<input type="hidden" name="category" value=""> 
						<input type="hidden" name="group_srl" value=""> 
						<select name="search_target">
							<option value="title_content">전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> 
						<input type="text" name="search_keyword" value=""> 
						<input type="submit" value="검색">
					</form>
				</div>
				<div class="page">
					<p>페이징 뷰 자리</p>
				</div>
			</div>

			<div id="Tokyo" class="tabcontent">
				<h3>Tokyo</h3>
				<p>Tokyo is the capital of Japan.</p>
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
				<div class="board" style="display: block;">
					<form name="frm" action="" method="get">
						<div class="write">
							<input type="button" class="btn.btn-outline-dark.me-2" value="글쓰기">
						</div>
						<input type="hidden" name="act" value=""> 
						<input type="hidden" name="vid" value=""> 
						<input type="hidden" name="mid" value="ktalk"> 
						<input type="hidden" name="category" value=""> 
						<input type="hidden" name="group_srl" value=""> 
						<select name="search_target">
							<option value="title_content">전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> 
						<input type="text" name="search_keyword" value=""> 
						<input type="submit" value="검색">
					</form>
				</div>
				<div class="page">
					<p>페이징 뷰 자리</p>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
	//Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>
<%@ include file="../inc/bottom.jsp"%>