package com.project.location.model;

public class LocationVO{
	private int locationNo; /* 고유번호 */
	private String zipcode; /* 우편번호 */
	private String address; /* 주소 */
	private String addressdetail; /* 상세주소 */
	private int axisx; /* x좌표 */
	private int axisy; /* y좌표 */
	
	public LocationVO() {
		super();
	}

	public LocationVO(int locationNo, String zipcode, String address, String addressdetail, int axisx, int axisy) {
		super();
		this.locationNo = locationNo;
		this.zipcode = zipcode;
		this.address = address;
		this.addressdetail = addressdetail;
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

	public String getAddressdetail() {
		return addressdetail;
	}

	public void setAddressdetail(String addressdetail) {
		this.addressdetail = addressdetail;
	}

	public int getAxisx() {
		return axisx;
	}

	public void setAxisx(int axisx) {
		this.axisx = axisx;
	}

	public int getAxisy() {
		return axisy;
	}

	public void setAxisy(int axisy) {
		this.axisy = axisy;
	}

	@Override
	public String toString() {
		return "LocationVO [locationNo=" + locationNo + ", zipcode=" + zipcode + ", address=" + address
				+ ", addressdetail=" + addressdetail + ", axisx=" + axisx + ", axisy=" + axisy + "]";
	}
	
	
	
}
