package com.kh.semi.club.model.vo;

public class Club_Member_Vo implements java.io.Serializable{

	
	private int ClubId;
	private int pfId;
	
	public Club_Member_Vo() {
		
	}

	public Club_Member_Vo(int clubId, int pfId) {
		super();
		ClubId = clubId;
		this.pfId = pfId;
	}

	public int getClubId() {
		return ClubId;
	}

	public void setClubId(int clubId) {
		ClubId = clubId;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	@Override
	public String toString() {
		return "Club_Member_Vo [ClubId=" + ClubId + ", pfId=" + pfId + "]";
	}
	
	
}
