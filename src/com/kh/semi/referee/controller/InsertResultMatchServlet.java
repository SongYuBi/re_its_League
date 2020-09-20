package com.kh.semi.referee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.referee.model.service.RefereeMatchService;
import com.kh.semi.referee.model.vo.RefereeSchedule_vo;
import com.kh.semi.referee.model.vo.Result_vo;

/**
 * Servlet implementation class InsertResultMatchServlet
 */
@WebServlet("/insertResult.mr")
public class InsertResultMatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertResultMatchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int matchId = Integer.parseInt(request.getParameter("matchId"));
		int win = Integer.parseInt(request.getParameter("win"));
		String fName = request.getParameter("fname");
		String sName = request.getParameter("sname");
		String lgName = request.getParameter("lgname");
		int fid = Integer.parseInt(request.getParameter("fid"));
		int sid = Integer.parseInt(request.getParameter("sid"));
		int fidScore = Integer.parseInt(request.getParameter("fidScore"));
		int sidScore = Integer.parseInt(request.getParameter("sidScore"));
		
		System.out.println("winTeam : " + win);
		System.out.println("matchId : " + matchId);
		System.out.println("fid : " + fid);
		System.out.println("sid : " + sid);
		System.out.println("fidScore : " + fidScore);
		System.out.println("sidScore : " + sidScore);
		
		Result_vo winTeam = new Result_vo();
		Result_vo loseTeam = new Result_vo();
		Result_vo DrawTeamFid = new Result_vo();
		Result_vo DrawTeamSid = new Result_vo();
		
		int result = 0;
		if(win == fid) {
			// fid 팀이 이겼을 경우
			winTeam.setClubId(fid);
			winTeam.setResWin("Y");
			winTeam.setResLose("N");
			winTeam.setResDraw("N");
			winTeam.setResGoal(fidScore);
			winTeam.setResLoseGoal(sidScore);
			
			loseTeam.setClubId(sid);
			loseTeam.setResWin("N");
			loseTeam.setResLose("Y");
			loseTeam.setResDraw("N");
			loseTeam.setResGoal(sidScore);
			loseTeam.setResLoseGoal(fidScore);
			
			result = new RefereeMatchService().insertMatchResult(winTeam, loseTeam, matchId);
			
		} else if(win == sid){
			// sid 팀이 이겼을 경우
			winTeam.setClubId(sid);
			winTeam.setResWin("Y");
			winTeam.setResLose("N");
			winTeam.setResDraw("N");
			winTeam.setResGoal(fidScore);
			winTeam.setResLoseGoal(sidScore);
			
			loseTeam.setClubId(fid);
			loseTeam.setResWin("N");
			loseTeam.setResLose("Y");
			loseTeam.setResDraw("N");
			loseTeam.setResGoal(sidScore);
			loseTeam.setResLoseGoal(fidScore);
			
			result = new RefereeMatchService().insertMatchResult(winTeam, loseTeam, matchId);
		} else {
			// 무승부일 경우
			DrawTeamFid.setClubId(fid);
			DrawTeamFid.setResWin("N");
			DrawTeamFid.setResLose("N");
			DrawTeamFid.setResDraw("Y");
			DrawTeamFid.setResGoal(fidScore);
			DrawTeamFid.setResLoseGoal(sidScore);

			DrawTeamSid.setClubId(sid);
			DrawTeamSid.setResWin("N");
			DrawTeamSid.setResLose("N");
			DrawTeamSid.setResDraw("Y");
			DrawTeamSid.setResGoal(sidScore);
			DrawTeamSid.setResLoseGoal(fidScore);
			
			result = new RefereeMatchService().insertMatchResult(DrawTeamFid, DrawTeamSid, matchId);
		}
		
		
		String page = "";
		if(result > 0) {
			page = "views/referee/league/refereeGameEvalution.jsp";
			request.setAttribute("matchId", matchId);
		} else {
			page = "views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
