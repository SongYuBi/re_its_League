package com.kh.semi.payment;

import java.sql.Date;

public class Refund implements java.io.Serializable{
	private int rfId;
	private int payId;
	private String rfStatus;
	private Date rfDate;
	private String rfAgree;
	private String rfContent;
	
	public Refund() {
		
	}

	public Refund(int rfId, int payId, String rfStatus, Date rfDate, String rfAgree, String rfContent) {
		super();
		this.rfId = rfId;
		this.payId = payId;
		this.rfStatus = rfStatus;
		this.rfDate = rfDate;
		this.rfAgree = rfAgree;
		this.rfContent = rfContent;
	}

	@Override
	public String toString() {
		return "Refund [rfId=" + rfId + ", payId=" + payId + ", rfStatus=" + rfStatus + ", rfDate=" + rfDate
				+ ", rfAgree=" + rfAgree + ", rfContent=" + rfContent + "]";
	}

	public int getRfId() {
		return rfId;
	}

	public void setRfId(int rfId) {
		this.rfId = rfId;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public String getRfStatus() {
		return rfStatus;
	}

	public void setRfStatus(String rfStatus) {
		this.rfStatus = rfStatus;
	}

	public Date getRfDate() {
		return rfDate;
	}

	public void setRfDate(Date rfDate) {
		this.rfDate = rfDate;
	}

	public String getRfAgree() {
		return rfAgree;
	}

	public void setRfAgree(String rfAgree) {
		this.rfAgree = rfAgree;
	}

	public String getRfContent() {
		return rfContent;
	}

	public void setRfContent(String rfContent) {
		this.rfContent = rfContent;
	}
	
	
}
