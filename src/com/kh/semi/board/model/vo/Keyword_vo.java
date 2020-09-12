package com.kh.semi.board.vo;

public class Keyword_vo implements java.io.Serializable {
	private int keywordId;
	private String keywordTitle;
	private String keywordContent;
	private int qnaId;
	
	Keyword_vo () {}

	public Keyword_vo(int keywordId, String keywordTitle, String keywordContent, int qnaId) {
		super();
		this.keywordId = keywordId;
		this.keywordTitle = keywordTitle;
		this.keywordContent = keywordContent;
		this.qnaId = qnaId;
	}

	public int getKeywordId() {
		return keywordId;
	}

	public void setKeywordId(int keywordId) {
		this.keywordId = keywordId;
	}

	public String getKeywordTitle() {
		return keywordTitle;
	}

	public void setKeywordTitle(String keywordTitle) {
		this.keywordTitle = keywordTitle;
	}

	public String getKeywordContent() {
		return keywordContent;
	}

	public void setKeywordContent(String keywordContent) {
		this.keywordContent = keywordContent;
	}

	public int getQnaId() {
		return qnaId;
	}

	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}

	@Override
	public String toString() {
		return "Keyword_vo [keywordId=" + keywordId + ", keywordTitle=" + keywordTitle + ", keywordContent="
				+ keywordContent + ", qnaId=" + qnaId + "]";
	};
	
	
}
