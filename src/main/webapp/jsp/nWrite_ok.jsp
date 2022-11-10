<%@page import="com.project.v_boardNo_search.model.DetailboardViewVO"%>
<%@page import="com.project.concert.model.ConcertService"%>
<%@page import="com.project.concert.model.ConcertVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Clob"%>
<%@page import="com.project.board.model.BoardVO"%>
<%@page import="com.project.board.model.BoardService"%>
<%@page import="com.project.category.model.CategoryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String concerttitle = request.getParameter("concerttitle"); //공연 이름
	
	String title = request.getParameter("title"); // 게시판 제목
	String content = request.getParameter("content"); //게시판 내용
	String img = request.getParameter("img"); //이미지
	
	
	String catename = request.getParameter("catename"); //카테고리 이름
	int cateNo = 0; //카테고리 번호
	
	if(catename.equals("후기 게시판")){
		cateNo = 1;
	}else if(catename.equals("같이가요 게시판")){
		cateNo = 2;
	}else if(catename.equals("잡담 게시판")){
		cateNo = 3;
	}
	
	ConcertService service = new ConcertService();
	int concertNo = service.selectConcertNo(concerttitle); // 공연번호
	
	BoardVO vo = new BoardVO();
	vo.setTitle(title);
	vo.setContent(content);
	vo.setImg(img);
	vo.setMemberNo(3); // 미정
	vo.setConcertNo(concertNo);
	vo.setCateNo(cateNo);
	
	BoardService boardservice = new BoardService();
	try{
		int cnt = boardservice.insertBoard(vo);
		
		if(cnt>0){
			response.sendRedirect("nList.jsp");
		}
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>  
</body>
<h3>게시판제목<%=title %></h3>
<h3>게시판내용<%=content %></h3>
<h3>이미지<%=img %></h3>
<h3>콘서트번호<%=concertNo%></h3>
<h3>콘서트이름<%=concerttitle %></h3>
<h3>카테고리이름<%=catename %></h3>
<h3>카테고리번호<%=cateNo %></h3>
</html>