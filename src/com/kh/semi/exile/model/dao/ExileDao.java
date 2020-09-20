package com.kh.semi.exile.model.dao;

import static com.kh.semi.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.exile.model.vo.Exile_vo;
import com.kh.semi.user.model.dao.UserDao;
import com.kh.semi.user.model.vo.Profile_vo;

import oracle.net.aso.e;

public class ExileDao {
	private Properties prop = new Properties();
	
	public ExileDao() {
	String filename = ExileDao.class.getResource("/sql/exile/exile-query.properties").getPath();
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
	public ArrayList<Exile_vo> selectAll(Connection con) {
		Statement stmt = null;
		ResultSet rset= null;
		ArrayList<Exile_vo> list = null;
		
		String query = prop.getProperty("selectExileMember");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<Exile_vo>();
			
			while(rset.next()) {
				Exile_vo e = new Exile_vo();

				e.setExileId(rset.getInt("EXILE_ID"));
				e.setExileDate(rset.getDate("EXILE_DATE"));
				e.setExileReason(rset.getString("EXILE_REASON"));
				e.setExileType(rset.getString("EXILE_TYPE"));
				e.setPfId(rset.getInt("PF_ID"));
				e.setExileStatus(rset.getString("EXILE_STATUS"));
				e.setPfEmail(rset.getString("PF_EMAIL"));
				e.setClub_name(rset.getString("CLUB_NAME"));
				System.out.println("exile user : " + e);
				
				list.add(e);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		return list;
	}
	public ArrayList<Profile_vo> selectAll2(Connection con) {
		Statement stmt = null;
		ResultSet rset= null;
		ArrayList<Profile_vo> list = null;
		
		String query = prop.getProperty("selectAll");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<Profile_vo>();
			
			while(rset.next()) {
				Profile_vo user = new Profile_vo();

				user.setPfId(rset.getInt("PF_ID"));
				user.setPfPwd(rset.getString("PF_PWD"));
				user.setPfNumber(rset.getString("PF_NUMBER"));
				user.setPfName(rset.getString("PF_NAME"));
				user.setPfDate(rset.getDate("PF_DATE"));
				user.setPfEmail(rset.getString("PF_EMAIL"));
				user.setPfPhone(rset.getString("PF_PHONE"));
				user.setPfAddress(rset.getString("PF_ADDRESS"));
				user.setPfGender(rset.getString("PF_GENDER"));
				user.setPfGrade(rset.getString("PF_GRADE"));
				user.setPfModifyDate(rset.getDate("PF_MODIFY_DATE"));
				user.setPfPhone(rset.getString("PF_PHONE"));
				
				System.out.println("user : " + user);
				
				list.add(user);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		return list;
	}
	public ArrayList<Exile_vo> selectWithdraw(Connection con) {
		Statement stmt = null;
		ResultSet rset= null;
		ArrayList<Exile_vo> list = null;
		
		String query = prop.getProperty("selectExileMember");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<Exile_vo>();
			
			while(rset.next()) {
				Exile_vo e = new Exile_vo();

				e.setExileId(rset.getInt("EXILE_ID"));
				e.setExileDate(rset.getDate("EXILE_DATE"));
				e.setExileReason(rset.getString("EXILE_REASON"));
				e.setExileType(rset.getString("EXILE_TYPE"));
				e.setPfId(rset.getInt("PF_ID"));
				e.setExileStatus(rset.getString("EXILE_STATUS"));
				e.setPfEmail(rset.getString("PF_EMAIL"));
				e.setClub_name(rset.getString("CLUB_NAME"));
				System.out.println("exile user : " + e);
				
				list.add(e);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		return list;
	}

}

