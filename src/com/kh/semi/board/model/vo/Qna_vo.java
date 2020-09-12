package com.kh.semi.board.model.vo;

public class Qna_vo implements java.io.Serializable {
	private int qnaId;
	private int bid;
	private String cateType;
	
	public Qna_vo() {
		
	}

	public Qna_vo(int qnaId, int bid, String cateType) {
		super();
		this.qnaId = qnaId;
		this.bid = bid;
		this.cateType = cateType;
	}

	public int getQnaId() {
		return qnaId;
	}

	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getCateType() {
		return cateType;
	}

	public void setCateType(String cateType) {
		this.cateType = cateType;
	}

	@Override
	public String toString() {
		return "Qna_vo [qnaId=" + qnaId + ", bid=" + bid + ", cateType=" + cateType + "]";
	}
	
	
	
	
	
}
