package com.project.v_boardNo_search.model;

public class DetailboardViewVO {
	private int boardNo; 
	private String title; 
	private String content; 
	private String cateNo; 
	private String nick; 
	private String catename;
	
	public DetailboardViewVO() {
		super();
	}

	public DetailboardViewVO(int boardNo, String title, String content, String cateNo, String nick, String catename) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.cateNo = cateNo;
		this.nick = nick;
		this.catename = catename;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCateNo() {
		return cateNo;
	}

	public void setCateNo(String cateNo) {
		this.cateNo = cateNo;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	@Override
	public String toString() {
		return "DetailboardViewVO [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", cateNo="
				+ cateNo + ", nick=" + nick + ", catename=" + catename + "]";
	}
	
	
	
	
}
