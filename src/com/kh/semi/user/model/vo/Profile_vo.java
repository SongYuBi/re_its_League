package com.kh.semi.user.model.vo;

import java.sql.Date;

public class Profile_vo implements java.io.Serializable{

	private int pfId;					
	private String pfPwd;
	private String pfNumber;
	private String pfName;
	private Date pfDate;
	private String pfEmail;
	private String pfAddress;
	private String pfGender;
	private String pfGrade;
	private Date pfModifyDate;
	private String pfPhone;
	private int prAssist;						//어시스트
	private int prGoal;							//골
	
	
	
	public int getPrAssist() {
		return prAssist;
	}

	public void setPrAssist(int prAssist) {
		this.prAssist = prAssist;
	}

	public int getPrGoal() {
		return prGoal;
	}

	public void setPrGoal(int prGoal) {
		this.prGoal = prGoal;
	}

	public Profile_vo() {
		
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	public String getPfPwd() {
		return pfPwd;
	}

	public void setPfPwd(String pfPwd) {
		this.pfPwd = pfPwd;
	}

	public String getPfNumber() {
		return pfNumber;
	}

	public void setPfNumber(String pfNumber) {
		this.pfNumber = pfNumber;
	}

	public String getPfName() {
		return pfName;
	}

	public void setPfName(String pfName) {
		this.pfName = pfName;
	}

	public Date getPfDate() {
		return pfDate;
	}

	public void setPfDate(Date pfDate) {
		this.pfDate = pfDate;
	}

	public String getPfEmail() {
		return pfEmail;
	}

	public void setPfEmail(String pfEmail) {
		this.pfEmail = pfEmail;
	}

	public String getPfAddress() {
		return pfAddress;
	}

	public void setPfAddress(String pfAddress) {
		this.pfAddress = pfAddress;
	}

	public String getPfGender() {
		return pfGender;
	}

	public void setPfGender(String pfGender) {
		this.pfGender = pfGender;
	}

	public String getPfGrade() {
		return pfGrade;
	}

	public void setPfGrade(String pfGrade) {
		this.pfGrade = pfGrade;
	}


	public Date getPfModifyDate() {
		return pfModifyDate;
	}

	public void setPfModifyDate(Date pfModifyDate) {
		this.pfModifyDate = pfModifyDate;
	}

	public String getPfPhone() {
		return pfPhone;
	}

	public void setPfPhone(String pfPhone) {
		this.pfPhone = pfPhone;
	}

	@Override
	public String toString() {
		return "Profile_vo [pfId=" + pfId + ", pfPwd=" + pfPwd + ", pfNumber=" + pfNumber + ", pfName=" + pfName
				+ ", pfDate=" + pfDate + ", pfEmail=" + pfEmail + ", pfAddress=" + pfAddress + ", pfGender=" + pfGender
				+ ", pfGrade=" + pfGrade + ", pfModifyDate=" + pfModifyDate + ", pfPhone=" + pfPhone + ", prAssist="
				+ prAssist + ", prGoal=" + prGoal + "]";
	}

	public Profile_vo(int pfId, String pfPwd, String pfNumber, String pfName, Date pfDate, String pfEmail,
			String pfAddress, String pfGender, String pfGrade, Date pfModifyDate, String pfPhone, int prAssist,
			int prGoal) {
		super();
		this.pfId = pfId;
		this.pfPwd = pfPwd;
		this.pfNumber = pfNumber;
		this.pfName = pfName;
		this.pfDate = pfDate;
		this.pfEmail = pfEmail;
		this.pfAddress = pfAddress;
		this.pfGender = pfGender;
		this.pfGrade = pfGrade;
		this.pfModifyDate = pfModifyDate;
		this.pfPhone = pfPhone;
		this.prAssist = prAssist;
		this.prGoal = prGoal;
	}

	
	
	
}
