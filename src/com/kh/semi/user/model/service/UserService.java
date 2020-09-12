package com.kh.semi.user.model.service;

import com.kh.semi.user.model.dao.UserDao;
import com.kh.semi.user.model.vo.Profile_vo;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
public class UserService {

	UserDao dao = new UserDao();
	//회원 가입하는 메소드
	public int InsertUserMember(Profile_vo vo) {
	 Connection con = getConnection();
	 
	 int result  = dao.insertUser(con, vo);
	 
	 close(con);
	 
		return result;
	}
	
	public Profile_vo loginCheck(Profile_vo vo) {
		Connection con = getConnection();
		
		Profile_vo loginUser = dao.loginUser(con, vo);
		
		if(loginUser != null) {
			close(con);
		}

		return loginUser;
	}

	public int searchPassword(Profile_vo vo) {
		Connection con = getConnection();
		int result = 0;
		int search = dao.searchUser(con, vo);
		if(search > 0) {
			result = dao.searchPassword(con, vo);
			if(result > 0) {
				close(con);
			}
		}else {
			System.out.println("유저 조회 불가");
		}
		
		
		
		return result;
	}

	public String searchEmail(Profile_vo vo) {
		Connection con = getConnection();
		
		String email = dao.searchEmail(con,vo);
		System.out.println(email);
		if(email != "") {
			close(con);
		}
		return email;
	}

	public int doublecheck(String email) {
		Connection con = getConnection();
		
		int result = dao.doublecheck(con,email);
		
		
		close(con);
		return result;
	}

}
