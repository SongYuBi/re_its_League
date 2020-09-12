package com.kh.semi.club.model.service;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.kh.semi.club.model.dao.ClubDao;
import com.kh.semi.club.model.vo.Club_vo;
public class ClubService {

	ClubDao dao = new ClubDao();
	public ArrayList Autocomplete() {
		Connection con = getConnection();
		
		ArrayList UserEmailList = dao.AutocompleteEmail(con);
		
		close(con);
		
		return UserEmailList;
	}
	public Club_vo getClub_info(int teamNumber) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		Club_vo vo = dao.getClub_info(con, teamNumber);
		
		close(con);
		
		return vo;
	}
	public ArrayList searchTeamMatch(int month_, int teamNumber) {
		Connection con = getConnection();
		
		int year = 2020;
		int month = month_;
		int day = 1;
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(year, month-1,day);
		
		
		String startDate = dateFormat.format(cal.getTime());
		System.out.println("startDate : "+ startDate);
		
		int endDate_day = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		cal.set(year, month-1,endDate_day);
		String endDate = dateFormat.format(cal.getTime());
		System.out.println("endDate : " + endDate);
		
		ArrayList list = dao.searchTeamMatch(con,startDate,endDate,teamNumber);
		
		close(con);

		
		return list;
	}

}
