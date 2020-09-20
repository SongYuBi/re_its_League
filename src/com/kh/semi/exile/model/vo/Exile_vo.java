package com.kh.semi.exile.model.vo;

import java.sql.Date;

public class Exile_vo implements java.io.Serializable {
	private int exileId;
	private Date exileDate;
	private String exileReason;
	private String exileType;
	private int pfId;
	private String exileStatus;
	private String pfEmail;
	private String club_name;
	
	public Exile_vo () {}

	public Exile_vo(int exileId, Date exileDate, String exileReason, String exileType, int pfId, String exileStatus,
			String pfEmail, String club_name) {
		super();
		this.exileId = exileId;
		this.exileDate = exileDate;
		this.exileReason = exileReason;
		this.exileType = exileType;
		this.pfId = pfId;
		this.exileStatus = exileStatus;
		this.pfEmail = pfEmail;
		this.club_name = club_name;
	}

	public int getExileId() {
		return exileId;
	}

	public void setExileId(int exileId) {
		this.exileId = exileId;
	}

	public Date getExileDate() {
		return exileDate;
	}

	public void setExileDate(Date exileDate) {
		this.exileDate = exileDate;
	}

	public String getExileReason() {
		return exileReason;
	}

	public void setExileReason(String exileReason) {
		this.exileReason = exileReason;
	}

	public String getExileType() {
		return exileType;
	}

	public void setExileType(String exileType) {
		this.exileType = exileType;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	public String getExileStatus() {
		return exileStatus;
	}

	public void setExileStatus(String exileStatus) {
		this.exileStatus = exileStatus;
	}

	public String getPfEmail() {
		return pfEmail;
	}

	public void setPfEmail(String pfEmail) {
		this.pfEmail = pfEmail;
	}

	public String getClub_name() {
		return club_name;
	}

	public void setClub_name(String club_name) {
		this.club_name = club_name;
	}

	@Override
	public String toString() {
		return "Exile_vo [exileId=" + exileId + ", exileDate=" + exileDate + ", exileReason=" + exileReason
				+ ", exileType=" + exileType + ", pfId=" + pfId + ", exileStatus=" + exileStatus + ", pfEmail="
				+ pfEmail + ", club_name=" + club_name + "]";
	}

	
	
	
}
