package com.kh.semi.league.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.league.model.service.LeagueService;
import com.kh.semi.league.model.vo.League_vo;

//리그 맨처음 페이지 controller
@WebServlet("/leagueMain.lg")
public class LeagueMainPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LeagueMainPageServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<League_vo> list = new LeagueService().selectAllLeague();
		
		System.out.println(list);
		
		String path = "";
		if(list != null) {
			path = "views/user/league/leagueMainPage.jsp";
			request.setAttribute("list", list);
			
		}else {
			
			path= "views/common/errorPage.jsp";
			request.setAttribute("message", "리그메인조회실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
