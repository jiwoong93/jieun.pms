package jieun.pms.product.domain;

public class ProductPage {
	protected int currentPage;
	private int rowCnt;

	public ProductPage() {
		this(1, 10);
	}

	public ProductPage(int currentPage) {
		this(currentPage, 10);

	}

	public ProductPage(int currentPage, int rowCnt) {
		this.currentPage = currentPage;
		this.rowCnt = rowCnt;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRowCnt() {
		return rowCnt;
	}

	public void setRowCnt(int rowCnt) {
		this.rowCnt = rowCnt;
	}
}
