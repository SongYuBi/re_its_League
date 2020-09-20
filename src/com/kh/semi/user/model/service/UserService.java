package com.kh.semi.user.model.service;

import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.user.model.dao.UserDao;
import com.kh.semi.user.model.vo.Profile_vo;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
public class UserService {

	UserDao dao = new UserDao();
	
	//회원 가입하는 메소드
	public int InsertUserMember(Profile_vo vo) {
	 Connection con = getConnection();
	 int result = 0;
	 
	 int doublecheck = dao.doublecheck(con,vo.getPfEmail());
	 if(doublecheck == 0) {
		 result  = dao.insertUser(con, vo);
		 if(result> 0 ) {
			 commit(con);
		 }
	 }else {
		 
	 }
	
	 
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

	//재서
	public Profile_vo selectMyPage(int writer) {

		Connection con = getConnection();
		
		Profile_vo pv = dao.selectMyPage(con, writer);
		
		close(con);
		
		return pv;
		
	}
	//재서	
	public Profile_vo updateMyInfos(Profile_vo pv) {

		
		Connection con = getConnection();
		
		Profile_vo changeInfo = null; 
		
		
		int result = dao.updateMyInfos(con, pv);

		System.out.println(result);
		
		if(result > 0) {
			
			changeInfo = dao.selectChangeMyInfos(con, pv);
			
			if(changeInfo != null) {
				commit(con);
				
			}else {
				rollback(con);
				
			}
		}else {
			rollback(con);
		}
	
		close(con);
		
		return changeInfo;
	}
	// 내가 만든 구단을 찾아서 띄워주기 위해서 팀 vo와 자신의 팀을 찾는 메소드
	public Club_vo search_club(Profile_vo pv) {
		Connection con = getConnection();
		Club_vo vo = new Club_vo();
		// 나의 팀 찾기
		int teamNumber = dao.search_team(con,pv);
		
		if(teamNumber > 0) {
			// 구단의 정보 받아오기
			vo = dao.my_team_info(con,teamNumber);
		}
		
		close(con);
		return vo;
	}

	public int serach_teamNumber(Profile_vo pv) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int teamNumber = dao.search_team(con,pv);
		close(con);
		
		return teamNumber;
	}

}














