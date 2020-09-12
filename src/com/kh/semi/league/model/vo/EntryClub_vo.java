package com.kh.semi.league.model.vo;

public class EntryClub_vo implements java.io.Serializable{
	private String lgId;
	private int clubId;
	
	public EntryClub_vo() {
		
	}

	public EntryClub_vo(String lgId, int clubId) {
		super();
		this.lgId = lgId;
		this.clubId = clubId;
	}

	public String getLgId() {
		return lgId;
	}

	public void setLgId(String lgId) {
		this.lgId = lgId;
	}

	public int getClubId() {
		return clubId;
	}

	public void setClubId(int clubId) {
		this.clubId = clubId;
	}

	@Override
	public String toString() {
		return "EntryClub_vo [lgId=" + lgId + ", clubId=" + clubId + "]";
	}
	
	
}
