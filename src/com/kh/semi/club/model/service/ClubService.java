package com.kh.semi.club.model.service;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.kh.semi.club.model.dao.ClubDao;
import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.common.vo.rank_vo;
import com.kh.semi.user.model.vo.Profile_vo;

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

		cal.set(year, month - 1, day);

		String startDate = dateFormat.format(cal.getTime());
		System.out.println("startDate : " + startDate);

		int endDate_day = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		cal.set(year, month - 1, endDate_day);
		String endDate = dateFormat.format(cal.getTime());
		System.out.println("endDate : " + endDate);

		ArrayList list = dao.searchTeamMatch(con, startDate, endDate, teamNumber);

		close(con);

		return list;
	}

	public ArrayList club_info_rank(int club_id) {
		ArrayList club_info_rank_list = new ArrayList();
		Connection con = getConnection();

		String league_id = dao.search_league_id(con, club_id);
		if (league_id != null) {
			club_info_rank_list = dao.club_info_rank(con, league_id);
			if (club_info_rank_list != null) {
				close(con);
				System.out.println("클럽 id에 따른 리그 순위 반환 완료");
			}
		}

		return club_info_rank_list;
	}

	public ArrayList leagueLst() {
		Connection con = getConnection();
		ArrayList leagueList = dao.leagueList(con);

		close(con);

		return leagueList;
	}

	public ArrayList club_main(String league_id) {
		ArrayList club_main_rank_list = new ArrayList();
		Connection con = getConnection();

		club_main_rank_list = dao.club_info_rank(con, league_id);

		close(con);

		return club_main_rank_list;
	}

	public ArrayList club_member_info(int teamNumber) {
		Connection con = getConnection();
		ArrayList club_member_info = dao.club_member_info(con, teamNumber);
		close(con);
		
		return club_member_info;
		
	}

	public ArrayList searchTeamName(String club_name,String league_id) {
		Connection con = getConnection();
		ArrayList club_name_info = dao.searchTeamName(con,club_name,league_id);
		close(con);
		
		return club_name_info;
	}

	public ArrayList searchMemberEmail(String email) {
		Connection con = getConnection();
		ArrayList member_list = dao.searchMemberEmail(con, email);
		
		close(con);
		
		return member_list;
	}

	public int inviteMember(String[] pfid,int club_id) {
		Connection con = getConnection();
		
		int result = dao.inviteMember(con,pfid,club_id);
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public int removeMember(String[] pfid, int club_id) {
		Connection con = getConnection();
		
		int result = dao.removeMember(con,pfid,club_id);
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public ArrayList inviteMemberList(String club_id) {
		Connection con = getConnection();
		ArrayList inviteMemberList = dao.inviteMemberList(con, club_id);
		
		close(con);
		
		
		return inviteMemberList;
	}

	public int removeinvite(String hidden_pfId, String teamNumber) {
		Connection con= getConnection();
		ArrayList result_list = new ArrayList();
		
		int result = dao.removeInviteMember(con,hidden_pfId,teamNumber);
		
		close(con);
		
		return result;
	}

	public int insert_club(String club_name, String area, String club_comment, Profile_vo user_vo) {
		Connection con = getConnection();
		
		int result = dao.insert_club(con,club_name,area,club_comment);
		int result2 = 0;
		if(result > 0 ) {
			System.out.println("클럽 인설트 완료");
			int club_id = dao.crrval(con);
			if(club_id > 0 ) {
				System.out.println("방금 생성한 클럽 번호 인식완료");
				 result2 = dao.insert_club_member(con, club_id,user_vo);
				if( result2 > 0) {
					System.out.println("club_member에 인원 추가 완료");
					commit(con);
				}else {
					rollback(con);
				}
			}
		}
		close(con);
		
		return result2;
	}

	

}
