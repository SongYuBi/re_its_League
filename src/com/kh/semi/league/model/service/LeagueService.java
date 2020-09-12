package com.kh.semi.league.model.service;

import static com.kh.semi.common.JDBCTemplate.close;
import static com.kh.semi.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.semi.league.model.dao.LeagueDao;
import com.kh.semi.league.model.vo.League_vo;
import com.kh.semi.league.model.vo.Match_vo;

public class LeagueService {

	public ArrayList<HashMap<String,Object>> selectForMain(String fullDate) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new LeagueDao().selectForMain(con, fullDate);
		
		System.out.println("SelectForMain list : " + list);
		close(con);
 		
		return list;
	}

	public League_vo selectLeague(String leagueName) {
		Connection con = getConnection();
		
		League_vo league= new LeagueDao().selectLeague(con, leagueName);
		
		close(con);
		
		return league;
		
	}


	public ArrayList<League_vo> selectAllLeague() {
		Connection con = getConnection();
		
		ArrayList<League_vo> list = new LeagueDao().selectAllLeague(con);
			
		
		close(con);
		return list;
		
	}

	public void selectArea(String area) {
		Connection con = getConnection();
		
		//new LeagueDao().selectArea(con,area);
			
		
		
	}


}
