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

import static com.kh.semi.common.JDBCTemplate.*;
import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.common.vo.match_view_vo;
import com.kh.semi.common.vo.rank_vo;
import com.kh.semi.league.model.vo.League_vo;
import com.kh.semi.user.model.dao.UserDao;
import com.kh.semi.user.model.vo.Profile_vo;

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
		String sql = "";
		

		try {
			if(league_id.equals("all")) {
				 sql = prop.getProperty("club_info_rank_all");
					pstmt = con.prepareStatement(sql);
			}else {
				 sql = prop.getProperty("club_info_rank");
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, league_id);
			}
		
			
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


	public ArrayList club_member_info(Connection con, int teamNumber) {
		ArrayList club_member = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("club_member_info");

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, teamNumber);
			
			System.out.println("어디까지 넘어오는거야?" + sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Profile_vo vo = new Profile_vo();
				vo.setPfId(rs.getInt("PF_ID"));
				vo.setPfName(rs.getString("PF_NAME"));
				vo.setPrAssist(rs.getInt("PR_ASSIST"));
				vo.setPrGoal(rs.getInt("PR_GOAL"));
				vo.setPfEmail(rs.getString("PF_EMAIL"));
				System.out.println("선수들  :" + vo);
				club_member.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return club_member;
	}


	public ArrayList searchTeamName(Connection con, String club_name,String league_id) {
		ArrayList club_name_search = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql ="";
		
		
		try {
			
			if(league_id.equals("all")) {
				sql = prop.getProperty("searchTeamName_all");
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, club_name);
			}else {
				sql = prop.getProperty("searchTeamName");
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, league_id);
				pstmt.setString(2, club_name);
			}
			
			
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
				club_name_search.add(vo);
				System.out.println(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return club_name_search;
	}


	public ArrayList searchMemberEmail(Connection con, String email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList member_list = new ArrayList();
		
		String sql = prop.getProperty("searchMemberEmail");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Profile_vo vo = new Profile_vo();
				vo.setPfId(rs.getInt("PF_ID"));
				vo.setPfEmail(rs.getString("PF_EMAIL"));
				vo.setPfName(rs.getString("PF_NAME"));
				member_list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		
		return member_list;
	}


	public int inviteMember(Connection con, String[] pfid, int club_id) {
		int result = 0;
		int count = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("inviteMember");
		
		for(int i = 0 ;i < pfid.length; i++) {
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, club_id);
				pstmt.setInt(2, Integer.parseInt(pfid[i]));
				
				count = pstmt.executeUpdate();
				result += count;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		close(pstmt);
		
		return result;
	}


	public int removeMember(Connection con, String[] pfid, int club_id) {
		int result = 0;
		int count = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("removeMember");
		
		for(int i = 0 ;i < pfid.length; i++) {
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, club_id);
				pstmt.setInt(2, Integer.parseInt(pfid[i]));
				
				count = pstmt.executeUpdate();
				result += count;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		close(pstmt);
		
		return result;
	}


	public ArrayList inviteMemberList(Connection con, String club_id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList inviteMemberList = new ArrayList();
	
		String sql = prop.getProperty("inviteMemberList");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, club_id);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Profile_vo vo = new Profile_vo();
				vo.setPfId(rs.getInt("PF_ID"));
				vo.setPfEmail(rs.getString("PF_EMAIL"));
				vo.setPfName(rs.getString("PF_NAME"));
				inviteMemberList.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return inviteMemberList;
	}


	public int removeInviteMember(Connection con,String hidden_pfId, String teamNumber) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int all_result = 0;
		int result = 0;
		String sql = prop.getProperty("removeInviteMember");
		
			try {
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1,Integer.parseInt(hidden_pfId));
				pstmt.setInt(2, Integer.parseInt(teamNumber));
				result =pstmt.executeUpdate();
				all_result ++;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		close(rs);
		close(pstmt);
		
		
		return all_result;
	}


	public int insert_club(Connection con, String club_name, String area, String club_comment) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("insert_club");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, club_name);
			pstmt.setString(2, area);
			pstmt.setString(3, club_comment);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	public int crrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;

		int club_id = 0;

		String query = prop.getProperty("selectCurrval");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			if (rset.next()) {
				club_id = rset.getInt("CURRVAL");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}

		return club_id;
	}


	public int insert_club_member(Connection con, int club_id, Profile_vo user_vo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insert_club_member");
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, club_id);
			pstmt.setInt(2,user_vo.getPfId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}


	public int removeClub(Connection con, String teamNumber) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("removeClub");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(teamNumber));
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}


	public int search_club_admin(Connection con,Profile_vo loginUser, int teamNumber) {
		PreparedStatement pstmt = null;
		int result= 0;
		ResultSet rs = null;
		

		String sql = prop.getProperty("search_club_admin");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, loginUser.getPfId());
			pstmt.setInt(2, teamNumber);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result=Integer.parseInt(rs.getString(1));
				System.out.println("유저 검색 하는데 이사람이 구단주인지? " + result);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
				
		return result;
	}


	

}
