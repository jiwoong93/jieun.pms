package jieun.pms.order.domain;

public class OrderPost {
	private int orderNo;
	private String orderDate;
	private int payment;
	private String paymentOption;
	private String status;
	
	public OrderPost() {
	}

	public OrderPost(int orderNo, String orderDate, int payment, String paymentOption, String status) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.payment = payment;
		this.paymentOption = paymentOption;
		this.status = status;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
