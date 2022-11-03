package com.project.notice.model;

import java.sql.Timestamp;

public class NoticeVO {
	private int noticeNo; /* 고유번호 */
	private String title; /* 제목 */
	private String content; /* 내용 */
	private Timestamp regdate; /* 작성일 */
	private int count; /* 조회수 */
	private int memberNo; /* 회원고유번호 */
	
	public NoticeVO() {
		super();
	}

	public NoticeVO(int noticeNo, String title, String content, Timestamp regdate, int count, int memberNo) {
		super();
		this.noticeNo = noticeNo;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.count = count;
		this.memberNo = memberNo;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", count=" + count + ", memberNo=" + memberNo + "]";
	}
	
	
	
}
