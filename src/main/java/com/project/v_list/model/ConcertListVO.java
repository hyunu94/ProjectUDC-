package com.project.v_list.model;

import java.sql.Timestamp;

public class ConcertListVO { //공연정보 뷰 담을 객체
	private int concertNo; 
	private String artist; 
	private String title; 
	private Timestamp regdate;  
	private String name;
	
	public ConcertListVO() {
		super();
	}

	public ConcertListVO(int concertNo, String artist, String title, Timestamp regdate, String name) {
		super();
		this.concertNo = concertNo;
		this.artist = artist;
		this.title = title;
		this.regdate = regdate;
		this.name = name;
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

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "ConcertListVO [concertNo=" + concertNo + ", artist=" + artist + ", title=" + title + ", regdate="
				+ regdate + ", name=" + name + "]";
	}
	
	

}
