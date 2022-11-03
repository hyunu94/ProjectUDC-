package com.project.reserve.model;

public class ReserveVO{
	private int reserveNo;/* 고유번호 */
	private int memberNo; /* 회원번호 */
	private int concertNo;/* 공연고유번호 */
    private String buy; /* 결제여부 */
    
	public ReserveVO() {
		super();
	}

	public ReserveVO(int reserveNo, int memberNo, int concertNo, String buy) {
		super();
		this.reserveNo = reserveNo;
		this.memberNo = memberNo;
		this.concertNo = concertNo;
		this.buy = buy;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getConcertNo() {
		return concertNo;
	}

	public void setConcertNo(int concertNo) {
		this.concertNo = concertNo;
	}

	public String getBuy() {
		return buy;
	}

	public void setBuy(String buy) {
		this.buy = buy;
	}

	@Override
	public String toString() {
		return "ReserveVO [reserveNo=" + reserveNo + ", memberNo=" + memberNo + ", concertNo=" + concertNo + ", buy="
				+ buy + "]";
	}
	
	
    
    
}
