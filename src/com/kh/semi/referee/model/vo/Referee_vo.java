package com.kh.semi.referee.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Referee_vo implements Serializable{
	private int refId;
	private String refName;
	private String refAddress;
	private String refPhone;
	private String refNumber;
	private String refJob;
	private String refCar;
	private String refAccount;
	private Date refDate;
	private String license;
	private Date getLicenseDate;
	private Date endLicenseDate;
	private String licenseRating;
	
    public Referee_vo() {}

	public Referee_vo(int refId, String refName, String refAddress, String refPhone, String refNumber, String refJob,
			String refCar, String refAccount, Date refDate, String license, Date getLicenseDate, Date endLicenseDate,
			String licenseRating) {
		super();
		this.refId = refId;
		this.refName = refName;
		this.refAddress = refAddress;
		this.refPhone = refPhone;
		this.refNumber = refNumber;
		this.refJob = refJob;
		this.refCar = refCar;
		this.refAccount = refAccount;
		this.refDate = refDate;
		this.license = license;
		this.getLicenseDate = getLicenseDate;
		this.endLicenseDate = endLicenseDate;
		this.licenseRating = licenseRating;
	}

	public int getRefId() {
		return refId;
	}

	public void setRefId(int refId) {
		this.refId = refId;
	}

	public String getRefName() {
		return refName;
	}

	public void setRefName(String refName) {
		this.refName = refName;
	}

	public String getRefAddress() {
		return refAddress;
	}

	public void setRefAddress(String refAddress) {
		this.refAddress = refAddress;
	}

	public String getRefPhone() {
		return refPhone;
	}

	public void setRefPhone(String refPhone) {
		this.refPhone = refPhone;
	}

	public String getRefNumber() {
		return refNumber;
	}

	public void setRefNumber(String refNumber) {
		this.refNumber = refNumber;
	}

	public String getRefJob() {
		return refJob;
	}

	public void setRefJob(String refJob) {
		this.refJob = refJob;
	}

	public String getRefCar() {
		return refCar;
	}

	public void setRefCar(String refCar) {
		this.refCar = refCar;
	}

	public String getRefAccount() {
		return refAccount;
	}

	public void setRefAccount(String refAccount) {
		this.refAccount = refAccount;
	}

	public Date getRefDate() {
		return refDate;
	}

	public void setRefDate(Date refDate) {
		this.refDate = refDate;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public Date getGetLicenseDate() {
		return getLicenseDate;
	}

	public void setGetLicenseDate(Date getLicenseDate) {
		this.getLicenseDate = getLicenseDate;
	}

	public Date getEndLicenseDate() {
		return endLicenseDate;
	}

	public void setEndLicenseDate(Date endLicenseDate) {
		this.endLicenseDate = endLicenseDate;
	}

	public String getLicenseRating() {
		return licenseRating;
	}

	public void setLicenseRating(String licenseRating) {
		this.licenseRating = licenseRating;
	}

	@Override
	public String toString() {
		return "Referee_vo [refId=" + refId + ", refName=" + refName + ", refAddress=" + refAddress + ", refPhone="
				+ refPhone + ", refNumber=" + refNumber + ", refJob=" + refJob + ", refCar=" + refCar + ", refAccount="
				+ refAccount + ", refDate=" + refDate + ", license=" + license + ", getLicenseDate=" + getLicenseDate
				+ ", endLicenseDate=" + endLicenseDate + ", licenseRating=" + licenseRating + "]";
	}
    
    
}
