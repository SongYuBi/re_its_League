package com.kh.semi.user.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.semi.common.JDBCTemplate.*;
import com.kh.semi.user.model.vo.Profile_vo;

public class UserDao {
	private Properties prop = new Properties();
	
	public UserDao() {
		String filename = UserDao.class.getResource("/sql/User/user-query.properties").getPath();
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
	
	public int insertUser(Connection con, Profile_vo vo) {
	
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertUser");
		System.out.println(vo);
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getPfPwd());
			pstmt.setString(2, vo.getPfNumber());
			pstmt.setString(3, vo.getPfName());
			pstmt.setString(4, vo.getPfEmail());
			pstmt.setString(5, vo.getPfAddress());
			pstmt.setString(6, vo.getPfPhone());
			pstmt.setString(7, vo.getPfGender());
			pstmt.setString(8, vo.getPfGrade());
			result = pstmt.executeUpdate();
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public Profile_vo loginUser(Connection con, Profile_vo vo) {
		Profile_vo loginUser =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("loginSelect");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getPfEmail());
			pstmt.setString(2, vo.getPfPwd());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				loginUser = new Profile_vo();
				
				loginUser.setPfId(rs.getInt("PF_ID"));
				loginUser.setPfPwd(rs.getString("PF_PWD"));
				loginUser.setPfNumber(rs.getString("PF_NUMBER"));
				loginUser.setPfName(rs.getString("PF_NAME"));
				loginUser.setPfDate(rs.getDate("PF_DATE"));
				loginUser.setPfEmail(rs.getString("PF_EMAIL"));
				loginUser.setPfAddress(rs.getString("PF_ADDRESS"));
				loginUser.setPfGender(rs.getString("PF_GENDER"));
				loginUser.setPfGrade(rs.getString("PF_GRADE"));
				loginUser.setPfModifyDate(rs.getDate("PF_MODIFY_DATE"));
				loginUser.setPfPhone(rs.getString("PF_PHONE"));
				
				System.out.println("login user " + loginUser);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}

		return loginUser;
	}

	public int searchPassword(Connection con, Profile_vo vo) {
		System.out.println(vo);
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("searchPassword");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getPfPwd());
			pstmt.setString(2, vo.getPfNumber());
			pstmt.setString(3, vo.getPfName());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public String searchEmail(Connection con, Profile_vo vo) {
		String email = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		String sql = prop.getProperty("searchEmail");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getPfNumber());
			pstmt.setString(2, vo.getPfName());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				email = rs.getString("PF_EMAIL");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return email;
	}

	public int searchUser(Connection con, Profile_vo vo) {
		int search = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("searchUser");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, vo.getPfNumber());
			pstmt.setString(2, vo.getPfName());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				search = rs.getInt(1);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return search;
	}

	public int doublecheck(Connection con, String email) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("doublecheck");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result = rs.getInt("COUNT_CHECK");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		return result;
	}

}
