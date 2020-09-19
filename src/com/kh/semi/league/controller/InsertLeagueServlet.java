package com.kh.semi.league.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.league.model.vo.League_vo;

@WebServlet("/insertLeague.lg")
public class InsertLeagueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public InsertLeagueServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String leagueId = request.getParameter("leagueId");
		String leagueName = request.getParameter("leagueName");
		String lgHost = request.getParameter("lgHost");
		String firstRef = request.getParameter("firstRef");
		String secondRef = request.getParameter("secondRef");
		String thirdRef = request.getParameter("thirdRef");
		
		int minPlayer = Integer.parseInt(request.getParameter("minPlayer"));
		int subPlayer = Integer.parseInt(request.getParameter("subPlayer"));
		int player = Integer.parseInt(request.getParameter("maxPlayer"));
		int maxPlayer = Integer.parseInt(request.getParameter("player"));
		
		String sDate = request.getParameter("startDate");
		String eDate = request.getParameter("endDate");
		String area = request.getParameter("area");
		String stadium =request.getParameter("stadium");
		
		System.out.println("리그 아이디 : " + leagueId);
		System.out.println("리그이름 : " + leagueName);
		System.out.println("호스트 : " + lgHost); 
		System.out.println("심판1 : " + firstRef);
		System.out.println("심판2 : " + secondRef);
		System.out.println("심판3 : " + thirdRef);
		System.out.println("최소인원 : " + minPlayer);
		System.out.println("서브인원 : " + subPlayer);
		System.out.println("플레이어 : " + player);
		System.out.println("최대 인원 : " + maxPlayer);
		System.out.println("리그 시작일 : " + sDate);
		System.out.println("리그 종료일 : " + eDate);
		System.out.println("지역 : " + area);
		System.out.println("경기장 : " + stadium);
		
		League_vo lg = new League_vo();
		
		lg.setLgId(leagueId);
		lg.setLgHost(lgHost);
		lg.setLgName(leagueName);
		lg.setLgMinPlayer(minPlayer);
		lg.setLgSubPlayer(subPlayer);
		lg.setLgMaxPlayer(maxPlayer);
		lg.setLgPlayer(player);
		lg.setLgSDate(sDate);
		lg.setLgEDate(eDate);
		lg.setRefFid(firstRef);
		lg.setRefSid(secondRef);
		lg.setRefTid(thirdRef);
		lg.setAreaCode(area);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
