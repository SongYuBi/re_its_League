package com.kh.semi.common.vo;

import java.io.Serializable;
import java.util.Date;

public class match_view_vo implements Serializable{

	private String lgName;				// 리그 이름
	private Date matchDate;				// 경기 날짜
	private String clubFName;			// 첫 번째 팀 명 
	private String clubSName;			// 두 번 쟤 팀명
	private String stdName;   			// 구장명
	private String ref_name;			// 심판 명

	public match_view_vo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public match_view_vo(String lgName, Date matchDate, String clubFName, String clubSName, String stdName,
			String ref_name) {
		super();
		this.lgName = lgName;
		this.matchDate = matchDate;
		this.clubFName = clubFName;
		this.clubSName = clubSName;
		this.stdName = stdName;
		this.ref_name = ref_name;
	}

	public String getLgName() {
		return lgName;
	}

	public void setLgName(String lgName) {
		this.lgName = lgName;
	}

	public Date getMatchDate() {
		return matchDate;
	}

	public void setMatchDate(Date matchDate) {
		this.matchDate = matchDate;
	}

	public String getClubFName() {
		return clubFName;
	}

	public void setClubFName(String clubFName) {
		this.clubFName = clubFName;
	}

	public String getClubSName() {
		return clubSName;
	}

	public void setClubSName(String clubSName) {
		this.clubSName = clubSName;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public String getRef_name() {
		return ref_name;
	}

	public void setRef_name(String ref_name) {
		this.ref_name = ref_name;
	}

	@Override
	public String toString() {
		return "match_view_vo [lgName=" + lgName + ", matchDate=" + matchDate + ", clubFName=" + clubFName
				+ ", clubSName=" + clubSName + ", stdName=" + stdName + ", ref_name=" + ref_name + "]";
	}
	
	
}
