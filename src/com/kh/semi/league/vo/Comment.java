package com.kh.semi.league.vo;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable{

	private int mentID;							//댓글 고유 번호 (PK)
	private int commId;							//게시슬 고유 번호(FK)
	private String mentContent;					//댓글 내용
	private Date mentDate;						//날짜
	private int pfId;							//사용자 고유 번호(FK)

	public int getMentID() {
		return mentID;
	}

	public void setMentID(int mentID) {
		this.mentID = mentID;
	}

	public int getCommId() {
		return commId;
	}

	public void setCommId(int commId) {
		this.commId = commId;
	}

	public String getMentContent() {
		return mentContent;
	}

	public void setMentContent(String mentContent) {
		this.mentContent = mentContent;
	}

	public Date getMentDate() {
		return mentDate;
	}

	public void setMentDate(Date mentDate) {
		this.mentDate = mentDate;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	@Override
	public String toString() {
		return "Comment [mentID=" + mentID + ", commId=" + commId + ", mentContent=" + mentContent + ", mentDate="
				+ mentDate + ", pfId=" + pfId + "]";
	}

	public Comment(int mentID, int commId, String mentContent, Date mentDate, int pfId) {
		super();
		this.mentID = mentID;
		this.commId = commId;
		this.mentContent = mentContent;
		this.mentDate = mentDate;
		this.pfId = pfId;
	}

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
