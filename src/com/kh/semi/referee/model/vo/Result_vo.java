package com.kh.semi.referee.model.vo;

public class Result_vo {
	private int resId;
	private String resWin;
	private String resLose;
	private String resDraw;
	private int resGoal;
	private int resLoseGoal;
	private int mrId;
	private int clubId;
	
	public Result_vo() {
		
	}

	public Result_vo(int resId, String resWin, String resLose, String resDraw, int resGoal, int resLoseGoal, int mrId,
			int clubId) {
		super();
		this.resId = resId;
		this.resWin = resWin;
		this.resLose = resLose;
		this.resDraw = resDraw;
		this.resGoal = resGoal;
		this.resLoseGoal = resLoseGoal;
		this.mrId = mrId;
		this.clubId = clubId;
	}

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
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

	public int getResGoal() {
		return resGoal;
	}

	public void setResGoal(int resGoal) {
		this.resGoal = resGoal;
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
		return "Result_vo [resId=" + resId + ", resWin=" + resWin + ", resLose=" + resLose + ", resDraw=" + resDraw
				+ ", resGoal=" + resGoal + ", resLoseGoal=" + resLoseGoal + ", mrId=" + mrId + ", clubId=" + clubId
				+ "]";
	}
	
	
}
