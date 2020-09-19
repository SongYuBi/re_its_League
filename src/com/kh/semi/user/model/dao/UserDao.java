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
			pstmt.setString(6, vo.getPfAddress());
			pstmt.setString(5, vo.getPfPhone());
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

	//재서
	public Profile_vo selectMyPage(Connection con, int writer) {

		PreparedStatement pstmt = null;
		ResultSet rset= null;
		Profile_vo pv = null;
		
		String sql = prop.getProperty("selectMyPage");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, writer);
			
			rset = pstmt.executeQuery();
			
			
			//IF문을 써줘야하지 
			//한행이여서 
			//담을 행이 많을때는 while
			if(rset.next()) {
				//마이페이지 야스
				//아니요 행나옴 뭐
				//예는 한사람의 정보 그거를 담을라면 객체를 써야함 
				//ResultSet에 컬럼으로 rset.get해서 꺼내서 vo에 담는거다 
				pv = new Profile_vo();
				
				pv.setPfId(rset.getInt("PF_ID"));
				pv.setPfPwd(rset.getString("PF_PWD"));
				pv.setPfNumber(rset.getString("PF_NUMBER"));
				pv.setPfName(rset.getString("PF_NAME"));
				pv.setPfDate(rset.getDate("PF_DATE"));
				pv.setPfEmail(rset.getString("PF_EMAIL"));
				pv.setPfPhone(rset.getString("PF_PHONE"));
				pv.setPfAddress(rset.getString("PF_ADDRESS"));
				pv.setPfGender(rset.getString("PF_GENDER"));
				pv.setPfGrade(rset.getString("PF_GRADE"));
				pv.setPfModifyDate(rset.getDate("PF_MODIFY_DATE"));
				
				
				//한행이여서 add이런 거 없음 
				//딱하나 조회해서 객체에 담겨서 보내느거 
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
			
		}
		
		return pv;
		
		
	}

	//재서
	public int updateMyInfos(Connection con, Profile_vo pv) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String query = prop.getProperty("changeMyInfos");
		System.out.println("금나와라 : " + query);
		
		try {
			
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, pv.getPfNumber());
			pstmt.setString(2, pv.getPfEmail());
			pstmt.setString(3, pv.getPfPhone());
			pstmt.setString(4, pv.getPfAddress());
//			pstmt.setString(5, pv.getPfGender());
			pstmt.setInt(5, pv.getPfId());
			
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			
		}
		
		return result;
		
		
	}
	//재서
	public Profile_vo selectChangeMyInfos(Connection con, Profile_vo pv) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Profile_vo changeMyInfos = null;
		
		String query = prop.getProperty("selectAll");
		
		System.out.println("뭐댜냐 : " + query);
		
		try {
			
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, pv.getPfId());
			
			
			rset = pstmt.executeQuery();
			
		
			if(rset.next()) {
				
				changeMyInfos = new Profile_vo();
				
				
				changeMyInfos.setPfId(rset.getInt("PF_ID"));
				changeMyInfos.setPfPwd(rset.getString("PF_PWD"));
				changeMyInfos.setPfNumber(rset.getString("PF_NUMBER"));
				changeMyInfos.setPfName(rset.getString("PF_NAME"));
				changeMyInfos.setPfDate(rset.getDate("PF_DATE"));
				changeMyInfos.setPfEmail(rset.getString("PF_EMAIL"));
				changeMyInfos.setPfPhone(rset.getString("PF_PHONE"));
				changeMyInfos.setPfAddress(rset.getString("PF_ADDRESS"));
				changeMyInfos.setPfGender(rset.getString("PF_GENDER"));
				changeMyInfos.setPfGrade(rset.getString("PF_GRADE"));
				changeMyInfos.setPfModifyDate(rset.getDate("PF_MODIFY_DATE"));
				
				
			}
			
			System.out.println("이거 값나오면 짜릣해 :" + changeMyInfos);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rset);
			
		}
		
		
		
		return changeMyInfos;
	}


}
































