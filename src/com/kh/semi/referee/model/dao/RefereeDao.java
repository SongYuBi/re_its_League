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
			pstmt.setInt(12, ref.getPfId());
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
				rfv.setPfId(rset.getInt("PF_ID"));
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

	public int refChangeStatus(Connection con, String[] applyRefId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("refChangeStatus");
		try {
			pstmt = con.prepareStatement(query);
			for(int i = 0; i < applyRefId.length; i++) {
				pstmt.setString(1, applyRefId[i]);
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updatePf(int pfId, Connection con) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int result_pf_update = 0;
		String query = prop.getProperty("refPfUpdate");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pfId);
			
			result_pf_update = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result_pf_update;
	}

	public ArrayList searchSchedule(int pfId, Connection con) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList schList = null;
		
		String query = prop.getProperty("selectSchedule");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pfId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				schList.add(rset);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
 		return schList;
	}

	public ArrayList<Referee_vo> selectApplyReferee(Connection con) {
		Statement stmt = null;
		ArrayList<Referee_vo> list = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectApplyReferee");
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
				rfv.setPfId(rset.getInt("PF_ID"));
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

}
