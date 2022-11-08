package com.project.board.model;

import java.sql.Timestamp;

public class BoardVO {
	private int boardNo; /* 고유번호 */
	private String title; /* 제목 */
	private String content; /* 내용 */
	private Timestamp regdate; /* 작성일 */
	private double star; /* 별점 */
	private int count; /* 조회수 */
	private String img; /* 이미지 */
	private String delcheck; /* 삭제여부 */
	private int memberNo; /* 회원번호 */
	private int concertNo; /* 공연고유번호 */
	private int cateNo;/* 카테고리고유번호 */
	
	public BoardVO() {
		super();
	}

	public BoardVO(int boardNo, String title, String content, Timestamp regdate, double star, int count,
			String img, String delcheck, int memberNo, int concertNo, int cateNo) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.star = star;
		this.count = count;
		this.img = img;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public double getStar() {
		return star;
	}

	public void setStar(double star) {
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", star=" + star +", count=" + count + ", img=" + img + ", delcheck="
				+ delcheck + ", memberNo=" + memberNo + ", concertNo=" + concertNo + ", cateNo=" + cateNo + "]";
	}

	

	
	
	
	
	
}
