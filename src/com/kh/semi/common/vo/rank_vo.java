package com.kh.semi.common.vo;

public class rank_vo {

	private int rank ;				//순위
	private String clubName;		//클럽이름
	private int round;				//라운드 수
	private int winScore;			//승점
	private int win;				// 승
	private int draw;				//무
	private int lose;				//패
	private int goal;				//득점
	private int loseGoal;			//실점
	private int goalResult;			//득실
	private int teamNumber;			//팀 ID
	
	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getClubName() {
		return clubName;
	}

	public void setClubName(String clubName) {
		this.clubName = clubName;
	}

	public int getRound() {
		return round;
	}

	public void setRound(int round) {
		this.round = round;
	}

	public int getWinScore() {
		return winScore;
	}

	public void setWinScore(int winScore) {
		this.winScore = winScore;
	}

	public int getWin() {
		return win;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public int getLose() {
		return lose;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public int getGoal() {
		return goal;
	}

	public void setGoal(int goal) {
		this.goal = goal;
	}

	public int getLoseGoal() {
		return loseGoal;
	}

	public void setLoseGoal(int loseGoal) {
		this.loseGoal = loseGoal;
	}

	public int getGoalResult() {
		return goalResult;
	}

	public void setGoalResult(int goalResult) {
		this.goalResult = goalResult;
	}
	

	public int getTeamNumber() {
		return teamNumber;
	}

	public void setTeamNumber(int teamNumber) {
		this.teamNumber = teamNumber;
	}

	@Override
	public String toString() {
		return "rank_vo [rank=" + rank + ", clubName=" + clubName + ", round=" + round + ", winScore=" + winScore
				+ ", win=" + win + ", draw=" + draw + ", lose=" + lose + ", goal=" + goal + ", loseGoal=" + loseGoal
				+ ", goalResult=" + goalResult + ", teamNumber=" + teamNumber + "]";
	}

	public rank_vo(int rank, String clubName, int round, int winScore, int win, int draw, int lose, int goal,
			int loseGoal, int goalResult, int teamNumber) {
		super();
		this.rank = rank;
		this.clubName = clubName;
		this.round = round;
		this.winScore = winScore;
		this.win = win;
		this.draw = draw;
		this.lose = lose;
		this.goal = goal;
		this.loseGoal = loseGoal;
		this.goalResult = goalResult;
		this.teamNumber = teamNumber;
	}

	public rank_vo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
