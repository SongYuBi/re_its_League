package com.kh.semi.referee.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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

	public ArrayList<Referee_vo> selectAllReferee(Connection con) {
		// TODO Auto-generated method stub
		Statement stmt = null;
		ArrayList<Referee_vo> list = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectAllReferee");
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Referee_vo>();
			while(rset.next()) {
				Referee_vo rfv = new Referee_vo();
				rfv.setRefId(rset.getInt("REF_ID"));
				rfv.setRefName(rset.getString("REF_NAME"));
				rfv.setRefAddress(rset.getString("REF_ADDRESS"));
				rfv.setRefPhone(rset.getString("REF_PHONE"));
				rfv.setRefNumber(rset.getString("REF_NUMBER"));
				rfv.setRefJob(rset.getString("REF_JOB"));
				rfv.setRefCar(rset.getString("REF_CAR"));
				rfv.setRefAccount(rset.getString("REF_ACCOUNT"));
				rfv.setRefDate(rset.getDate("REF_DATE"));
				rfv.setLicense(rset.getString("LICENSE"));
				rfv.setGetLicenseDate(rset.getDate("GET_LICENSE_DATE"));
				rfv.setEndLicenseDate(rset.getDate("END_LICENSE_DATE"));
				rfv.setLicenseRating(rset.getString("LICENSE_RATING"));
				
				list.add(rfv);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}

	public int insertRefProfile(Connection con, String[] applyRefId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertRefProfile");
		try {
			pstmt = con.prepareStatement(query);
			for(int i = 0; i < applyRefId.length; i++) {
				pstmt.setString(1, applyRefId[i]);
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

}
