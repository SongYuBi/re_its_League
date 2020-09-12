package com.kh.semi.club.model.vo;

public class Club_Invite_Vo implements java.io.Serializable{

	private int ciId;
	private int clubId;
	private int pfId;
	private String ciStatus;
	
	public Club_Invite_Vo() {
		
	}

	public int getCiId() {
		return ciId;
	}

	public void setCiId(int ciId) {
		this.ciId = ciId;
	}

	public int getClubId() {
		return clubId;
	}

	public void setClubId(int clubId) {
		this.clubId = clubId;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	public String getCiStatus() {
		return ciStatus;
	}

	public void setCiStatus(String ciStatus) {
		this.ciStatus = ciStatus;
	}

	@Override
	public String toString() {
		return "Club_Invite_Vo [ciId=" + ciId + ", clubId=" + clubId + ", pfId=" + pfId + ", ciStatus=" + ciStatus
				+ "]";
	}
	
	
	
	
}
