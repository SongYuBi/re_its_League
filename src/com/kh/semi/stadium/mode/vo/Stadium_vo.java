package com.kh.semi.stadium.mode.vo;

import java.io.Serializable;
import java.sql.Date;

public class Stadium_vo implements Serializable{
	private String stdId;
	private String stdName;
	private String stdPhone;
	private Date stdStart;
	private Date stdEnd;
	private int stdPay;
	private int stdSize;
	private String stdAddress;
	private String areaCode;
	
public Stadium_vo() {}

public Stadium_vo(String stdId, String stdName, String stdPhone, Date stdStart, Date stdEnd, int stdPay, int stdSize,
		String stdAddress, String areaCode) {
	super();
	this.stdId = stdId;
	this.stdName = stdName;
	this.stdPhone = stdPhone;
	this.stdStart = stdStart;
	this.stdEnd = stdEnd;
	this.stdPay = stdPay;
	this.stdSize = stdSize;
	this.stdAddress = stdAddress;
	this.areaCode = areaCode;
}

public String getStdId() {
	return stdId;
}

public void setStdId(String stdId) {
	this.stdId = stdId;
}

public String getStdName() {
	return stdName;
}

public void setStdName(String stdName) {
	this.stdName = stdName;
}

public String getStdPhone() {
	return stdPhone;
}

public void setStdPhone(String stdPhone) {
	this.stdPhone = stdPhone;
}

public Date getStdStart() {
	return stdStart;
}

public void setStdStart(Date stdStart) {
	this.stdStart = stdStart;
}

public Date getStdEnd() {
	return stdEnd;
}

public void setStdEnd(Date stdEnd) {
	this.stdEnd = stdEnd;
}

public int getStdPay() {
	return stdPay;
}

public void setStdPay(int stdPay) {
	this.stdPay = stdPay;
}

public int getStdSize() {
	return stdSize;
}

public void setStdSize(int stdSize) {
	this.stdSize = stdSize;
}

public String getStdAddress() {
	return stdAddress;
}

public void setStdAddress(String stdAddress) {
	this.stdAddress = stdAddress;
}

public String getAreaCode() {
	return areaCode;
}

public void setAreaCode(String areaCode) {
	this.areaCode = areaCode;
}

@Override
public String toString() {
	return "Stadium_vo [stdId=" + stdId + ", stdName=" + stdName + ", stdPhone=" + stdPhone + ", stdStart=" + stdStart
			+ ", stdEnd=" + stdEnd + ", stdPay=" + stdPay + ", stdSize=" + stdSize + ", stdAddress=" + stdAddress
			+ ", areaCode=" + areaCode + "]";
}



}
