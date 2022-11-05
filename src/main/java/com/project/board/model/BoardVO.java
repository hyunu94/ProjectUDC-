package com.project.board.model;

import java.sql.Clob;
import java.sql.Timestamp;

public class BoardVO {
	private int boardNo; /* 고유번호 */
	private String title; /* 제목 */
	private Clob content; /* 내용 */
	private Timestamp regdate; /* 작성일 */
	private int star; /* 별점 */
	private int count; /* 조회수 */
	private String delcheck; /* 삭제여부 */
	private int memberNo; /* 회원번호 */
	private int concertNo; /* 공연고유번호 */
	private int cateNo;/* 카테고리고유번호 */
	
	public BoardVO() {
		super();
	}

	public BoardVO(int boardNo, String title, Clob content, Timestamp regdate, int star, int count, String delcheck,
			int memberNo, int concertNo, int cateNo) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.star = star;
		this.count = count;
		this.delcheck = delcheck;
		this.memberNo = memberNo;
		this.concertNo = concertNo;
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

	public String getDelcheck() {
		return delcheck;
	}

	public void setDelcheck(String delcheck) {
		this.delcheck = delcheck;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getConcertNo() {
		return concertNo;
	}

	public void setConcertNo(int concertNo) {
		this.concertNo = concertNo;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", star=" + star + ", count=" + count + ", delcheck=" + delcheck + ", memberNo=" + memberNo
				+ ", concertNo=" + concertNo + ", cateNo=" + cateNo + "]";
	}
	
	
	
	
}
