package jieun.pms.member.login.domain;

public class Member {
	private String memId;
	private String memPw;
	private String memLevel;
	private String memName;
	private String memEmail;
	private String memPhone;
	
	public Member() { super(); }

	public Member(String memId, String memPw, String memLevel, String memName, String memEmail, String memPhone) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memLevel = memLevel;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
	}

	public String getMemLevel() {
		return memLevel;
	}

	public void setMemLevel(String memLevel) {
		this.memLevel = memLevel;
	}

	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
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

	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}

	@Override
	public String toString() {
		return String.format("%s, %s, %s, %s, %s", memId, memPw, memEmail, memPhone, memName);
	}
}
