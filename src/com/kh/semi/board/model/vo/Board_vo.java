package com.kh.semi.board.model.vo;
 
import java.io.Serializable;
import java.util.Date;

public class Board_vo implements java.io.Serializable{
  
	private int bid;						//게시판 분류 번호)PK_
	private int bType;						//게시판 분류
	private int bNo;						//게시판별 번호
	private int bWriter;
	private String bTitle;					//게시글  제목
	private String bContent;				//내용
	private int bCount;						//조회수
	private Date bDate;						//작성일
	private Date modifyDate;				//수정일
	private String bStatus;					//삭제 상태
	private int pfId;						//사용자 고유 번호(FK)
	private int refBid;
	private int replyLevel;
	private String pfName;

	
	public Board_vo() {
		
		
	}


	public Board_vo(int bid, int bType, int bNo, int bWriter, String bTitle, String bContent, int bCount, Date bDate,
			Date modifyDate, String bStatus, int pfId, int refBid, int replyLevel, String pfName) {
		super();
		this.bid = bid;
		this.bType = bType;
		this.bNo = bNo;
		this.bWriter = bWriter;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bCount = bCount;
		this.bDate = bDate;
		this.modifyDate = modifyDate;
		this.bStatus = bStatus;
		this.pfId = pfId;
		this.refBid = refBid;
		this.replyLevel = replyLevel;
		this.pfName = pfName;
	}


	public int getBid() {
		return bid;
	}


	public void setBid(int bid) {
		this.bid = bid;
	}


	public int getbType() {
		return bType;
	}


	public void setbType(int bType) {
		this.bType = bType;
	}


	public int getbNo() {
		return bNo;
	}


	public void setbNo(int bNo) {
		this.bNo = bNo;
	}


	public int getbWriter() {
		return bWriter;
	}


	public void setbWriter(int bWriter) {
		this.bWriter = bWriter;
	}


	public String getbTitle() {
		return bTitle;
	}


	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}


	public String getbContent() {
		return bContent;
	}


	public void setbContent(String bContent) {
		this.bContent = bContent;
	}


	public int getbCount() {
		return bCount;
	}


	public void setbCount(int bCount) {
		this.bCount = bCount;
	}


	public Date getbDate() {
		return bDate;
	}


	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}


	public Date getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}


	public String getbStatus() {
		return bStatus;
	}


	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}


	public int getPfId() {
		return pfId;
	}


	public void setPfId(int pfId) {
		this.pfId = pfId;
	}


	public int getRefBid() {
		return refBid;
	}


	public void setRefBid(int refBid) {
		this.refBid = refBid;
	}


	public int getReplyLevel() {
		return replyLevel;
	}


	public void setReplyLevel(int replyLevel) {
		this.replyLevel = replyLevel;
	}


	public String getPfName() {
		return pfName;
	}


	public void setPfName(String pfName) {
		this.pfName = pfName;
	}


	@Override
	public String toString() {
		return "Board_vo [bid=" + bid + ", bType=" + bType + ", bNo=" + bNo + ", bWriter=" + bWriter + ", bTitle="
				+ bTitle + ", bContent=" + bContent + ", bCount=" + bCount + ", bDate=" + bDate + ", modifyDate="
				+ modifyDate + ", bStatus=" + bStatus + ", pfId=" + pfId + ", refBid=" + refBid + ", replyLevel="
				+ replyLevel + ", pfName=" + pfName + "]";
	}


	

	
}