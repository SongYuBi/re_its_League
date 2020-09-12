package com.kh.semi.club.model.vo;

public class Club_vo implements java.io.Serializable{
	
	private int clubId;
	private String clubComment;
	private String areaCode;
	private String clubName;
	private String clubStatus;
	
	public Club_vo() {
		
	}

	public Club_vo(int clubId, String clubComment, String areaCode, String clubName, String clubStatus) {
		super();
		this.clubId = clubId;
		this.clubComment = clubComment;
		this.areaCode = areaCode;
		this.clubName = clubName;
		this.clubStatus = clubStatus;
	}

	public int getClubId() {
		return clubId;
	}

	public void setClubId(int clubId) {
		this.clubId = clubId;
	}

	public String getClubComment() {
		return clubComment;
	}

	public void setClubComment(String clubComment) {
		this.clubComment = clubComment;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getClubName() {
		return clubName;
	}

	public void setClubName(String clubName) {
		this.clubName = clubName;
	}

	public String getClubStatus() {
		return clubStatus;
	}

	public void setClubStatus(String clubStatus) {
		this.clubStatus = clubStatus;
	}

	@Override
	public String toString() {
		return "Club_vo [clubId=" + clubId + ", clubComment=" + clubComment + ", areaCode=" + areaCode + ", clubName="
				+ clubName + ", clubStatus=" + clubStatus + "]";
	}
	
	
	

}
