package com.kh.semi.league.model.dao;

import static com.kh.semi.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.kh.semi.league.model.vo.League_vo;
import com.kh.semi.league.model.vo.Match_vo;
import com.sun.corba.se.spi.orbutil.fsm.State;
import com.sun.org.glassfish.external.statistics.annotations.Reset;

public class LeagueDao {
	private Properties prop = new Properties();
	
	public LeagueDao() {
		String fileName = LeagueDao.class.getResource("/sql/league/league-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	//처음화면 테이블 ajax
	public ArrayList<HashMap<String, Object>> selectForMain(Connection con, String fullDate) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectForMain");
		
		System.out.println("뭘까요 " + fullDate);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, fullDate);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<HashMap<String,Object>>();
			HashMap<String, Object> hmap = null;
			
			
			while(rset.next()) {
				hmap = new HashMap<String, Object>();
				
				hmap.put("LG_NAME", rset.getString("LG_NAME"));
				hmap.put("MATCH_DATE", rset.getDate("MATCH_DATE"));
				hmap.put("CLUB_FID", rset.getString(3));
				hmap.put("CLUB_SID", rset.getString(4));
				hmap.put("STD_FID", rset.getString(5));
				hmap.put("STD_SID", rset.getString(6));
				
				list.add(hmap);
				
			}
			
			System.out.println("selectForMain dao : " + list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}

	
	//아약스 리그조인폼 셀렉트
	public League_vo selectLeague(Connection con, String leagueName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		League_vo league = null;
		
		
		String query = prop.getProperty("selectLeague");
				
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, leagueName);
			
			rset = pstmt.executeQuery();
			
			league = new League_vo();
			
			if(rset.next()) {
			league.setLgId(rset.getString("LG_ID"));	
			league.setLgHost(rset.getString("LG_HOST"));
			league.setLgName(rset.getNString("LG_NAME"));
			league.setLgMinPlayer(rset.getInt("LG_MIN_PLAYER"));
			league.setLgMaxPlayer(rset.getInt("LG_MAX_PLAYER"));
			league.setLgSubPlayer(rset.getInt("LG_SUB_PLAYER"));
			league.setLgPlayer(rset.getInt("LG_PLAYER"));
			league.setLgSDate(rset.getDate("LG_SDATE"));
			league.setLgEDate(rset.getDate("LG_EDATE"));
			league.setLgReward(rset.getString("LG_REWARD"));
			league.setAreaCode(rset.getString("AREA_CODE"));
			league.setStdFName(rset.getString(12));
			league.setStdSName(rset.getString(13));
			league.setRefFid(rset.getString(14));
			league.setRefSid(rset.getString(15));
			league.setRefTid(rset.getString(16));
			
			}
			
	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
			close(rset);
			close(pstmt);
		}
		
		return league;
	}

	
	
	
	
	public void selectLeagueForMain(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		League_vo league = null;
		
		String query = prop.getProperty("selectLeagueForMain");
		
	}


	public ArrayList<League_vo> selectAllLeague(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<League_vo> list = null;
		String query = prop.getProperty("selectAllLeague");
		
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<League_vo>();
		
			while(rset.next()) {
				League_vo league = new League_vo();
				
				league.setLgId(rset.getString("LG_ID"));
				league.setLgName(rset.getString("LG_NAME"));
				
				list.add(league);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
		
		
		
	}


	public ArrayList<HashMap<String, Object>> selectArea(Connection con, String area, String fullDate) {
		PreparedStatement pstmt = null;
		ResultSet rset= null;
		ArrayList<HashMap<String, Object>> list = null;
		
		String query = prop.getProperty("selectArea");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, fullDate);
			pstmt.setString(2, area);
			
			rset = pstmt.executeQuery();
			list = new ArrayList<HashMap<String,Object>>();
			HashMap<String, Object> hmap = null;
			while(rset.next()) {
				hmap = new HashMap<String, Object>();
				
				hmap.put("LG_NAME", rset.getString("LG_NAME"));
				hmap.put("MATCH_DATE", rset.getDate("MATCH_DATE"));
				hmap.put("CLUB_FID", rset.getString(3));
				hmap.put("CLUB_SID", rset.getString(4));
				hmap.put("STD_FID", rset.getString(5));
				hmap.put("STD_SID", rset.getString(6));
				
				
				
				list.add(hmap);
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("dao : " + list);
		
		return list;
	}

	
	

	
	//리그메인페이지 rank with leagudId
	public ArrayList<HashMap<String, Object>> SelectRankWithId(Connection con, String leagueId) {
		PreparedStatement pstmt = null;
		ResultSet rset= null;
		ArrayList<HashMap<String, Object>> list = null;
		
		String query = prop.getProperty("selectRankWithId");
		System.out.println("dao : " + leagueId);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, leagueId);
			
			rset  = pstmt.executeQuery();
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()) {
				HashMap<String, Object> hmap = new HashMap<String, Object>();
				hmap.put("clubName", rset.getString(2));
				hmap.put("round", rset.getInt(3));
				hmap.put("winScore", rset.getInt(4));
				hmap.put("win", rset.getInt(5));
				hmap.put("draw", rset.getInt(6));
				hmap.put("lose", rset.getInt(7));
				hmap.put("goal", rset.getInt(8));
				hmap.put("loseGoal", rset.getInt(9));
				hmap.put("goalPoint", rset.getInt(10));
				hmap.put("lgName", rset.getString(11));
				hmap.put("lgId", rset.getString(12));
				
				list.add(hmap);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
		
	}

	public ArrayList<HashMap<String, Object>> selectRankWithName(Connection con, String leagueName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String, Object>> list = null;
		
		String query = prop.getProperty("selectRanckWithName");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, leagueName);
			
			rset = pstmt.executeQuery();
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()) {
				
				HashMap<String, Object> hmap = new HashMap<String, Object>();
				hmap.put("clubName", rset.getString(2));
				hmap.put("round", rset.getInt(3));
				hmap.put("winScore", rset.getInt(4));
				hmap.put("win", rset.getInt(5));
				hmap.put("draw", rset.getInt(6));
				hmap.put("lose", rset.getInt(7));
				hmap.put("goal", rset.getInt(8));
				hmap.put("loseGoal", rset.getInt(9));
				hmap.put("goalPoint", rset.getInt(10));
				hmap.put("lgName", rset.getString(11));
				hmap.put("lgId", rset.getString(12));
				
				list.add(hmap);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		return list;
	}

	

	public int selectClubId(Connection con, int num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int clubId = 0;
		String query = prop.getProperty("selectClubId");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				clubId = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return clubId;
	}

	
	
	public int ApplyLeague(Connection con, HashMap<String, Object> hmap) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String query = prop.getProperty("applyLeague");
		
		
		int clubId = (int) hmap.get("clubId");
		String lgName = (String) hmap.get("lgName");
		int num = (int) hmap.get("num");
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1,clubId);
			pstmt.setString(2, lgName);
				
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

	public ArrayList<HashMap<String,Object>> selectSchedule(Connection con, String date, String league) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String, Object>>list = null;
		
		String query = prop.getProperty("selectSchedule");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, league);
			pstmt.setString(2, date);
			
			rset = pstmt.executeQuery();
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()) {
			HashMap<String, Object> hmap = new HashMap<String,Object>();	
			
			hmap.put("stdName", rset.getString("STD_NAME"));
			hmap.put("matchDate", rset.getString("MATCH_DATE"));
			hmap.put("REFNAME", rset.getString("REF_NAME"));
			hmap.put("clubNameF", rset.getString(4));
			hmap.put("clubNameS", rset.getString(5));
			
			list.add(hmap);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
		
	}

}
