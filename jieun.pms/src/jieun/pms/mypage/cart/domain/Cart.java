package jieun.pms.mypage.cart.domain;

public class Cart {
	private int cartNo;
	private String memId;
	private int itemNo;
	private int amount;
	private String itemName;
	private String itemSize;
	private int itemPrice;
	
	public Cart() {}

	public Cart(int cartNo, String memId, int itemNo, int amount, String itemName, String itemSize, int itemPrice) {
		super();
		this.cartNo = cartNo;
		this.memId = memId;
		this.itemNo = itemNo;
		this.amount = amount;
		this.itemName = itemName;
		this.itemSize = itemSize;
		this.itemPrice = itemPrice;
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

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemSize() {
		return itemSize;
	}

	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
}
