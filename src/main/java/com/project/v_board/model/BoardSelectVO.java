package com.project.v_board.model;

import java.sql.Clob;
import java.sql.Timestamp;

public class BoardSelectVO {
	private int boardNo;
	private String title; // 게시판 제목
	private Timestamp regdate; //게시판 작성시간
	private int count; // 게시판 조회수
	private int star; // 게시판 별점
	private String nick;
	private int cateNo; // 게시판 카테고리 ( 후기, 같이가요 , 잡담 )
	
	public BoardSelectVO() {
		super();
	}

	public BoardSelectVO(int boardNo, String title, Timestamp regdate, int count, int star, String nick,
			int cateNo) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.regdate = regdate;
		this.count = count;
		this.star = star;
		this.nick = nick;
		this.cateNo = cateNo;
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

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	@Override
	public String toString() {
		return "BoardSelectVO [boardNo=" + boardNo + ", title=" + title + ", regdate=" + regdate + ", count=" + count
				+ ", star=" + star + ", nick=" + nick + ", cateNo=" + cateNo + "]";
	}

	
	
	
	
}
