package com.kh.semi.league.model.vo;

import java.io.Serializable;

public class MatchRecord_vo implements Serializable{
	private int mrId;
	private int matchId;
	private String mrStatus;
	
public MatchRecord_vo() {}

public MatchRecord_vo(int mrId, int matchId, String mrStatus) {
	super();
	this.mrId = mrId;
	this.matchId = matchId;
	this.mrStatus = mrStatus;
}

public int getMrId() {
	return mrId;
}

public void setMrId(int mrId) {
	this.mrId = mrId;
}

public int getMatchId() {
	return matchId;
}

public void setMatchId(int matchId) {
	this.matchId = matchId;
}

public String getMrStatus() {
	return mrStatus;
}

public void setMrStatus(String mrStatus) {
	this.mrStatus = mrStatus;
}

@Override
public String toString() {
	return "MatchRecord_vo [mrId=" + mrId + ", matchId=" + matchId + ", mrStatus=" + mrStatus + "]";
}


    

}
