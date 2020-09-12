package com.kh.semi.league.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.league.model.service.LeagueService;

@WebServlet("/selectLeagueFirst.lg")
public class SelectLeagueFirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectLeagueFirstServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			new LeagueService().selectLeagueFirst();
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
