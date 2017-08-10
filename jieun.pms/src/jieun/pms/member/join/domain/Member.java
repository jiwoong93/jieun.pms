package jieun.pms.member.join.domain;

public class Member {
	private String memId;
	private String memLevel;
	private String memName;
	private String memPw;
	private String memEmail;
	private String memBirth;
	private String memPhone;
	private String memGender;
	private String memZipcode;
	private String memStreet;
	private String memAddr;
	private String dogCode;
	
	public Member() { super(); }

	public Member(String memId, String memLevel, String memName, String memPw, String memEmail, String memBirth,
			String memPhone, String memGender, String memZipcode, String memStreet, String memAddr, String dogCode) {
		super();
		this.memId = memId;
		this.memLevel = memLevel;
		this.memName = memName;
		this.memPw = memPw;
		this.memEmail = memEmail;
		this.memBirth = memBirth;
		this.memPhone = memPhone;
		this.memGender = memGender;
		this.memZipcode = memZipcode;
		this.memStreet = memStreet;
		this.memAddr = memAddr;
		this.dogCode = dogCode;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemLevel() {
		return memLevel;
	}

	public void setMemLevel(String memLevel) {
		this.memLevel = memLevel;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
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

	public String getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemZipcode() {
		return memZipcode;
	}

	public void setMemZipcode(String memZipcode) {
		this.memZipcode = memZipcode;
	}

	public String getMemStreet() {
		return memStreet;
	}

	public void setMemStreet(String memStreet) {
		this.memStreet = memStreet;
	}

	public String getMemAddr() {
		return memAddr;
	}

	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}

	public String getDogCode() {
		return dogCode;
	}

	public void setDogCode(String dogCode) {
		this.dogCode = dogCode;
	}
}
