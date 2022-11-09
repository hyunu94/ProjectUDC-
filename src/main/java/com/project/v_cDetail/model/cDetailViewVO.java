package com.project.v_cDetail.model;


public class cDetailViewVO {
	private int concertNo; 
	private String artist; 
	private String title; 
	private String content; 
	private String startdate; 
	private String time; 
	private int price;
	private String thumbimg;
	private String address; 
	private String locationName;
	private String mobile;
	
	public cDetailViewVO() {
		super();
	}
	
	public cDetailViewVO(int concertNo, String artist, String title, String content, String startdate, String time,
			int price, String thumbimg, String address, String locationName, String mobile) {
		super();
		this.concertNo = concertNo;
		this.artist = artist;
		this.title = title;
		this.content = content;
		this.startdate = startdate;
		this.time = time;
		this.price = price;
		this.thumbimg = thumbimg;
		this.address = address;
		this.locationName = locationName;
		this.mobile = mobile;
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

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
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
	
	public String getThumbimg() {
		return thumbimg;
	}

	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "cDetailViewVO [concertNo=" + concertNo + ", artist=" + artist + ", title=" + title + ", content="
				+ content + ", startdate=" + startdate + ", time=" + time + ", price=" + price + ", thumbimg="
				+ thumbimg + ", address=" + address + ", locationName=" + locationName + ", mobile=" + mobile + "]";
	}



	

	
	
	
	
}
