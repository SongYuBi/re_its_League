package com.kh.semi.board.vo;

public class Event_vo implements java.io.Serializable {
	private int eventId;
	private int bid;

	Event_vo () {}

	public Event_vo(int eventId, int bid) {
		super();
		this.eventId = eventId;
		this.bid = bid;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	@Override
	public String toString() {
		return "Event_vo [eventId=" + eventId + ", bid=" + bid + "]";
	};
	
	
	
	
	
}
