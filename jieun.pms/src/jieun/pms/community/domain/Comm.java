package jieun.pms.community.domain;

public class Comm {
	private int revNo;
	private int revCommentNo;
	private String revComment;
	private String memId;

	public Comm() {
	}

	public Comm(int revNo, int revCommentNo, String revComment, String memId) {
		this.revNo = revNo;
		this.revCommentNo = revCommentNo;
		this.revComment = revComment;
		this.memId = memId;
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public int getRevCommentNo() {
		return revCommentNo;
	}

	public void setRevCommentNo(int revCommentNo) {
		this.revCommentNo = revCommentNo;
	}

	public String getRevComment() {
		return revComment;
	}

	public void setRevComment(String revComment) {
		this.revComment = revComment;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

}
