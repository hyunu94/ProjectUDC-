<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.project.concert.model.ConcertVO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.project.concert.model.ConcertService"%>
<%@page import="com.project.common.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cWrite_ok.jsp</title>
</head>
<body>
<%	
	request.setCharacterEncoding("UTF-8");

	String saveDir = Utility.CONCERT_UPLOAD_DIR;
	System.out.println("saveDir = " + saveDir);
	  
	saveDir = "C:\\Users\\EZEN202\\git\\ProjectUDC-\\src\\main\\webapp\\ConcertImg_upload";
	System.out.println("testDir = " + saveDir);
	
	int maxSize = 10 * 1024 * 1024 ;
	String img="";
	
	String msg = "공연 등록이 실패하였습니다." , url ="cWrite_ok.jsp";
	try{
		DefaultFileRenamePolicy policy=new DefaultFileRenamePolicy();
		MultipartRequest mr
			=new MultipartRequest(request, saveDir, maxSize, "utf-8", policy);
		System.out.println("업로드 완료!");
		
		//업로드 파일 정보 구하기
		String fileName=mr.getFilesystemName("img");
		long fileSize=0;
		String originalFName="";
		if(fileName!=null){  //파일이 첨부된 경우만
			File file = mr.getFile("img");
			fileSize=file.length();
			
			originalFName=mr.getOriginalFileName("img");
			System.out.println("filename = " + fileName + ",ori = " + originalFName);
			img = fileName;
		}	
	String memberNo = mr.getParameter("memberNo");
	String artist = mr.getParameter("artist");
	String title = mr.getParameter("title");
	String startdate = mr.getParameter("startdate");
	String time= mr.getParameter("time");
	String price = mr.getParameter("price");
	String content1 = mr.getParameter("content1");
	String content2 = mr.getParameter("content2");
	String content3 = mr.getParameter("content3");
	String link = mr.getParameter("link");
	
	String content = content1 + "/" + content2 + "/" + content3;
	
	ConcertVO vo = new ConcertVO();
	vo.setArtist(artist);
	vo.setTitle(title);
	vo.setStartdate(startdate);
	vo.setTime(time);
	vo.setPrice(Integer.parseInt(price));
	vo.setContent(content);
	vo.setLink(link);
	vo.setThumbimg(img);
	vo.setMemberNo(Integer.parseInt(memberNo));
	
 	ConcertService service = new ConcertService();
	int cnt = service.insertConcert(vo);
	
	
	if(cnt>0){
		msg = "공연 등록을 성공하였습니다.";
		url = "cList.jsp";
	}
	
	
	}catch(SQLException e){
		e.printStackTrace();
	}catch(IOException e){
		e.printStackTrace();
	} 
	
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	
	
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>