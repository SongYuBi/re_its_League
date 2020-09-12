package com.kh.semi.league.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.league.model.service.LeagueService;
import com.kh.semi.league.model.vo.League_vo;

@WebServlet("/selectLeague.lg")
public class SelectLeagueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectLeagueServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("selectLeague.lg : 접속성공");
		String leagueName = request.getParameter("leagueName");
		System.out.println("selectLeagueName : " + leagueName);
	
		
		League_vo league = new LeagueService().selectLeague(leagueName);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(league, response.getWriter());
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
