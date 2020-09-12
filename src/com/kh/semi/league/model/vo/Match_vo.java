package com.kh.semi.league.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Match_vo implements Serializable{
	private int matchId;
	private String stdId;
	private String matchStatus;
	private Date matchDate;
	private String areaCode;
	private String lgNum;
	private int refNum;
	private int clubFid;
	private int clubSid;
	
public Match_vo() {}

public Match_vo(int matchId, String stdId, String matchStatus, Date matchDate, String areaCode, String lgNum, int refNum,
		int clubFid, int clubSid) {
	super();
	this.matchId = matchId;
	this.stdId = stdId;
	this.matchStatus = matchStatus;
	this.matchDate = matchDate;
	this.areaCode = areaCode;
	this.lgNum = lgNum;
	this.refNum = refNum;
	this.clubFid = clubFid;
	this.clubSid = clubSid;
}

public int getMatchId() {
	return matchId;
}

public void setMatchId(int matchId) {
	this.matchId = matchId;
}

public String getStdId() {
	return stdId;
}

public void setStdId(String stdId) {
	this.stdId = stdId;
}

public String getMatchStatus() {
	return matchStatus;
}

public void setMatchStatus(String matchStatus) {
	this.matchStatus = matchStatus;
}

public Date getMatchDate() {
	return matchDate;
}

public void setMatchDate(Date matchDate) {
	this.matchDate = matchDate;
}

public String getAreaCode() {
	return areaCode;
}

public void setAreaCode(String areaCode) {
	this.areaCode = areaCode;
}

public String getLgNum() {
	return lgNum;
}

public void setLgNum(String lgNum) {
	this.lgNum = lgNum;
}

public int getRefNum() {
	return refNum;
}

public void setRefNum(int refNum) {
	this.refNum = refNum;
}

public int getClubFid() {
	return clubFid;
}

public void setClubFid(int clubFid) {
	this.clubFid = clubFid;
}

public int getClubSid() {
	return clubSid;
}

public void setClubSid(int clubSid) {
	this.clubSid = clubSid;
}

@Override
public String toString() {
	return "Match_vo [matchId=" + matchId + ", stdId=" + stdId + ", matchStatus=" + matchStatus + ", matchDate="
			+ matchDate + ", areaCode=" + areaCode + ", lgNum=" + lgNum + ", refNum=" + refNum + ", clubFid=" + clubFid
			+ ", clubSid=" + clubSid + "]";
}



}
