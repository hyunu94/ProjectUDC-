package com.project.kind.model;

public class KindVO {
	private int kindNo; /* 고유번호 */
	private String kindName; /* 회원종류 */
	
	public KindVO() {
		super();
	}

	public KindVO(int kindNo, String kindName) {
		super();
		this.kindNo = kindNo;
		this.kindName = kindName;
	}

	public int getKindNo() {
		return kindNo;
	}

	public void setKindNo(int kindNo) {
		this.kindNo = kindNo;
	}

	public String getKindName() {
		return kindName;
	}

	public void setKindName(String kindName) {
		this.kindName = kindName;
	}

	@Override
	public String toString() {
		return "KindVO [kindNo=" + kindNo + ", kindName=" + kindName + "]";
	}
	
}
