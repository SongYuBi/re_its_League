package com.kh.semi.referee.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.semi.referee.model.vo.Result_vo;

import static com.kh.semi.common.JDBCTemplate.*;

public class RefereeMatchDao {

	private Properties prop = new Properties();
	
	public RefereeMatchDao() {
		String fileName = RefereeDao.class.getResource("/sql/referee/referee-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int insertMatchResult(Connection con, Result_vo team1, Result_vo team2, int matchId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmtTeam1 = null;
		PreparedStatement pstmtTeam2 = null;
		PreparedStatement pstmtMr = null;
		int result = 0;
		int result1 = 0;
		int result2 = 0;
		
		String queryMatchResult = prop.getProperty("insertMatchResult");
		String queryMr = prop.getProperty("insertMatchRecord");
		
		try {
			pstmtMr = con.prepareStatement(queryMr);
			pstmtTeam1 = con.prepareStatement(queryMatchResult);
			pstmtTeam2 = con.prepareStatement(queryMatchResult);
			
			pstmtTeam1.setString(1, team1.getResWin());
			pstmtTeam1.setString(2, team1.getResLose());
			pstmtTeam1.setString(3, team1.getResDraw());
			pstmtTeam1.setInt(4, team1.getResGoal());
			pstmtTeam1.setInt(5, team1.getResLoseGoal());
			pstmtTeam1.setInt(6, team1.getClubId());
			
			pstmtTeam2.setString(1, team2.getResWin());
			pstmtTeam2.setString(2, team2.getResLose());
			pstmtTeam2.setString(3, team2.getResDraw());
			pstmtTeam2.setInt(4, team2.getResGoal());
			pstmtTeam2.setInt(5, team2.getResLoseGoal());
			pstmtTeam2.setInt(6, team2.getClubId());
			
			pstmtMr.setInt(1, matchId);
			result1 = pstmtTeam1.executeUpdate();
			result2 = pstmtTeam2.executeUpdate();
			
			result = result1 + result2;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmtTeam1);
			close(pstmtTeam2);
			
		}
		
		return result;
	}
	
}
