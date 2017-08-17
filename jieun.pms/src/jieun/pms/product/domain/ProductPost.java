package jieun.pms.product.domain;

import java.sql.Date;

public class ProductPost {
	private int itemNo;
	private String category;
	private String itemName;
	private int itemAmount;
	private int itemPrice;
	private String itemSize;
	private Date itemUpdate;
	private Category categoryStr;
	
	public ProductPost() {}

	public ProductPost(int itemNo, String category, String itemName, int itemAmount, int itemPrice, String itemSize,
			Date itemUpdate) {
		categoryStr = new Category(Integer.parseInt(category));
		
		this.itemNo = itemNo;
		this.category = categoryStr.getCategoryStr();
		this.itemName = itemName;
		this.itemAmount = itemAmount;
		this.itemPrice = itemPrice;
		this.itemSize = itemSize;
		this.itemUpdate = itemUpdate;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		categoryStr = new Category(Integer.parseInt(category));
		this.category = categoryStr.getCategoryStr();
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemAmount() {
		return itemAmount;
	}

	public void setItemAmount(int itemAmount) {
		this.itemAmount = itemAmount;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemSize() {
		return itemSize;
	}

	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}

	public Date getItemUpdate() {
		return itemUpdate;
	}

	public void setItemUpdate(Date itemUpdate) {
		this.itemUpdate = itemUpdate;
	}
	
	
}
