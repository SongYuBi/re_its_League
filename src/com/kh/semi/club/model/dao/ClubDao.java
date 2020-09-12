package com.kh.semi.club.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.common.vo.match_view_vo;
import com.kh.semi.common.vo.rank_vo;
import com.kh.semi.league.vo.League_vo;
import com.kh.semi.user.model.dao.UserDao;

public class ClubDao {
	private Properties prop = new Properties();
	
	public ClubDao(){
		String filename = UserDao.class.getResource("/sql/club/club-query.properties").getPath();
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
	
	
	public ArrayList AutocompleteEmail(Connection con) {
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
		String sql = prop.getProperty("AutocompleteEmail");
	
		int i = -1;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				list.add(rs.getString(1));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}


	public Club_vo getClub_info(Connection con, int teamNumber) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Club_vo vo = null;
		String sql = prop.getProperty("getClub_info");
		System.out.println(sql);
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, teamNumber);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo = new Club_vo();
				vo.setClubId(rs.getInt("CLUB_ID"));
				vo.setClubComment(rs.getString("CLUB_COMMENT"));
				vo.setAreaCode(rs.getString("AREA_CODE"));
				vo.setClubName(rs.getString("CLUB_NAME"));
				vo.setClubStatus(rs.getString("CLUB_STATUS"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return vo;
	}



	// 경기 일정 검색하기 (해당 팀)
	public ArrayList searchTeamMatch(Connection con, String startDate, String endDate, int teamNumber) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
	 
		
		String sql = prop.getProperty("searchTeamMatch");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, teamNumber);
			pstmt.setString(2, startDate);
			pstmt.setString(3, endDate);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				match_view_vo match_vo = new match_view_vo();
				match_vo.setLgName(rs.getString("LG_NAME"));
				match_vo.setMatchDate(rs.getDate("MATCH_DATE"));
				match_vo.setClubFName(rs.getString("CLUB_NAME"));
				match_vo.setClubSName(rs.getString("CLUB_NAME_1"));
				match_vo.setStdName(rs.getString("STD_NAME"));
				match_vo.setRef_name(rs.getString("REF_NAME"));
				
				System.out.println(match_vo);
				list.add(match_vo);
				//commit
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}


	public String search_league_id(Connection con, int club_id) {
		String league_id = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("search_league_id");

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, club_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				league_id = rs.getString(1);
			}
			System.out.println("리그 id : " + league_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return league_id;
	}


	public ArrayList club_info_rank(Connection con, String league_id) {
		ArrayList club_info_rank = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("club_info_rank");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, league_id);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				rank_vo vo = new rank_vo();
				vo.setRank(rs.getInt("rank"));
				vo.setClubName(rs.getString("club_name"));
				vo.setRound(rs.getInt("round"));
				vo.setWinScore(rs.getInt("winScore"));
				vo.setWin(rs.getInt("win"));
				vo.setDraw(rs.getInt("draw"));
				vo.setLose(rs.getInt("lose"));
				vo.setGoal(rs.getInt("goal"));
				vo.setLoseGoal(rs.getInt("losegoal"));
				vo.setGoalResult(rs.getInt("goalpoint"));
				vo.setTeamNumber(rs.getInt("club_id"));
				club_info_rank.add(vo);
				System.out.println(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return club_info_rank;
	}


	public ArrayList leagueList(Connection con) {
		Statement stmt = null;
		ArrayList league_list = new ArrayList();
		String sql = prop.getProperty("leagueList");
		ResultSet rs = null;
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				League_vo vo = new League_vo();
				vo.setLgId(rs.getString(1));
				vo.setLgName(rs.getString(2));
				
				league_list.add(vo);
				System.out.println(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return league_list;
	}

}
