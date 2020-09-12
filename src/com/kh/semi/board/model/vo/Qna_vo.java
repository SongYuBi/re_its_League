package com.kh.semi.board.model.vo;

public class Qna_vo implements java.io.Serializable {
	private int qnaId;
	private int bid;
	private String qnaItems;
	
	Qna_vo () {}

	public Qna_vo(int qnaId, int bid, String qanItems) {
		super();
		this.qnaId = qnaId;
		this.bid = bid;
		this.qnaItems = qanItems;
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

	public String getQanItems() {
		return qnaItems;
	}

	public void setQanItems(String qanItems) {
		this.qnaItems = qanItems;
	}

	@Override
	public String toString() {
		return "Qna_vo [qnaId=" + qnaId + ", bid=" + bid + ", qanItems=" + qnaItems + "]";
	};
	
	
}
