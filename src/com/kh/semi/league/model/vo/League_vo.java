package com.kh.semi.league.model.vo;

import java.sql.Date;

public class League_vo implements java.io.Serializable{
	
	private String lgId;		//리그 고유번호(LG_ID)(PK)
	private String lgHost;		//주관 (LG_HOST)
	private String lgName;		//리그이름(LG_HOST)
	private int lgMinPlayer;	//최소 인원 수(LG_MIN_PLAYER)
	private int lgSubPlayer;    //교체 선수 인원 수(LG_SUB_PLAYER)
	private int lgMaxPlayer;	//총 인원 수(LG_MAX_PLAYER)
	private int lgPlayer;		//선발 인원수(LG_PLAYER)
	private Date lgSDate;		//리그 시작일(LG_SDATE)
	private Date lgEDate;		//리그 종료일(LG_EDATE)
	private String lgReward;	//우승상품(LG_REWARD)
	private String areaCode;	//지역코드(AREA_CODE) (FK)
	private String refFid;		//첫 번째 심판 번호(REF_FID) (FK)
	private String refSid;		//두 번째 심판 번호(REF_SID) (FK)
	private String refTid;		//세 번째 심판 번호(REF_TID) (FK)
	private int stdFid;			//첫 번째 구장 고유 번호(STD_FID)(FK)
	private int stdSid;			//두 번째 구장 고유 번호(STD_SID)(FK)
	private String stdFName;	//join 시 사용할 STD_FID 에 해당하는 STD_NAME (JOIN / FK);
	private String stdSName;	//join 시 사용할 STD_SID 에 해당하는 STD_NAME (JOIN / FK); 
	
	public League_vo() {
		
	}

	public League_vo(String lgId, String lgHost, String lgName, int lgMinPlayer, int lgSubPlayer, int lgMaxPlayer,
			int lgPlayer, Date lgSDate, Date lgEDate, String lgReward, String areaCode, String refFid, String refSid,
			String refTid, int stdFid, int stdSid, String stdFName, String stdSName) {
		super();
		this.lgId = lgId;
		this.lgHost = lgHost;
		this.lgName = lgName;
		this.lgMinPlayer = lgMinPlayer;
		this.lgSubPlayer = lgSubPlayer;
		this.lgMaxPlayer = lgMaxPlayer;
		this.lgPlayer = lgPlayer;
		this.lgSDate = lgSDate;
		this.lgEDate = lgEDate;
		this.lgReward = lgReward;
		this.areaCode = areaCode;
		this.refFid = refFid;
		this.refSid = refSid;
		this.refTid = refTid;
		this.stdFid = stdFid;
		this.stdSid = stdSid;
		this.stdFName = stdFName;
		this.stdSName = stdSName;
	}

	public String getLgId() {
		return lgId;
	}

	public void setLgId(String lgId) {
		this.lgId = lgId;
	}

	public String getLgHost() {
		return lgHost;
	}

	public void setLgHost(String lgHost) {
		this.lgHost = lgHost;
	}

	public String getLgName() {
		return lgName;
	}

	public void setLgName(String lgName) {
		this.lgName = lgName;
	}

	public int getLgMinPlayer() {
		return lgMinPlayer;
	}

	public void setLgMinPlayer(int lgMinPlayer) {
		this.lgMinPlayer = lgMinPlayer;
	}

	public int getLgSubPlayer() {
		return lgSubPlayer;
	}

	public void setLgSubPlayer(int lgSubPlayer) {
		this.lgSubPlayer = lgSubPlayer;
	}

	public int getLgMaxPlayer() {
		return lgMaxPlayer;
	}

	public void setLgMaxPlayer(int lgMaxPlayer) {
		this.lgMaxPlayer = lgMaxPlayer;
	}

	public int getLgPlayer() {
		return lgPlayer;
	}

	public void setLgPlayer(int lgPlayer) {
		this.lgPlayer = lgPlayer;
	}

	public Date getLgSDate() {
		return lgSDate;
	}

	public void setLgSDate(Date lgSDate) {
		this.lgSDate = lgSDate;
	}

	public Date getLgEDate() {
		return lgEDate;
	}

	public void setLgEDate(Date lgEDate) {
		this.lgEDate = lgEDate;
	}

	public String getLgReward() {
		return lgReward;
	}

	public void setLgReward(String lgReward) {
		this.lgReward = lgReward;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getRefFid() {
		return refFid;
	}

	public void setRefFid(String refFid) {
		this.refFid = refFid;
	}

	public String getRefSid() {
		return refSid;
	}

	public void setRefSid(String refSid) {
		this.refSid = refSid;
	}

	public String getRefTid() {
		return refTid;
	}

	public void setRefTid(String refTid) {
		this.refTid = refTid;
	}

	public int getStdFid() {
		return stdFid;
	}

	public void setStdFid(int stdFid) {
		this.stdFid = stdFid;
	}

	public int getStdSid() {
		return stdSid;
	}

	public void setStdSid(int stdSid) {
		this.stdSid = stdSid;
	}

	public String getStdFName() {
		return stdFName;
	}

	public void setStdFName(String stdFName) {
		this.stdFName = stdFName;
	}

	public String getStdSName() {
		return stdSName;
	}

	public void setStdSName(String stdSName) {
		this.stdSName = stdSName;
	}

	@Override
	public String toString() {
		return "League_vo [lgId=" + lgId + ", lgHost=" + lgHost + ", lgName=" + lgName + ", lgMinPlayer=" + lgMinPlayer
				+ ", lgSubPlayer=" + lgSubPlayer + ", lgMaxPlayer=" + lgMaxPlayer + ", lgPlayer=" + lgPlayer
				+ ", lgSDate=" + lgSDate + ", lgEDate=" + lgEDate + ", lgReward=" + lgReward + ", areaCode=" + areaCode
				+ ", refFid=" + refFid + ", refSid=" + refSid + ", refTid=" + refTid + ", stdFid=" + stdFid
				+ ", stdSid=" + stdSid + ", stdFName=" + stdFName + ", stdSName=" + stdSName + "]";
	}

	
	
	
	
	
}
