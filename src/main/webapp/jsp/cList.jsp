<%@page import="com.project.member.model.MemberVO"%>
<%@page import="com.project.member.model.MemberService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.project.v_list.model.ConcertListVO"%>
<%@page import="java.util.List"%>
<%@page import="com.project.concert.model.ConcertService"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" href="../css/cList.css">
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var str = $('tr').find('span').val();
		
		if (str=='공지') {
			$(this).css('background','pink');
		}		
	});
</script>
<%  
	String cl_userid=(String)session.getAttribute("userid");
	boolean cl_login = false;
	
	if(cl_userid!=null && !cl_userid.isEmpty()){ //세션에 값이 있으면 로그인된 상태
		cl_login = true;
	}
	
	request.setCharacterEncoding("utf-8");
	String condition=request.getParameter("search_Condition");	
	String keyword=request.getParameter("search_Keyword");	

	if(keyword==null) keyword="";
	
	MemberService memberService = new MemberService();

	ConcertService concertservice = new ConcertService();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	List<ConcertListVO> list = null;
	MemberVO memberVo=null;
	try{
		list = concertservice.selectAll(condition, keyword);	
		
		if(cl_userid!=null && !cl_userid.isEmpty()){
			memberVo=memberService.selectByUserid(cl_userid);
		}
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	//페이징 처리
	
	int currentPage=1;
	
	if(request.getParameter("currentPage")!=null){
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
	}
	
	int totalRecord=0;  
	if(list!=null && !list.isEmpty()){
		totalRecord=list.size();				
	}
	
	int pageSize=10;  
	int totalPage = (int)Math.ceil((float)totalRecord/pageSize); 
	int blockSize=10; 
	
	int firstPage=currentPage-((currentPage-1)%blockSize); 
	
	int lastPage=firstPage+(blockSize-1);
	
	int curPos = (currentPage-1)*pageSize; 
	
	int num=totalRecord-curPos; 
	
%>
</head>
<body>
	<div class="contents">
		<div class="grid-container grid03">
			<div class="grid-item1">
				<b>공연정보</b>
			</div>
			<div class="tab">
				<button style="display: none;" class="tablink" onclick="openPage('All', this, '#eeeeee')" id="defaultOpen">전체</button>
				<button style="display: none;" class="tablink" onclick="openPage('Review', this, '#eeeeee')">후기</button>
				<button style="display: none;" class="tablink" onclick="openPage('Chat', this, '#eeeeee')">잡담</button>
				<button style="display: none;" class="tablink" onclick="openPage('together', this, '#eeeeee')">같이가요</button>
			</div>
			<div class="grid-item3">

				<div id="All" class="tabcontent">
					<div class="community_content">
						<div class="in_content">
							<table class="board">
								<colgroup>
									<col style="width: 10%;" />
									<col style="width: 55%;" />
									<col style="width: 20%;" />
									<col style="width: 15%;" />
								</colgroup>
								<thead>
									<tr>
										<td scope="col" class="no"><span>번호</span></td>
										<td scope="col" class="title" style="text-align: center;"><span>제목</span></td>
										<td scope="col" class="writer"><span>글쓴이</span></td>
										<td scope="col" class="regdate"><span>등록일</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공지</td>
										<td><a href="#" style="text-decoration: none; color:black;">글쓰기 공지사항을 준수해주세요</a></td>
										<td><a href="#" style="text-decoration: none; color:black;">관리자</a></td>
										<td>2022-10-01</td>
									</tr>
									<!-- 반복구간(시작) -->
									<%for(int i=0;i<pageSize;i++){
										if(num<1) break;
										
										ConcertListVO vo = list.get(curPos++);
										num--;	
									%>
									<tr>
										<td><%=vo.getConcertNo() %></td>
										<td><a href="cDetail.jsp?concertNo=<%=vo.getConcertNo() %>" style="text-decoration: none; color:black;"><%=vo.getArtist() + " - " + vo.getTitle() %></a></td>
										<td><a href="#" style="text-decoration: none; color:black;"><%=vo.getName() %></a></td>
										<td><%=sdf.format(vo.getRegdate())%></td>
									</tr>
									<%}%>
									<!-- 반복구간(끝) -->
								</tbody>
							</table>
							<div class="btn_write" style="display: block;">
							<%if(cl_login){ 
								if(memberVo.getKindNo()==1){%>
								<input type="button" class="sub2" value="글쓰기" onclick="location.href='cWrite.jsp'">
							<% }%>	
							<%} %>
							</div>
							<div class="divPage">
								<%	if(firstPage>1){ %>
								<a href="cList.jsp?currentPage=<%=firstPage-1%>&search_Condition=<%=condition%>&search_Keyword=<%=keyword%>">
									<img src="../img/first.JPG">
								</a>	
								<%	}	%>
			
								<%for(int i=firstPage;i<=lastPage;i++){
								if(i>totalPage) break;
						
								if(i==currentPage){%>
								<span style="font-size: 1em">
								<%=i %></span>
								<%}else{ %>
								<a href ="cList.jsp?currentPage=<%=i%>&search_Condition=<%=condition%>&search_Keyword=<%=keyword%>" style="text-decoration: none; color:black;">
								[<%=i %>]</a>
								<%} %>
								<%	}	%>	
						
								<%if(lastPage<totalPage){ %>
								<a href="cList.jsp?currentPage=<%=lastPage+1%>&search_Condition=<%=condition%>&search_Keyword=<%=keyword%>" style="text-decoration: none; color:black;">
									<img src="../img/last.JPG">
								</a>
								<%} %>
							</div>
							<br>
							<div class="addons" style="display: block;">
								<form name="frm" action="cList.jsp" method="post">
									<div class="addons2" style="display: block;">
										<select name="search_Condition" class="sel1">
											<option value="title_content">전체</option>
											<option value="title"
												<%if("title".equals(condition)){ %>
													selected = "selected"
												<%} %>
											>제목</option>
											<option value="content"
												<%if("content".equals(condition)){ %>
													selected = "selected"
												<%} %>
											>내용</option>
										</select> 
										<input type="text" name="search_Keyword" class="keyw" value="<%=keyword%>"> 
										<input type="submit" class="sub1" value="검색">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
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