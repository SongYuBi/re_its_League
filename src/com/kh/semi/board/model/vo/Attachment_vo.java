package com.kh.semi.board.model.vo;

import java.sql.Date;

public class Attachment_vo {
	private int fid;
	private int bid;
	private String origin_name;
	private String change_name;
	private String file_path;
	private Date upload_date;
	private int file_level;
	private String status;
	


	public Attachment_vo() {}



	public Attachment_vo(int fid, int bid, String origin_name, String change_name, String file_path, Date upload_date,
			int file_level, String status) {
		super();
		this.fid = fid;
		this.bid = bid;
		this.origin_name = origin_name;
		this.change_name = change_name;
		this.file_path = file_path;
		this.upload_date = upload_date;
		this.file_level = file_level;
		this.status = status;
	}



	public int getFid() {
		return fid;
	}



	public void setFid(int fid) {
		this.fid = fid;
	}



	public int getBid() {
		return bid;
	}



	public void setBid(int bid) {
		this.bid = bid;
	}



	public String getOrigin_name() {
		return origin_name;
	}



	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}



	public String getChange_name() {
		return change_name;
	}



	public void setChange_name(String change_name) {
		this.change_name = change_name;
	}



	public String getFile_path() {
		return file_path;
	}



	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}



	public Date getUpload_date() {
		return upload_date;
	}



	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}



	public int getFile_level() {
		return file_level;
	}



	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "Attachment_vo [fid=" + fid + ", bid=" + bid + ", origin_name=" + origin_name + ", change_name="
				+ change_name + ", file_path=" + file_path + ", upload_date=" + upload_date + ", file_level="
				+ file_level + ", status=" + status + "]";
	}

	
	


}