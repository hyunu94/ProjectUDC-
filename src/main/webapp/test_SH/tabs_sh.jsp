<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/board_sh.css">
<%@ include file="../inc/top.jsp"%>
</head>
<body>
	<div class="contents">
	
		<div class="catebutton">
			<span class="catechoice">카테고리 선택 &nbsp;&nbsp;</span>
			<button class="tablink" onclick="openPage('All', this, '#dfbc2a')" id="defaultOpen">전체</button>
			<button class="tablink" onclick="openPage('quest', this, '#dfbc2a')">질문</button>
			<button class="tablink" onclick="openPage('Review', this, '#dfbc2a')">후기</button>
			<button class="tablink" onclick="openPage('Chat', this, '#dfbc2a')">잡담</button>
			<button class="tablink"	onclick="openPage('together', this, '#dfbc2a')">같이가요</button>
		</div>		

		<div id="All" class="tabcontent">
			<!-- content - 바뀌는 부분 -->
			<div class="community_content">
				<div class="in_content">
					<table class="">
						<colgroup>
							<col style="width: 10%;" />
							<col style="width: 10%;" />
							<col style="width: 55%;" />
							<col style="width: 10%;" />
							<col style="width: 5%;" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="no"><span>번호</span></th>
								<th scope="col" class="m_no"><span>카테고리</span></th>
								<th scope="col" class="title"><span>제목</span></th>
								<th scope="col">날짜</th>
								<th scope="col" class="m_no"><span>조회</span></th>
							</tr>
						</thead>
						<tbody class="">
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/2490476089"><strong><span
											style="font-weight: bold;; color: #7f7f7f">【6/17 외부
												디도스 공격으로 인한 해외접속 차단 공지】</span></strong></a></td>
								< td class="time">06.17</td>
								<td class="m_no">243만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href=""><strong><span
											style="">【6/20 재업로드】신규카테 기존 게시물 이동 관련 안내</span></strong></a></td>
								<td class="time">01.27</td>
								<td class="m_no">25만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/1383792790"><strong><span
											style="font-weight: bold;; color: #6667ab">더쿠 이용 규칙</span></strong></a></td>
								<td class="time">20.04.29</td>
								<td class="m_no">1264만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/261437846"><strong><span
											style="font-weight: bold;; color: #8788bd">더쿠 필수 공지 ::
												성별관련 언금 공지 제발 정독 후 지키기! (위반 적발 시 차단 강화)</span></strong></a></td>
								<td class="time">16.05.21</td>
								<td class="m_no">1370만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/54943465"><strong><span
											style="font-weight: bold;; color: #7166ab">*.。+o●*.。【200430-200502
												더쿠 가입 마감 **현재 theqoo 가입 불가**】 *.。+o●*.。</span></strong></a> <a href="#">[4516]</a></td>
								<td class="time">15.02.16</td>
								<td class="m_no">514만</td>
							</tr>
							<tr class="notice nofn" data-document_srl="841733540"
								data-regdate="20180828010202" data-permanent-notice="Y">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color: #8ca9fb"><strong></strong></td>
								<td class="title"><a href="#"><strong><span
											style="font-weight: bold;; color: #ff00ff">[왕덬:공지정독바라]
												왕덬이 슼방/핫게 글이나 댓글 끌올해서 중계하는것도 작작하랬는데 안지켜지더라</span></strong></a> <a
									href="/841733540#841733540_comment" class="replyNum">[90]</a></td>
								<td class="time">18.08.28</td>
								<td class="m_no">162만</td>
							</tr>
							<tr>
								<td class="no">26675668</td>
								<td class="cate"><span>후기</span></td>
								<td class="title"><a href="#"><span style="">롤
											결승 진짜 존잼 미친경기</span></a></td>
								<td class="time">14:14</td>
								<td class="m_no">[6]</td>
							</tr>
							<tr>
								<td class="no">26675667</td>
								<td class="cate"><span>후기</span></td>
								<td class="title"><a href="#"><span style="">롤
											처음보는데 개재밌네 ㅋㅋㅋ</span></a></td>
								<td class="time">14:14</td>
								<td class="m_no">13</td>
							</tr>
							<tr>
								<td class="no">26675666</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">아이티대통령
											자택에서 암살당했대</span></a> <a href="#" class="replyNum">[1]</a></td>
								<td class="time">14:14</td>
								<td class="m_no">38</td>
							</tr>
							<tr>
								<td class="no">26675665</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">롤
											최애팀도 없는데 보다 쫄려서 나옴 ㅅㅂㅋㅋㅋ</span></a></td>
								<td class="time">14:14</td>
								<td class="m_no">19</td>
							</tr>
							<tr>
								<td class="no">26675664</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">크러쉬네
											댕댕이도 스피츠구나</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">20</td>
							</tr>
							<tr>
								<td class="no">26675663</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">킹겐
											오늘 알았는데 인생응원중...</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">10</td>
							</tr>
							<tr>
								<td class="no">26675662</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">와
											결승재밌닼ㅋㅋㅋㅋ나 5세트만보는데</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">38</td>
							</tr>
							<tr>
								<td class="no">26675661</td>
								<td class="cate"><span>질문</span></td>
								<td class="title"><a href="#"><span style="">남자들
											스포츠덬이랑 게임덬 중에 뭐가 더 많을까 궁금함</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">34</td>
							</tr>
							<tr>
								<td class="no">26675660</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">롤..
											페이커밖에 모름...</span></a> <a href="#" class="replyNum">[6]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">62</td>
							</tr>
							<tr>
								<td class="no">26675659</td>
								<td class="cate"><span>같이가요</span></td>
								<td class="title"><a href="#"><span style="">이번
											락콘서트 같이 갈사람?</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">32</td>
							</tr>
							<tr>
								<td class="no">26675658</td>
								<td class="cate"><span>질문</span></td>
								<td class="title"><a href="#"><span style="">너네
											네이버 지도 돼??</span></a> <a href="#" class="replyNum">[1]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">56</td>
							</tr>
							<tr>
								<td class="no">26675657</td>
								<td class="cate"><span>같이가요</span></td>
								<td class="title"><a href="#"><span style="">신촌
											장르 같이 갈랭?</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">31</td>
							</tr>
							<tr>
								<td class="no">26675656</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">결국
											네이버 안되는게 통신사때문인거네 어휴</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">144</td>
							</tr>
							<tr>
								<td class="no">26675655</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">아홉시에
											시작했는데 여태 해? 게이머들도 체력 엄청나구나</span></a> <a href="#" class="replyNum">[3]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">86</td>
							</tr>
							<tr>
								<td class="no">26675654</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">알엠
											인스타에 팬이 준 쪽지 내가 다 찡하네</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">51</td>
							</tr>
							<tr>
								<td class="no">26675653</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">디알엑스
											이기라고 ㅅㅂㅠ</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">36</td>
							</tr>
							<tr>
								<td class="no">26675652</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">ㅅㅂ
											하이퍼캐리형원딜 가자 씹</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">20</td>
							</tr>
							<tr>
								<td class="no">26675651</td>
								<td class="cate"><span style="">후기</span></td>
								<td class="title"><a href="#"><span style="">롤드컵
											알못인데 방금 뭔가 일어남</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">83</td>
							</tr>
							<tr>
								<td class="no">26675650</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">위버스
											쓰는 덬들 지금 들어가지니?</span></a> <a href="#" class="replyNum">[4]</a></td>
								<td class="time">14:12</td>
								<td class="m_no">56</td>
							</tr>
							<tr>
								<td class="no">26675649</td>
								<td class="cate"><span>질문</span></td>
								<td class="title"><a href="#"><span style="">갤럽
											결과 예능인부터 나오지?</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:12</td>
								<td class="m_no">42</td>
							</tr>
						</tbody>
					</table>
					<div class="">
						<div class="fr"></div>
					</div>
					<div class="" style="display: block;">
						<form name="frm" action="" method="get">
							<input type="hidden" name="act" value=""> <input
								type="hidden" name="vid" value=""> <input type="hidden"
								name="mid" value="ktalk"> <input type="hidden"
								name="category" value=""> <input type="hidden"
								name="group_srl" value=""> <select name="search_target">
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
					<table class="">
						<colgroup>
							<col style="width: 10%;" />
							<col style="width: 10%;" />
							<col style="width: 55%;" />
							<col style="width: 10%;" />
							<col style="width: 5%;" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="no"><span>번호</span></th>
								<th scope="col" class="m_no"><span>카테고리</span></th>
								<th scope="col" class="title"><span>제목</span></th>
								<th scope="col">날짜</th>
								<th scope="col" class="m_no"><span>조회</span></th>
							</tr>
						</thead>
						<tbody class="">
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/2490476089"><strong><span
											style="font-weight: bold;; color: #7f7f7f">【6/17 외부
												디도스 공격으로 인한 해외접속 차단 공지】</span></strong></a></td>
								<td class="time">06.17</td>
								<td class="m_no">243만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href=""><strong><span
											style="">【6/20 재업로드】신규카테 기존 게시물 이동 관련 안내</span></strong></a></td>
								<td class="time">01.27</td>
								<td class="m_no">25만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/1383792790"><strong><span
											style="font-weight: bold;; color: #6667ab">더쿠 이용 규칙</span></strong></a></td>
								<td class="time">20.04.29</td>
								<td class="m_no">1264만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/261437846"><strong><span
											style="font-weight: bold;; color: #8788bd">더쿠 필수 공지 ::
												성별관련 언금 공지 제발 정독 후 지키기! (위반 적발 시 차단 강화)</span></strong></a></td>
								<td class="time">16.05.21</td>
								<td class="m_no">1370만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/54943465"><strong><span
											style="font-weight: bold;; color: #7166ab">*.。+o●*.。【200430-200502
												더쿠 가입 마감 **현재 theqoo 가입 불가**】 *.。+o●*.。</span></strong></a> <a href="#">[4516]</a></td>
								<td class="time">15.02.16</td>
								<td class="m_no">514만</td>
							</tr>
							<tr class="notice nofn" data-document_srl="841733540"
								data-regdate="20180828010202" data-permanent-notice="Y">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color: #8ca9fb"><strong></strong></td>
								<td class="title"><a href="#"><strong><span
											style="font-weight: bold;; color: #ff00ff">[왕덬:공지정독바라]
												왕덬이 슼방/핫게 글이나 댓글 끌올해서 중계하는것도 작작하랬는데 안지켜지더라</span></strong></a> <a
									href="/841733540#841733540_comment" class="replyNum">[90]</a></td>
								<td class="time">18.08.28</td>
								<td class="m_no">162만</td>
							</tr>
							<tr>
								<td class="no">26675661</td>
								<td class="cate"><span>질문</span></td>
								<td class="title"><a href="#"><span style="">남자들
											스포츠덬이랑 게임덬 중에 뭐가 더 많을까 궁금함</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">34</td>
							</tr>
							<tr>
								<td class="no">26675658</td>
								<td class="cate"><span>질문</span></td>
								<td class="title"><a href="#"><span style="">너네
											네이버 지도 돼??</span></a> <a href="#" class="replyNum">[1]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">56</td>
							</tr>
							<tr>
								<td class="no">26675649</td>
								<td class="cate"><span>질문</span></td>
								<td class="title"><a href="#"><span style="">갤럽
											결과 예능인부터 나오지?</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:12</td>
								<td class="m_no">42</td>
							</tr>
						</tbody>
					</table>
					<div class="">
						<div class="fr"></div>
					</div>
					<div class="" style="display: block;">
						<form name="frm" action="" method="get">
							<input type="hidden" name="act" value=""> <input
								type="hidden" name="vid" value=""> <input type="hidden"
								name="mid" value="ktalk"> <input type="hidden"
								name="category" value=""> <input type="hidden"
								name="group_srl" value=""> <select name="search_target">
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
					<table class="">
						<colgroup>
							<col style="width: 10%;" />
							<col style="width: 10%;" />
							<col style="width: 55%;" />
							<col style="width: 10%;" />
							<col style="width: 5%;" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="no"><span>번호</span></th>
								<th scope="col" class="m_no"><span>카테고리</span></th>
								<th scope="col" class="title"><span>제목</span></th>
								<th scope="col">날짜</th>
								<th scope="col" class="m_no"><span>조회</span></th>
							</tr>
						</thead>
						<tbody class="">
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/2490476089"><strong><span
											style="font-weight: bold;; color: #7f7f7f">【6/17 외부
												디도스 공격으로 인한 해외접속 차단 공지】</span></strong></a></td>
								<td class="time">06.17</td>
								<td class="m_no">243만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href=""><strong><span
											style="">【6/20 재업로드】신규카테 기존 게시물 이동 관련 안내</span></strong></a></td>
								<td class="time">01.27</td>
								<td class="m_no">25만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/1383792790"><strong><span
											style="font-weight: bold;; color: #6667ab">더쿠 이용 규칙</span></strong></a></td>
								<td class="time">20.04.29</td>
								<td class="m_no">1264만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/261437846"><strong><span
											style="font-weight: bold;; color: #8788bd">더쿠 필수 공지 ::
												성별관련 언금 공지 제발 정독 후 지키기! (위반 적발 시 차단 강화)</span></strong></a></td>
								<td class="time">16.05.21</td>
								<td class="m_no">1370만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/54943465"><strong><span
											style="font-weight: bold;; color: #7166ab">*.。+o●*.。【200430-200502
												더쿠 가입 마감 **현재 theqoo 가입 불가**】 *.。+o●*.。</span></strong></a> <a href="#">[4516]</a></td>
								<td class="time">15.02.16</td>
								<td class="m_no">514만</td>
							</tr>
							<tr class="notice nofn" data-document_srl="841733540"
								data-regdate="20180828010202" data-permanent-notice="Y">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color: #8ca9fb"><strong></strong></td>
								<td class="title"><a href="#"><strong><span
											style="font-weight: bold;; color: #ff00ff">[왕덬:공지정독바라]
												왕덬이 슼방/핫게 글이나 댓글 끌올해서 중계하는것도 작작하랬는데 안지켜지더라</span></strong></a> <a
									href="/841733540#841733540_comment" class="replyNum">[90]</a></td>
								<td class="time">18.08.28</td>
								<td class="m_no">162만</td>
							</tr>
							<tr>
								<td class="no">26675668</td>
								<td class="cate"><span>후기</span></td>
								<td class="title"><a href="#"><span style="">롤
											결승 진짜 존잼 미친경기</span></a></td>
								<td class="time">14:14</td>
								<td class="m_no">[6]</td>
							</tr>
							<tr>
								<td class="no">26675667</td>
								<td class="cate"><span>후기</span></td>
								<td class="title"><a href="#"><span style="">롤
											처음보는데 개재밌네 ㅋㅋㅋ</span></a></td>
								<td class="time">14:14</td>
								<td class="m_no">13</td>
							</tr>
							<tr>
								<td class="no">26675651</td>
								<td class="cate"><span style="">후기</span></td>
								<td class="title"><a href="#"><span style="">롤드컵
											알못인데 방금 뭔가 일어남</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">83</td>
							</tr>
						</tbody>
					</table>
					<div class="">
						<div class="fr"></div>
					</div>
					<div class="" style="display: block;">
						<form name="frm" action="" method="get">
							<input type="hidden" name="act" value=""> <input
								type="hidden" name="vid" value=""> <input type="hidden"
								name="mid" value="ktalk"> <input type="hidden"
								name="category" value=""> <input type="hidden"
								name="group_srl" value=""> <select name="search_target">
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
					<table class="">
						<colgroup>
							<col style="width: 10%;" />
							<col style="width: 10%;" />
							<col style="width: 55%;" />
							<col style="width: 10%;" />
							<col style="width: 5%;" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="no"><span>번호</span></th>
								<th scope="col" class="m_no"><span>카테고리</span></th>
								<th scope="col" class="title"><span>제목</span></th>
								<th scope="col">날짜</th>
								<th scope="col" class="m_no"><span>조회</span></th>
							</tr>
						</thead>
						<tbody class="">
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/2490476089"><strong><span
											style="font-weight: bold;; color: #7f7f7f">【6/17 외부
												디도스 공격으로 인한 해외접속 차단 공지】</span></strong></a></td>
								<td class="time">06.17</td>
								<td class="m_no">243만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href=""><strong><span
											style="">【6/20 재업로드】신규카테 기존 게시물 이동 관련 안내</span></strong></a></td>
								<td class="time">01.27</td>
								<td class="m_no">25만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/1383792790"><strong><span
											style="font-weight: bold;; color: #6667ab">더쿠 이용 규칙</span></strong></a></td>
								<td class="time">20.04.29</td>
								<td class="m_no">1264만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/261437846"><strong><span
											style="font-weight: bold;; color: #8788bd">더쿠 필수 공지 ::
												성별관련 언금 공지 제발 정독 후 지키기! (위반 적발 시 차단 강화)</span></strong></a></td>
								<td class="time">16.05.21</td>
								<td class="m_no">1370만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/54943465"><strong><span
											style="font-weight: bold;; color: #7166ab">*.。+o●*.。【200430-200502
												더쿠 가입 마감 **현재 theqoo 가입 불가**】 *.。+o●*.。</span></strong></a> <a href="#">[4516]</a></td>
								<td class="time">15.02.16</td>
								<td class="m_no">514만</td>
							</tr>
							<tr class="notice nofn" data-document_srl="841733540"
								data-regdate="20180828010202" data-permanent-notice="Y">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color: #8ca9fb"><strong></strong></td>
								<td class="title"><a href="#"><strong><span
											style="font-weight: bold;; color: #ff00ff">[왕덬:공지정독바라]
												왕덬이 슼방/핫게 글이나 댓글 끌올해서 중계하는것도 작작하랬는데 안지켜지더라</span></strong></a> <a
									href="/841733540#841733540_comment" class="replyNum">[90]</a></td>
								<td class="time">18.08.28</td>
								<td class="m_no">162만</td>
							</tr>
							<tr>
								<td class="no">26675666</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">아이티대통령
											자택에서 암살당했대</span></a> <a href="#" class="replyNum">[1]</a></td>
								<td class="time">14:14</td>
								<td class="m_no">38</td>
							</tr>
							<tr>
								<td class="no">26675665</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">롤
											최애팀도 없는데 보다 쫄려서 나옴 ㅅㅂㅋㅋㅋ</span></a></td>
								<td class="time">14:14</td>
								<td class="m_no">19</td>
							</tr>
							<tr>
								<td class="no">26675664</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">크러쉬네
											댕댕이도 스피츠구나</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">20</td>
							</tr>
							<tr>
								<td class="no">26675663</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">킹겐
											오늘 알았는데 인생응원중...</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">10</td>
							</tr>
							<tr>
								<td class="no">26675662</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">와
											결승재밌닼ㅋㅋㅋㅋ나 5세트만보는데</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">38</td>
							</tr>
							<tr>
								<td class="no">26675660</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">롤..
											페이커밖에 모름...</span></a> <a href="#" class="replyNum">[6]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">62</td>
							</tr>
							<tr>
								<td class="no">26675656</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">결국
											네이버 안되는게 통신사때문인거네 어휴</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">144</td>
							</tr>
							<tr>
								<td class="no">26675655</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">아홉시에
											시작했는데 여태 해? 게이머들도 체력 엄청나구나</span></a> <a href="#" class="replyNum">3</a></td>
								<td class="time">14:13</td>
								<td class="m_no">86</td>
							</tr>
							<tr>
								<td class="no">26675654</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">알엠
											인스타에 팬이 준 쪽지 내가 다 찡하네</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">51</td>
							</tr>
							<tr>
								<td class="no">26675653</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">디알엑스
											이기라고 ㅅㅂㅠ</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">36</td>
							</tr>
							<tr>
								<td class="no">26675652</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">ㅅㅂ
											하이퍼캐리형원딜 가자 씹</span></a></td>
								<td class="time">14:12</td>
								<td class="m_no">20</td>
							</tr>
							<tr>
								<td class="no">26675650</td>
								<td class="cate"><span>잡담</span></td>
								<td class="title"><a href="#"><span style="">위버스
											쓰는 덬들 지금 들어가지니?</span></a> <a href="#" class="replyNum">4</a></td>
								<td class="time">14:12</td>
								<td class="m_no">56</td>
							</tr>
						</tbody>
					</table>
					<div class="">
						<div class="fr"></div>
					</div>
					<div class="" style="display: block;">
						<form name="frm" action="" method="get">
							<input type="hidden" name="act" value=""> <input
								type="hidden" name="vid" value=""> <input type="hidden"
								name="mid" value="ktalk"> <input type="hidden"
								name="category" value=""> <input type="hidden"
								name="group_srl" value=""> <select name="search_target">
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
					<table class="">
						<colgroup>
							<col style="width: 10%;" />
							<col style="width: 10%;" />
							<col style="width: 55%;" />
							<col style="width: 10%;" />
							<col style="width: 5%;" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="no"><span>번호</span></th>
								<th scope="col" class="m_no"><span>카테고리</span></th>
								<th scope="col" class="title"><span>제목</span></th>
								<th scope="col">날짜</th>
								<th scope="col" class="m_no"><span>조회</span></th>
							</tr>
						</thead>
						<tbody class="">
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/2490476089"><strong><span
											style="font-weight: bold;; color: #7f7f7f">【6/17 외부
												디도스 공격으로 인한 해외접속 차단 공지】</span></strong></a></td>
								<td class="time">06.17</td>
								<td class="m_no">243만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href=""><strong><span
											style="">【6/20 재업로드】신규카테 기존 게시물 이동 관련 안내</span></strong></a></td>
								<td class="time">01.27</td>
								<td class="m_no">25만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/1383792790"><strong><span
											style="font-weight: bold;; color: #6667ab">더쿠 이용 규칙</span></strong></a></td>
								<td class="time">20.04.29</td>
								<td class="m_no">1264만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/261437846"><strong><span
											style="font-weight: bold;; color: #8788bd">더쿠 필수 공지 ::
												성별관련 언금 공지 제발 정독 후 지키기! (위반 적발 시 차단 강화)</span></strong></a></td>
								<td class="time">16.05.21</td>
								<td class="m_no">1370만</td>
							</tr>
							<tr class="">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color:"><strong></strong></td>
								<td class="title"><a href="/54943465"><strong><span
											style="font-weight: bold;; color: #7166ab">*.。+o●*.。【200430-200502
												더쿠 가입 마감 **현재 theqoo 가입 불가**】 *.。+o●*.。</span></strong></a> <a href="#">[4516]</a></td>
								<td class="time">15.02.16</td>
								<td class="m_no">514만</td>
							</tr>
							<tr class="notice nofn" data-document_srl="841733540"
								data-regdate="20180828010202" data-permanent-notice="Y">
								<td class="no"><strong> 공지 </strong></td>
								<td class="cate" style="color: #8ca9fb"><strong></strong></td>
								<td class="title"><a href="#"><strong><span
											style="font-weight: bold;; color: #ff00ff">[왕덬:공지정독바라]
												왕덬이 슼방/핫게 글이나 댓글 끌올해서 중계하는것도 작작하랬는데 안지켜지더라</span></strong></a> <a
									href="/841733540#841733540_comment" class="replyNum">[90]</a></td>
								<td class="time">18.08.28</td>
								<td class="m_no">162만</td>
							</tr>
							<tr>
								<td class="no">26675659</td>
								<td class="cate"><span>같이가요</span></td>
								<td class="title"><a href="#"><span style="">이번
											락콘서트 같이 갈사람?</span></a> <a href="#" class="replyNum">[2]</a></td>
								<td class="time">14:13</td>
								<td class="m_no">32</td>
							</tr>
							<tr>
								<td class="no">26675657</td>
								<td class="cate"><span>같이가요</span></td>
								<td class="title"><a href="#"><span style="">신촌
											장르 같이 갈랭?</span></a></td>
								<td class="time">14:13</td>
								<td class="m_no">31</td>
							</tr>
						</tbody>
					</table>
					<div class="">
						<div class="fr"></div>
					</div>
					<div class="" style="display: block;">
						<form name="frm" action="" method="get">
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
				</div>
			</div>
			<!-- content 바뀌는 부분 끝 -->
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
</body>
<%@ include file="../inc/bottom.jsp"%>