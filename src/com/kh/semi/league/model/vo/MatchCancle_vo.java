package com.kh.semi.league.model.vo;

import java.io.Serializable;

public class MatchCancle_vo implements Serializable{
	private String cnCode;
	private String cnName;
	private int matchId;
	
public MatchCancle_vo() {}

public MatchCancle_vo(String cnCode, String cnName, int matchId) {
	super();
	this.cnCode = cnCode;
	this.cnName = cnName;
	this.matchId = matchId;
}

public String getCnCode() {
	return cnCode;
}

public void setCnCode(String cnCode) {
	this.cnCode = cnCode;
}

public String getCnName() {
	return cnName;
}

public void setCnName(String cnName) {
	this.cnName = cnName;
}

public int getMatchId() {
	return matchId;
}

public void setMatchId(int matchId) {
	this.matchId = matchId;
}

@Override
public String toString() {
	return "MatchCancle_vo [cnCode=" + cnCode + ", cnName=" + cnName + ", matchId=" + matchId + "]";
} 


}
