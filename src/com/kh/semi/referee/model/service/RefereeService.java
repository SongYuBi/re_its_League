package com.kh.semi.referee.model.service;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.semi.referee.model.dao.RefereeDao;
import com.kh.semi.referee.model.vo.Referee_vo;
public class RefereeService {

	public int insertReferee(Referee_vo ref) {
		Connection con = getConnection();
		
		int result = 0;
		
		result = new RefereeDao().insertReferee(con, ref);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}

}
