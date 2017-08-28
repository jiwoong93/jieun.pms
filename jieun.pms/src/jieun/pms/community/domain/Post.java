package jieun.pms.community.domain;

import java.sql.Date;

public class Post {
	private int revNo;
	private String revSubject;
	private String revContents;
	private String memId;
	private String revFilename;
	private Date regDate;
	private int revView;
	private int itemNo;

	public Post() {
	}

	public Post(int revNo, String revSubject, String revContents, String memId, String revFilename, Date regDate,
			int revView, int itemNo) {
		this.revNo = revNo;
		this.revSubject = revSubject;
		this.revContents = revContents;
		this.memId = memId;
		this.revFilename = revFilename;
		this.regDate = regDate;
		this.revView = revView;
		this.itemNo = itemNo;
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public String getRevSubject() {
		return revSubject;
	}

	public void setRevSubject(String revSubject) {
		this.revSubject = revSubject;
	}

	public String getRevContents() {
		return revContents;
	}

	public void setRevContents(String revContents) {
		this.revContents = revContents;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getRevFilename() {
		return revFilename;
	}

	public void setRevFilename(String revFilename) {
		this.revFilename = revFilename;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getRevView() {
		return revView;
	}

	public void setRevView(int revView) {
		this.revView = revView;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

}