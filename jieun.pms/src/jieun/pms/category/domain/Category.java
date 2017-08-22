package jieun.pms.category.domain;

public class Category {
	private String cateNo;
	private String parentNo;
	private String cateTitle;
	
	public Category() {
		super();
	}

	public Category(String cateNo, String parentNo, String cateTitle) {
		super();
		this.cateNo = cateNo;
		this.parentNo = parentNo;
		this.cateTitle = cateTitle;
	}

	public String getCateNo() {
		return cateNo;
	}

	public void setCateNo(String cateNo) {
		this.cateNo = cateNo;
	}

	public String getParentNo() {
		return parentNo;
	}

	public void setParentNo(String parentNo) {
		this.parentNo = parentNo;
	}

	public String getCateTitle() {
		return cateTitle;
	}

	public void setCateTitle(String cateTitle) {
		this.cateTitle = cateTitle;
	}
}
