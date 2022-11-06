package com.project.v_board.model;

import java.sql.Clob;
import java.sql.Timestamp;

public class BoardSelectVO {
	private String title; // 게시판 제목
	private Clob content; // 게시판 내용
	private Timestamp regdate; //게시판 작성시간
	private int star; // 게시판 별점
	private int count; // 게시판 조회수
	private String catename; // 게시판 카테고리 ( 후기, 같이가요 , 잡담 )
	
	public BoardSelectVO() {
		super();
	}

	public BoardSelectVO(String title, Clob content, Timestamp regdate, int star, int count, String catename) {
		super();
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.star = star;
		this.count = count;
		this.catename = catename;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Clob getContent() {
		return content;
	}

	public void setContent(Clob content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	@Override
	public String toString() {
		return "BoardSelectAllVO [title=" + title + ", content=" + content + ", regdate=" + regdate + ", star=" + star
				+ ", count=" + count + ", catename=" + catename + "]";
	}
	
	
	
	
}
