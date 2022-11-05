package com.project.member.model;

public class MemberVO {
	private int memberNo; /* 회원번호 */
	private String userid;  /* 아이디 */
	private String pwd; /* 비밀번호 */
	private String name; /* 이름 */
	private String nick; /* 닉네임 */
	private String jumin;  /* 주민등록번호 */
	private String mobile; /* 휴대폰 */
	private String outdate; /* 탈퇴여부 */
	private int kindNo; /* 회원종류고유번호 */
	private int locationNo; /* 위치고유번호 */
	
	public MemberVO() {
		super();
	}

	public MemberVO(int memberNo, String userid, String pwd, String name, String nick, String jumin, String mobile,
			String outdate, int kindNo, int locationNo) {
		this.memberNo = memberNo;
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.nick = nick;
		this.jumin = jumin;
		this.mobile = mobile;
		this.outdate = outdate;
		this.kindNo = kindNo;
		this.locationNo = locationNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getJumin() {
		return jumin;
	}

	public void setJumin(String jumin) {
		this.jumin = jumin;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getOutdate() {
		return outdate;
	}

	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}

	public int getKindNo() {
		return kindNo;
	}

	public void setKindNo(int kindNo) {
		this.kindNo = kindNo;
	}

	public int getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}

	@Override
	public String toString() {
		return "MemberVO [memberNo=" + memberNo + ", userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", nick="
				+ nick + ", jumin=" + jumin + ", mobile=" + mobile + ", outdate=" + outdate + ", kindNo=" + kindNo
				+ ", locationNo=" + locationNo + "]";
	}
	
	
}
