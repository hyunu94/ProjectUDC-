package com.project.comments.model;

import java.sql.Timestamp;

public class CommentsVO {
	private int commentsNo; /* 댓글 고유번호 */
    private String content; /*댓글 내용*/
    private Timestamp regdate; /*작성 날짜*/
    private int step; /*댓글의 단계*/
    private int sortno; /*댓글 정렬 순서*/
    private String delcheck; /*삭제 여부*/
	private int boardNo; /* 게시판번호 */
	private int memberNo;/* 작성자 회원번호 */
	
	public CommentsVO() {
		super();
	}

	public CommentsVO(int commentsNo, String content, Timestamp regdate, int step, int sortno, String delcheck,
			int boardNo, int memberNo) {
		super();
		this.commentsNo = commentsNo;
		this.content = content;
		this.regdate = regdate;
		this.step = step;
		this.sortno = sortno;
		this.delcheck = delcheck;
		this.boardNo = boardNo;
		this.memberNo = memberNo;
	}

	public int getCommentsNo() {
		return commentsNo;
	}

	public void setCommentsNo(int commentsNo) {
		this.commentsNo = commentsNo;
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

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getSortno() {
		return sortno;
	}

	public void setSortno(int sortno) {
		this.sortno = sortno;
	}

	public String getDelcheck() {
		return delcheck;
	}

	public void setDelcheck(String delcheck) {
		this.delcheck = delcheck;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "CommentsVO [commentsNo=" + commentsNo + ", content=" + content + ", regdate=" + regdate + ", step="
				+ step + ", sortno=" + sortno + ", delcheck=" + delcheck + ", boardNo=" + boardNo + ", memberNo="
				+ memberNo + "]";
	}
	
	
}
