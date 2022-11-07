package com.project.type;

public class typeVO {
	private int typeNo; 
	private String typename;
	
	public typeVO() {
		super();
	}

	public typeVO(int typeNo, String typename) {
		super();
		this.typeNo = typeNo;
		this.typename = typename;
	}

	public int getTypeNo() {
		return typeNo;
	}

	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	@Override
	public String toString() {
		return "typeVO [typeNo=" + typeNo + ", typename=" + typename + "]";
	}
	
	
	
}
