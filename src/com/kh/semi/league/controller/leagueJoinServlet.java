package com.kh.semi.league.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.league.model.service.LeagueService;


@WebServlet("/leagueJoin.lg")
public class leagueJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public leagueJoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//League_vo league = new LeagueService().selectLeagueForMain();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
