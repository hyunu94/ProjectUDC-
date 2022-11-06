package com.project.v_reserve.model;

import java.sql.Timestamp;

public class ReserveViewVO { // 예매 조회시 사용할 객체
	private int reserveNo; //예매번호 
	private String buy; //결제유무
	private int memberNo; //회원번호
	private String name; //회원이름
	private String artist; //콘서트 공연자
	private String title; //콘서트 제목
	private Timestamp startdate; //콘서트 시작날짜
	private Timestamp enddate; //콘서트 끝나는 날짜
	private String time; // 콘서트 시간
	private String locationname; //콘서트장 이름
	
	
	public ReserveViewVO() {
		super();
	}


	public ReserveViewVO(int reserveNo, String buy, int memberNo, String name, String artist, String title,
			Timestamp startdate, Timestamp enddate, String time, String locationname) {
		super();
		this.reserveNo = reserveNo;
		this.buy = buy;
		this.memberNo = memberNo;
		this.name = name;
		this.artist = artist;
		this.title = title;
		this.startdate = startdate;
		this.enddate = enddate;
		this.time = time;
		this.locationname = locationname;
	}


	public int getReserveNo() {
		return reserveNo;
	}


	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}


	public String getBuy() {
		return buy;
	}


	public void setBuy(String buy) {
		this.buy = buy;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public Timestamp getStartdate() {
		return startdate;
	}


	public void setStartdate(Timestamp startdate) {
		this.startdate = startdate;
	}


	public Timestamp getEnddate() {
		return enddate;
	}


	public void setEnddate(Timestamp enddate) {
		this.enddate = enddate;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getLocationname() {
		return locationname;
	}


	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}


	@Override
	public String toString() {
		return "ReserveViewVO [reserveNo=" + reserveNo + ", buy=" + buy + ", memberNo=" + memberNo + ", name=" + name
				+ ", artist=" + artist + ", title=" + title + ", startdate=" + startdate + ", enddate=" + enddate
				+ ", time=" + time + ", locationname=" + locationname + "]";
	}
	
	
}
