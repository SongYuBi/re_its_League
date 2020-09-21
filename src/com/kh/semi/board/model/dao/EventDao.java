package com.kh.semi.board.model.dao;

import static com.kh.semi.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.board.model.vo.Attachment_vo;
import com.kh.semi.board.model.vo.Event_vo;
import com.kh.semi.exile.model.dao.ExileDao;
import com.kh.semi.exile.model.vo.Exile_vo;

public class EventDao {
	private Properties prop = new Properties();
	
	public EventDao() {
		String filename = ExileDao.class.getResource("/sql/board/board-query.properties").getPath();
		try {
			prop.load(new FileReader(filename));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ArrayList<Event_vo> selectEvent(Connection con) {
		Statement stmt = null;
		ResultSet rset= null;
		ArrayList<Event_vo> list = null;
		
		String query = prop.getProperty("selectEvent");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<Event_vo>();
			
			while(rset.next()) {
				Event_vo e = new Event_vo();

				e.setEventId(rset.getInt("EVENT_ID"));
				e.setBid(rset.getInt("BID"));
				e.setbType(rset.getInt("bType"));
				e.setbNo(rset.getInt("bNo"));
				e.setPfId(rset.getInt("pf_Id"));
				e.setbTitle(rset.getString("bTitle"));
				e.setbContent(rset.getString("bContent"));
				e.setbCount(rset.getInt("bCount"));
				e.setbDate(rset.getDate("bDate"));
				e.setModifyDate(rset.getDate("modify_Date"));
				e.setbStatus(rset.getString("b_Status"));
				
				list.add(e);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		return list;
	}

	public ArrayList<Attachment_vo> selectAttachment(Connection con) {
		// TODO Auto-generated method stub
		return null;
	}

}
