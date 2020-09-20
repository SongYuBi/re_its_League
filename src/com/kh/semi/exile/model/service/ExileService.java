package com.kh.semi.exile.model.service;

import static com.kh.semi.common.JDBCTemplate.close;
import static com.kh.semi.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.exile.model.dao.ExileDao;
import com.kh.semi.exile.model.vo.Exile_vo;
import com.kh.semi.user.model.vo.Profile_vo;

public class ExileService {

	public ArrayList<Exile_vo> selectExileMember() {
		 Connection con = getConnection();
	      
	      ArrayList<Exile_vo> list = new ExileDao().selectAll(con);
	      close(con);
	      
	      return list;
	}

	public ArrayList<Profile_vo> selectAll() {
          Connection con = getConnection();
	      
	      ArrayList<Profile_vo> list = new ExileDao().selectAll2(con);
	      
	      close(con);
	      
	      return list;
	      }

	public ArrayList<Exile_vo> selectWithdraw() {
		 Connection con = getConnection();
	      
	      ArrayList<Exile_vo> list = new ExileDao().selectWithdraw(con);
	      close(con);
	      
	      return list;
	}

}
