package jieun.pms.order.domain;

import java.sql.Date;

public class Order {
	private int orderNo;
	private String memId;
	private String itemNo;
	private Date orderDate;
	private String orderName;
	private String orderPhone;
	private int orderAmount;
	private int payment;
	private String paymentOption;
	private String orderZipcode;
	private String orderStreet;
	private String orderAddr;
	private String transport;
	private String status;
	
	public Order() {}

	public Order(int orderNo, String memId, String itemNo, Date orderDate, String orderName, String orderPhone,
			int orderAmount, int payment, String paymentOption, String orderZipcode, String orderStreet,
			String orderAddr, String transport, String status) {
		this.orderNo = orderNo;
		this.memId = memId;
		this.itemNo = itemNo;
		this.orderDate = orderDate;
		this.orderName = orderName;
		this.orderPhone = orderPhone;
		this.orderAmount = orderAmount;
		this.payment = payment;
		this.paymentOption = paymentOption;
		this.orderZipcode = orderZipcode;
		this.orderStreet = orderStreet;
		this.orderAddr = orderAddr;
		this.transport = transport;
		this.status = status;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public String getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}

	public int getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public String getPaymentOption() {
		return paymentOption;
	}

	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}

	public String getOrderZipcode() {
		return orderZipcode;
	}

	public void setOrderZipcode(String orderZipcode) {
		this.orderZipcode = orderZipcode;
	}

	public String getOrderStreet() {
		return orderStreet;
	}

	public void setOrderStreet(String orderStreet) {
		this.orderStreet = orderStreet;
	}

	public String getOrderAddr() {
		return orderAddr;
	}

	public void setOrderAddr(String orderAddr) {
		this.orderAddr = orderAddr;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
