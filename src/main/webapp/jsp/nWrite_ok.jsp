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
	
	String category = request.getParameter("category"); //카테고리 이름
	String concertNo = request.getParameter("concertNo"); //카테고리 번호
	String content = request.getParameter("content"); //내용
	String title = request.getParameter("title"); // 제목
	String img = request.getParameter("attach"); //이미지
	int categoryNo = 0;
	
	if(category.equals("후기 게시판")){
		categoryNo = 1;
	}else if(category.equals("같이가요 게시판")){
		categoryNo = 2;
	}else if(category.equals("잡담 게시판")){
		categoryNo = 3;
	}
	
	BoardVO vo = new BoardVO();
	vo.setTitle(title);
	vo.setContent(content);
	vo.setImg(img);
	vo.setMemberNo(10);
	vo.setConcertNo(Integer.parseInt(concertNo));
	vo.setCateNo(categoryNo);
	/* vo.setMemberNo(memberNo); */
	
%>  
</body>
<h3><%=category %></h3>
<h3><%=concertNo %></h3>
<h3><%=title %></h3>
<h3><%=content %></h3>
<h3><%=img %></h3>
<h3><%=categoryNo %></h3>
</html>