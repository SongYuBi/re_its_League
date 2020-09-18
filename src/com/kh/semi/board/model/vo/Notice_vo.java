package com.kh.semi.board.model.vo;

public class Notice_vo implements java.io.Serializable {
	private int noitceId;
	private int bid;
	
	Notice_vo () {}

	public Notice_vo(int noitceId, int bid) {
		super();
		this.noitceId = noitceId;
		this.bid = bid;
	}

	public int getNoitceId() {
		return noitceId;
	}

	public void setNoitceId(int noitceId) {
		this.noitceId = noitceId;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	@Override
	public String toString() {
		return "Notice_vo [noitceId=" + noitceId + ", bid=" + bid + "]";
	};
	
	
}
