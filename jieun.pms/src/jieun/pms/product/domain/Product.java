package jieun.pms.product.domain;

import java.sql.Date;

public class Product {
	private int itemNo;
	private String itemId;
	private String category;
	private String itemName;
	private int itemAmount;
	private int itemPrice;
	private String itemSize;
	private String itemImg;
	private String itemImgDetail;
	private Date itemUpdate;
	
	public Product() {}
	
	public Product(int itemNo, String itemId, String category, String itemName, int itemAmount, int itemPrice,
			String itemSize, String itemImg, String itemImgDetail, Date itemUpdate) {
		this.itemNo = itemNo;
		this.itemId = itemId;
		this.category = category;
		this.itemName = itemName;
		this.itemAmount = itemAmount;
		this.itemPrice = itemPrice;
		this.itemSize = itemSize;
		this.itemImg = itemImg;
		this.itemImgDetail = itemImgDetail;
		this.itemUpdate = itemUpdate;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public String getItemImg() {
		return itemImg;
	}
	public void setItemImg(String itemImg) {
		this.itemImg = itemImg;
	}
	public String getItemImgDetail() {
		return itemImgDetail;
	}
	public void setItemImgDetail(String itemImgDetail) {
		this.itemImgDetail = itemImgDetail;
	}
	public Date getItemUpdate() {
		return itemUpdate;
	}
	public void setItemUpdate(Date itemUpdate) {
		this.itemUpdate = itemUpdate;
	}
	@Override
	public String toString() {
		return "Product [itemNo=" + itemNo + ", itemId=" + itemId + ", category=" + category + ", itemName=" + itemName
				+ ", itemAmount=" + itemAmount + ", itemPrice=" + itemPrice + ", itemSize=" + itemSize + ", itemImg="
				+ itemImg + ", itemImgDetail=" + itemImgDetail + ", itemUpdate=" + itemUpdate + "]";
	}
}
