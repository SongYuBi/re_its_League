package com.kh.semi.payment;

import java.sql.Date;

public class Payment implements java.io.Serializable{
	private int payId;
	private String price;
	private Date payDate;
	private String cardNumber;
	private String payStatus;
	private int pfId;
	private String lgId;
	
	public Payment() {
		
	}

	public Payment(int payId, String price, Date payDate, String cardNumber, String payStatus, int pfId, String lgId) {
		super();
		this.payId = payId;
		this.price = price;
		this.payDate = payDate;
		this.cardNumber = cardNumber;
		this.payStatus = payStatus;
		this.pfId = pfId;
		this.lgId = lgId;
	}

	@Override
	public String toString() {
		return "Payment [payId=" + payId + ", price=" + price + ", payDate=" + payDate + ", cardNumber=" + cardNumber
				+ ", payStatus=" + payStatus + ", pfId=" + pfId + ", lgId=" + lgId + "]";
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public int getPfId() {
		return pfId;
	}

	public void setPfId(int pfId) {
		this.pfId = pfId;
	}

	public String getLgId() {
		return lgId;
	}

	public void setLgId(String lgId) {
		this.lgId = lgId;
	}
	
	
}
