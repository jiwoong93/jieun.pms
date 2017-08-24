package jieun.pms.order.domain;

public class OrderDate {
	private String startDate;
	private String endDate;
	private String memId;
	
	public OrderDate() {}

	public OrderDate(String startDate, String endDate, String memId) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.memId = memId;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
}
