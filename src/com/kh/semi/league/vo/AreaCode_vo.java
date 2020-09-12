package com.kh.semi.league.vo;

public class AreaCode_vo implements java.io.Serializable{
	private String areaCode;
	private String areaName;
	
	public AreaCode_vo() {
		
	}

	public AreaCode_vo(String areaCode, String areaName) {
		super();
		this.areaCode = areaCode;
		this.areaName = areaName;
	}


	@Override
	public String toString() {
		return "AreaCode_vo [areaCode=" + areaCode + ", areaName=" + areaName + "]";
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	
	
}
