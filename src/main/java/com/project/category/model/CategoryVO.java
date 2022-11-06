package com.project.category.model;

public class CategoryVO {
	private int cateNo; /* 고유번호 */
	private String catename; /* 카테고리명 */
	
	public CategoryVO() {
		super();
	}

	public CategoryVO(int cateNo, String catename) {
		super();
		this.cateNo = cateNo;
		this.catename = catename;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	@Override
	public String toString() {
		return "CategoryVO [cateNo=" + cateNo + ", catename=" + catename + "]";
	}
	
	
}
