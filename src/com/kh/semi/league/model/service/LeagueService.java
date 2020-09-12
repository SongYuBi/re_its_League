package com.kh.semi.league.model.service;

import static com.kh.semi.common.JDBCTemplate.close;
import static com.kh.semi.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.semi.league.model.dao.LeagueDao;
import com.kh.semi.league.model.vo.Match_vo;
import com.kh.semi.league.vo.League_vo;

public class LeagueService {

	public ArrayList<HashMap<String,Object>> selectForMain(String fullDate) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new LeagueDao().selectForMain(con, fullDate);
		
		System.out.println("SelectForMain list : " + list);
		close(con);
 		
		return list;
	}

	public void selectLeague(String leagueName) {
		Connection con = getConnection();
		
		League_vo league = new LeagueDao().selectLeague(con, leagueName);
		
	}

	public void selectLeagueFirst() {
		Connection con = getConnection();
		
			new LeagueDao().selectLeagueFirst(con);
		
	}


}
