package jieun.pms.mypage.wishlist.domain;

import jieun.pms.product.domain.Product;

public class Wishlist {
	private int wishNo;
	private String memId;
	private int itemNo;
	private int amount;
	private Product product;
	
	public Wishlist() {	}

	public Wishlist(int wishNo, String memId, int itemNo, int amount, Product product) {
		super();
		this.wishNo = wishNo;
		this.memId = memId;
		this.itemNo = itemNo;
		this.amount = amount;
		this.product = product;
	}

	public int getWishNo() {
		return wishNo;
	}

	public void setWishNo(int wishNo) {
		this.wishNo = wishNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
