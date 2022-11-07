package com.project.concert.model;

import java.sql.Timestamp;

public class ConcertVO {
	private int concertNo; /* 고유번호 */
	private String artist; /* 공연자 */
	private String title; /* 공연제목 */
	private String content; /* 공연소개 */
	private Timestamp startdate; /* 날짜 */
	private String time; /* 공연시간 */
	private int price; /* 가격 */
	private String link; /* 링크 */
	private String thumbimg; /* 썸네일 */
	private int memberNo; /* 회원번호 */
	private int locationNo;/* 위치고유번호 */
	
	public ConcertVO() {
		super();
	}

	public ConcertVO(int concertNo, String artist, String title, String content, Timestamp startdate,
			String time, int price, String link, String thumbimg, int memberNo, int locationNo) {
		super();
		this.concertNo = concertNo;
		this.artist = artist;
		this.title = title;
		this.content = content;
		this.startdate = startdate;
		this.time = time;
		this.price = price;
		this.link = link;
		this.thumbimg = thumbimg;
		this.memberNo = memberNo;
		this.locationNo = locationNo;
	}

	public int getConcertNo() {
		return concertNo;
	}

	public void setConcertNo(int concertNo) {
		this.concertNo = concertNo;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
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

	public Timestamp getStartdate() {
		return startdate;
	}

	public void setStartdate(Timestamp startdate) {
		this.startdate = startdate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getThumbimg() {
		return thumbimg;
	}

	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}

	@Override
	public String toString() {
		return "ConcertVO [concertNo=" + concertNo + ", artist=" + artist + ", title=" + title + ", content=" + content
				+ ", startdate=" + startdate + ", time=" + time + ", price=" + price
				+ ", link=" + link + ", thumbimg=" + thumbimg + ", memberNo=" + memberNo
				+ ", locationNo=" + locationNo + "]";
	}
	
	
}
