package com.kh.semi.user.model.service;
import static com.kh.semi.common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.user.model.dao.MemberDao;
import com.kh.semi.user.model.dao.UserDao;
import com.kh.semi.user.model.vo.Profile_vo;
 
public class MemberService {
		
	
	//민경 회원 목록 조회용 메소드 
	public ArrayList<Profile_vo> selectAll(){
		Connection con = getConnection();
		
		ArrayList<Profile_vo> list = new MemberDao().selectAll(con);
		
		close(con);
		
		return list;
	}
}
