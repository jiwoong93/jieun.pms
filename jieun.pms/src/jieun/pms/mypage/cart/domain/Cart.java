package jieun.pms.mypage.cart.domain;

import jieun.pms.product.domain.Product;

public class Cart {
	private int cartNo;
	private String memId;
	private int itemNo;
	private int amount;
	private Product product;
	
	public Cart() {}

	public Cart(int cartNo, String memId, int itemNo, int amount, Product product) {
		super();
		this.cartNo = cartNo;
		this.memId = memId;
		this.itemNo = itemNo;
		this.amount = amount;
		this.product = product;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
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
