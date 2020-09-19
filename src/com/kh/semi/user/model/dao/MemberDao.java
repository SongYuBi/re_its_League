package com.kh.semi.user.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import static com.kh.semi.common.JDBCTemplate.*;
import com.kh.semi.user.model.vo.Profile_vo;
 
public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao() {
		String filename = UserDao.class.getResource("/sql/User/member-query.properties").getPath();
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
	public ArrayList<Profile_vo> selectAll(Connection con) {
		Statement stmt = null;
		ResultSet rset= null;
		ArrayList<Profile_vo> list = null;
		
		String query = prop.getProperty("selectAll");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<>();
			
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

}
