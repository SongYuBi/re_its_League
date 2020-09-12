package com.kh.semi.referee.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.kh.semi.referee.model.vo.Referee_vo;

import static com.kh.semi.common.JDBCTemplate.*;

public class RefereeDao {
	
	private Properties prop = new Properties();
	
	public RefereeDao() {
		String fileName = RefereeDao.class.getResource("/sql/referee/referee-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int insertReferee(Connection con, Referee_vo ref) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReferee");
		System.out.println(query);
		System.out.println("refRefName : " + ref.getRefName());
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, ref.getRefName());
			pstmt.setString(2, ref.getRefAddress());
			pstmt.setString(3, ref.getRefPhone());
			pstmt.setString(4, ref.getRefNumber());
			pstmt.setString(5, ref.getRefJob());
			pstmt.setString(6, ref.getRefCar());
			pstmt.setString(7, ref.getRefAccount());
			pstmt.setString(8, ref.getLicense());
			pstmt.setDate(9, ref.getGetLicenseDate());
			pstmt.setDate(10, ref.getEndLicenseDate());
			pstmt.setString(11, ref.getLicenseRating());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}

}
