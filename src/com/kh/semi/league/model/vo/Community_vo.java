package com.kh.semi.league.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Community_vo implements Serializable{

	private int commId;						//게시글 번호(PK)
	private String commTitle;				//제목
	private Date commDate;					//작성일자
	private int coomCount;					//조회수
	private String commContent;				//상세내용		
	private int commWriter;					//작성자

	public int getCommId() {
		return commId;
	}

	public void setCommId(int commId) {
		this.commId = commId;
	}

	public String getCommTitle() {
		return commTitle;
	}

	public void setCommTitle(String commTitle) {
		this.commTitle = commTitle;
	}

	public Date getCommDate() {
		return commDate;
	}

	public void setCommDate(Date commDate) {
		this.commDate = commDate;
	}

	public int getCoomCount() {
		return coomCount;
	}

	public void setCoomCount(int coomCount) {
		this.coomCount = coomCount;
	}

	public String getCommContent() {
		return commContent;
	}

	public void setCommContent(String commContent) {
		this.commContent = commContent;
	}

	public int getCommWriter() {
		return commWriter;
	}

	public void setCommWriter(int commWriter) {
		this.commWriter = commWriter;
	}

	@Override
	public String toString() {
		return "Community_vo [commId=" + commId + ", commTitle=" + commTitle + ", commDate=" + commDate + ", coomCount="
				+ coomCount + ", commContent=" + commContent + ", commWriter=" + commWriter + "]";
	}

	public Community_vo(int commId, String commTitle, Date commDate, int coomCount, String commContent,
			int commWriter) {
		super();
		this.commId = commId;
		this.commTitle = commTitle;
		this.commDate = commDate;
		this.coomCount = coomCount;
		this.commContent = commContent;
		this.commWriter = commWriter;
	}

	public Community_vo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
