package jieun.pms.member.login.domain;

public class Member {
	private String memId;
	private String memPw;
	
	public Member() { super(); }

	public Member(String memId, String memPw) {
		super();
		this.memId = memId;
		this.memPw = memPw;
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
	

	@Override
	public String toString() {
		return String.format("%s/%s", memId, memPw);
	}
}
