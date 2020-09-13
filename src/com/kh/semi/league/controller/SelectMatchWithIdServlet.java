package com.kh.semi.league.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.league.model.service.LeagueService;

@WebServlet("/selectMatchWithId.lg")
public class SelectMatchWithIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectMatchWithIdServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String month = request.getParameter("month");
		String league = request.getParameter("league");
		
		System.out.println(month);
		System.out.println(league);
		
		new LeagueService().SelectScheduleWithId(month, league);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
