package com.kh.semi.referee.model.service;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

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

	public ArrayList<Referee_vo> selectAllReferee() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		ArrayList<Referee_vo> list = new RefereeDao().selectAllReferee(con);
		
		close(con);
		
		return list;
	}

	// referee status n->y
	public int refChangeStatus(String[] applyRefId) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		int result = new RefereeDao().refChangeStatus(con, applyRefId);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}

	// profile 의 grade 를 g4로 수정하는 메소드
	public int updatePf(int pfId) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		int result_pf_update = new RefereeDao().updatePf(pfId , con);
		
		if(result_pf_update > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result_pf_update;
	}

	public ArrayList searchSchedule(int pfId) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		ArrayList schList = new RefereeDao().searchSchedule(pfId, con);
		
		close(con);
 		return schList;
	}

	public ArrayList<Referee_vo> selectApplyReferee() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		ArrayList<Referee_vo> list = new RefereeDao().selectApplyReferee(con);
		
		close(con);
		
		return list;
	}

}
