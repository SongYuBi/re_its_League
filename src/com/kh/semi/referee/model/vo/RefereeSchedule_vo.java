package com.kh.semi.referee.model.vo;

import java.sql.Date;

public class RefereeSchedule_vo {
	private Date matchDate;
	private String fName;
	private String sName;
	private int refId;
	private int matchId;
	private String lgName;
	private int pfId;
	private String stdName;
	private int fid;
	private int sid;
	
	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
	
	

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public RefereeSchedule_vo() {
		
	}


	public RefereeSchedule_vo(Date matchDate, String fName, String sName, int refId, int matchId, String lgName,
			int pfId, String stdName, int fid, int sid) {
		super();
		this.matchDate = matchDate;
		this.fName = fName;
		this.sName = sName;
		this.refId = refId;
		this.matchId = matchId;
		this.lgName = lgName;
		this.pfId = pfId;
		this.stdName = stdName;
		this.fid = fid;
		this.sid = sid;
	}

	public Date getMatchDate() {
		return matchDate;
	}

	public void setMatchDate(Date matchDate) {
		this.matchDate = matchDate;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public int getRefId() {
		return refId;
	}

	public void setRefId(int refId) {
		this.refId = refId;
	}

	public int getMatchId() {
		return matchId;
	}

	public void setMatchId(int matchId) {
		this.matchId = matchId;
	}

	public String getLgName() {
		return lgName;
	}

	public void setLgName(String lgName) {
		this.lgName = lgName;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	@Override
	public String toString() {
		return "RefereeSchedule_vo [matchDate=" + matchDate + ", fName=" + fName + ", sName=" + sName + ", refId="
				+ refId + ", matchId=" + matchId + ", lgName=" + lgName + ", pfId=" + pfId + ", stdName=" + stdName
				+ ", fid=" + fid + ", sid=" + sid + "]";
	}

	
	
}
