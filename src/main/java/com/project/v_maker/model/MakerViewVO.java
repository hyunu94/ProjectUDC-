package com.project.v_maker.model;


public class MakerViewVO {
	private int concertno; //공연번호
	private String artist; //공연자
	private String startdate; //공연시작일
	private String locationname; /* 장소이름 */
	private double axisx; /* x좌표 */
	private double axisy; /* y좌표 */
	private String thumbimg; /* 썸네일 */
	
	public MakerViewVO() {
		super();
	}
	
	public MakerViewVO(int concertno, String artist, String startdate, String locationname, double axisx, double axisy,
			String thumbimg) {
		super();
		this.concertno = concertno;
		this.artist = artist;
		this.startdate = startdate;
		this.locationname = locationname;
		this.axisx = axisx;
		this.axisy = axisy;
		this.thumbimg = thumbimg;
	}

	public String getStartdate() {
		return startdate;
	}

	public int getConcertno() {
		return concertno;
	}

	public void setConcertno(int concertno) {
		this.concertno = concertno;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getLocationname() {
		return locationname;
	}

	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}

	public double getAxisx() {
		return axisx;
	}

	public void setAxisx(double axisx) {
		this.axisx = axisx;
	}

	public double getAxisy() {
		return axisy;
	}

	public void setAxisy(double axisy) {
		this.axisy = axisy;
	}

	public String getThumbimg() {
		return thumbimg;
	}

	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}




	@Override
	public String toString() {
		return "MakerViewVO [concertno=" + concertno + ", artist=" + artist + ", startdate=" + startdate
				+ ", locationname=" + locationname + ", axisx=" + axisx + ", axisy=" + axisy + ", thumbimg=" + thumbimg
				+ "]";
	}

	
	
	
}
