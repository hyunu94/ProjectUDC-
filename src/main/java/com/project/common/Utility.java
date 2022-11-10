package com.project.common;

import java.util.Date;

public class Utility {
	   public static final String CONCERT_UPLOAD_DIR ="ConcertImg_upload"; 
	   public static final String CONCERT_TEST_DIR
	   ="C:\\git\\ProjectUDC-\\src\\main\\webapp\\ConcertImg_upload";
	   public static final String BOARD_UPLOAD_DIR ="BoardImg_upload"; 
	   public static final String BOARD_TEST_DIR
	   ="C:\\lecture\\workplace_list\\java_ws\\ProjectUDC-\\src\\main\\webapp\\BoardImg_upload";
	   

	    
	   public static String displayRe(int step) { // 댓글은 옆에 이미지 보여주게 하는 메서드
	      String result="";
	      if(step>0){
	         for(int j=0;j<step;j++){
	            result+="&nbsp;";
	         }
	         result+="<img src='../images/re.gif'>";
	      }
	      return result;
	   }
	   
	   public static String cutTitle(String title, int len) { //제목이 너무 길경우 잘라내는 메서드
	      String result="";
	      if(title.length()>len) {
	         result=title.substring(0, len)+"...";
	      }else {
	         result=title;
	      }
	      return result;
	   }
	   
	   public static String displayNew(Date regdate) { //날짜 비교하여 이미지 보여주기
	      String result ="";
	      
	      Date d = new Date();//현재날짜
	      
	      long gap=(d.getTime()-regdate.getTime())/1000;
	      gap=gap/(60*60);
	      if(gap<24) {
	         result="<img src='../images/new.gif'>";
	      }
	      return result;
	   }
	   
	   public static String displayFile(String fileName) { //파일이 있으면 파일 src 속성에 넣기
	      String result="";
	      if(fileName!=null && !fileName.isEmpty()) {
	         result="<img src='../images/file.gif'>";
	      }
	      return result;
	   }
	   
	   public static String getFileInfo(String fileName) { //파일 이름으로 정보 불러오기 (여러개 일경우에도 사용 가능)
	      String result="";
	
	      if(fileName!=null && !fileName.isEmpty()) {
	         result+="<img src='../images/file.gif'>"   +fileName;      
	      }
	      return result;
	   }
}
