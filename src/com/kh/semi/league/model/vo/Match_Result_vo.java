package com.kh.semi.league.model.vo;

import java.io.Serializable;

public class Match_Result_vo implements Serializable{

	private int ResId;						//경기 결과 고유 번호(PK)
	private String resWin;					//승
	private String resLose;					//무
	private String resDraw;					//패
	private int goal;						//득점
	private int resLoseGoal;				//실점
	private int mrId;						//경기기록(FK)
	private int clubId;						//구단 고유번호(FK)

	public int getResId() {
		return ResId;
	}

	public void setResId(int resId) {
		ResId = resId;
	}

	public String getResWin() {
		return resWin;
	}

	public void setResWin(String resWin) {
		this.resWin = resWin;
	}

	public String getResLose() {
		return resLose;
	}

	public void setResLose(String resLose) {
		this.resLose = resLose;
	}

	public String getResDraw() {
		return resDraw;
	}

	public void setResDraw(String resDraw) {
		this.resDraw = resDraw;
	}

	public int getGoal() {
		return goal;
	}

	public void setGoal(int goal) {
		this.goal = goal;
	}

	public int getResLoseGoal() {
		return resLoseGoal;
	}

	public void setResLoseGoal(int resLoseGoal) {
		this.resLoseGoal = resLoseGoal;
	}

	public int getMrId() {
		return mrId;
	}

	public void setMrId(int mrId) {
		this.mrId = mrId;
	}

	public int getClubId() {
		return clubId;
	}

	public void setClubId(int clubId) {
		this.clubId = clubId;
	}

	@Override
	public String toString() {
		return "Match_Result_vo [ResId=" + ResId + ", resWin=" + resWin + ", resLose=" + resLose + ", resDraw="
				+ resDraw + ", goal=" + goal + ", resLoseGoal=" + resLoseGoal + ", mrId=" + mrId + ", clubId=" + clubId
				+ "]";
	}

	public Match_Result_vo(int resId, String resWin, String resLose, String resDraw, int goal, int resLoseGoal,
			int mrId, int clubId) {
		super();
		ResId = resId;
		this.resWin = resWin;
		this.resLose = resLose;
		this.resDraw = resDraw;
		this.goal = goal;
		this.resLoseGoal = resLoseGoal;
		this.mrId = mrId;
		this.clubId = clubId;
	}

	public Match_Result_vo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
