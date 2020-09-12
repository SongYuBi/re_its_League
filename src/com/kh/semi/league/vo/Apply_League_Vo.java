package com.kh.semi.league.vo;

import java.sql.Date;

public class Apply_League_Vo implements java.io.Serializable{

	private int alId;
	private Date alDate;
	private int clubId;
	private String alStatus;
	private String lgId;
	
	
	public Apply_League_Vo() {
		
	}


	public Apply_League_Vo(int alId, Date alDate, int clubId, String alStatus, String lgId) {
		super();
		this.alId = alId;
		this.alDate = alDate;
		this.clubId = clubId;
		this.alStatus = alStatus;
		this.lgId = lgId;
	}


	public int getAlId() {
		return alId;
	}


	public void setAlId(int alId) {
		this.alId = alId;
	}


	public Date getAlDate() {
		return alDate;
	}


	public void setAlDate(Date alDate) {
		this.alDate = alDate;
	}


	public int getClubId() {
		return clubId;
	}


	public void setClubId(int clubId) {
		this.clubId = clubId;
	}


	public String getAlStatus() {
		return alStatus;
	}


	public void setAlStatus(String alStatus) {
		this.alStatus = alStatus;
	}


	public String getLgId() {
		return lgId;
	}


	public void setLgId(String lgId) {
		this.lgId = lgId;
	}


	@Override
	public String toString() {
		return "Apply_League_Vo [alId=" + alId + ", alDate=" + alDate + ", clubId=" + clubId + ", alStatus=" + alStatus
				+ ", lgId=" + lgId + "]";
	}
	
}
