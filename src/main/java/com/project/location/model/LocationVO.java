package com.project.location.model;

public class LocationVO{
	private int locationNo; /* 고유번호 */
	private String zipcode; /* 우편번호 */
	private String address; /* 주소 */
	private String locationname; /* 장소이름 */
	private double axisx; /* x좌표 */
	private double axisy; /* y좌표 */
	
	public LocationVO() {
		super();
	}
 
	public LocationVO(int locationNo, String zipcode, String address, String locationname,
			double axisx, double axisy) {
		super();
		this.locationNo = locationNo;
		this.zipcode = zipcode;
		this.address = address;
		this.locationname = locationname;
		this.axisx = axisx;
		this.axisy = axisy;
	}

	public int getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public void setAxisy(long axisy) {
		this.axisy = axisy;
	}

	public String getLocationname() {
		return locationname;
	}

	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}



	@Override
	public String toString() {
		return "LocationVO [locationNo=" + locationNo + ", zipcode=" + zipcode + ", address=" + address
				+ ", locationname=" + locationname + ", axisx=" + axisx
				+ ", axisy=" + axisy + "]";
	}
	
	

	
	
	
}
