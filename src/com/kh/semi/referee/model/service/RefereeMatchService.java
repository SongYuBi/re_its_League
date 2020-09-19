package com.kh.semi.referee.model.service;

import com.kh.semi.referee.model.dao.RefereeMatchDao;
import com.kh.semi.referee.model.vo.Result_vo;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;

public class RefereeMatchService {
	

	public int insertMatchResult(Result_vo Team1, Result_vo Team2) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		int result = new RefereeMatchDao().insertMatchResult(con , Team1, Team2);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

}
