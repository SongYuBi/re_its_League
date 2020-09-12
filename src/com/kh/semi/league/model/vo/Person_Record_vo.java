package com.kh.semi.league.model.vo;

import java.io.Serializable;

public class Person_Record_vo implements Serializable{

	private int prId;					//개인 기록 고유 번호(PK)
	private int resId;					//경기결과 고유번호(FK)
	private int pfId;					//사용자 고유 번호(FK)
	private int prGoal;					// 골 수
	private int prAssist;				//어시스트
	private String prStatus;			// 입력 승인 상태

	public int getPrId() {
		return prId;
	}

	public void setPrId(int prId) {
		this.prId = prId;
	}

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	public int getPrGoal() {
		return prGoal;
	}

	public void setPrGoal(int prGoal) {
		this.prGoal = prGoal;
	}

	public int getPrAssist() {
		return prAssist;
	}

	public void setPrAssist(int prAssist) {
		this.prAssist = prAssist;
	}

	public String getPrStatus() {
		return prStatus;
	}

	public void setPrStatus(String prStatus) {
		this.prStatus = prStatus;
	}

	@Override
	public String toString() {
		return "Person_Record_vo [prId=" + prId + ", resId=" + resId + ", pfId=" + pfId + ", prGoal=" + prGoal
				+ ", prAssist=" + prAssist + ", prStatus=" + prStatus + "]";
	}

	public Person_Record_vo(int prId, int resId, int pfId, int prGoal, int prAssist, String prStatus) {
		super();
		this.prId = prId;
		this.resId = resId;
		this.pfId = pfId;
		this.prGoal = prGoal;
		this.prAssist = prAssist;
		this.prStatus = prStatus;
	}

	public Person_Record_vo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
