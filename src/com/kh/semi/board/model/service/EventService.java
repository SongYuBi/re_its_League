package com.kh.semi.board.model.service;

import static com.kh.semi.common.JDBCTemplate.close;
import static com.kh.semi.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.board.model.dao.EventDao;
import com.kh.semi.board.model.vo.Attachment_vo;
import com.kh.semi.board.model.vo.Event_vo;
import com.kh.semi.exile.model.dao.ExileDao;
import com.kh.semi.exile.model.vo.Exile_vo;

public class EventService {

	public ArrayList<Event_vo> selectEvent() {
		Connection con = getConnection();
	      
	      ArrayList<Event_vo> list = new EventDao().selectEvent(con);
	      close(con);
	      
	      return list;
	}

	public ArrayList<Attachment_vo> selectAttachment() {
		Connection con = getConnection();
	      
	      ArrayList<Attachment_vo> list = new EventDao().selectAttachment(con);
	      close(con);
	      
	      return list;
	}

}
