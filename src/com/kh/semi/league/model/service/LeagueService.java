package com.kh.semi.league.model.service;

import static com.kh.semi.common.JDBCTemplate.close;
import static com.kh.semi.common.JDBCTemplate.commit;
import static com.kh.semi.common.JDBCTemplate.getConnection;
import static com.kh.semi.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.semi.league.model.dao.LeagueDao;
import com.kh.semi.league.model.vo.League_vo;
import com.kh.semi.league.model.vo.Match_vo;
import com.kh.semi.referee.model.vo.Referee_vo;

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

	public ArrayList<HashMap<String,Object>> selectArea(String area, String fullDate) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new LeagueDao().selectArea(con,area, fullDate);
		
		close(con);
			System.out.println("service : " + list);
		return list;
		
	}




	public ArrayList<HashMap<String,Object>> SelectRankWithId(String leagueId) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String,Object>> list = new LeagueDao().SelectRankWithId(con, leagueId);
		
		close(con);
		
		return list;
				
		
	}

	public ArrayList<HashMap<String,Object>> selectRankWithName(String leagueName) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String,Object>> list = new LeagueDao().selectRankWithName(con, leagueName);
		
		close(con);
		
		return list;
		
	}

	public int leagueApply(HashMap<String,Object> hmap) {
		Connection con = getConnection();
		
		int num  = (int) hmap.get("num");
		LeagueDao ld = new LeagueDao();
		
		int clubId = ld.selectClubId(con, num);
		
		hmap.put("clubId", clubId);
		
		
		int result = ld.ApplyLeague(con, hmap);
		
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		return result;
	}

	public ArrayList<HashMap<String, Object>> selectSchedule(String date, String league) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new LeagueDao().selectSchedule(con, date, league);
		
		close(con);
		
		return list;
			
		
	}

	public ArrayList<Referee_vo> selectReferee() {
		Connection con = getConnection();
		
		ArrayList<Referee_vo> list = new LeagueDao().selectReferee(con);
		
		close(con);
		
		return list;
		
	}

	public ArrayList<HashMap<String, Object>> selectAreaForInsert() {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new LeagueDao().selectAreaForInsert(con);
		
		close(con);
		
		return list;
		
	}

	public ArrayList<HashMap<String, Object>> selectStadium(String areaCode) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new LeagueDao().selectStadium(con, areaCode);
		
		close(con);
		
		return list;
		
	}

	


}
