package jieun.pms.community.notice.domain;

import java.sql.Date;

public class Post {
	private int noticeNo;
	private Date noticeDate;
	private String noticeFileName;
	private String noticeSubject;
	private String noticeContents;
	private int noticeView;
	
	public Post() {
	}
	
	public Post(int noticeNo, Date noticeDate, String noticeFileName, String noticeSubject, String noticeContents,
			int noticeView) {
		super();
		this.noticeNo = noticeNo;
		this.noticeDate = noticeDate;
		this.noticeFileName = noticeFileName;
		this.noticeSubject = noticeSubject;
		this.noticeContents = noticeContents;
		this.noticeView = noticeView;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeFileName() {
		return noticeFileName;
	}
	public void setNoticeFileName(String noticeFileName) {
		this.noticeFileName = noticeFileName;
	}
	public String getNoticeSubject() {
		return noticeSubject;
	}
	public void setNoticeSubject(String noticeSubject) {
		this.noticeSubject = noticeSubject;
	}
	public String getNoticeContents() {
		return noticeContents;
	}
	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}
	public int getNoticeView() {
		return noticeView;
	}
	public void setNoticeView(int noticeView) {
		this.noticeView = noticeView;
	}

	@Override
	public String toString() {
		return "Post [noticeNo=" + noticeNo + ", noticeDate=" + noticeDate + ", noticeFileName=" + noticeFileName
				+ ", noticeSubject=" + noticeSubject + ", noticeContents=" + noticeContents + ", noticeView="
				+ noticeView + "]";
	}
}
