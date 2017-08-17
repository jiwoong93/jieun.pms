package jieun.pms.member.list.domain;

public class Member {
	private String memId;
	private String memName;
	private String memGender;
	private String regDate;
	private String memEmail;
	private String memPhone;
	
	public Member() {
		super();
	}

	public Member(String memId, String memName, String memGender, String regDate, String memEmail, String memPhone) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memGender = memGender;
		this.regDate = regDate;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	
	
}
