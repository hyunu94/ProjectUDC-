package com.project.v_index.model;

public class IndexVO {
	private int concertNo;
	private String artist; 
	private String startdate; 
	private String content;
	private String title;
	private String thumbimg;
	private String locationname;
	
	public IndexVO() {
		super();
	}
	
	public IndexVO(int concertNo, String artist, String startdate, String content, String title, String thumbimg,
			String locationname) {
		super();
		this.concertNo = concertNo;
		this.artist = artist;
		this.startdate = startdate;
		this.content = content;
		this.title = title;
		this.thumbimg = thumbimg;
		this.locationname = locationname;
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

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbimg() {
		return thumbimg;
	}

	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}

	public String getLocationname() {
		return locationname;
	}

	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}

	@Override
	public String toString() {
		return "IndexVO [concertNo=" + concertNo + ", artist=" + artist + ", startdate=" + startdate + ", content="
				+ content + ", title=" + title + ", thumbimg=" + thumbimg + ", locationname=" + locationname + "]";
	}

	 

	
	
	
}
