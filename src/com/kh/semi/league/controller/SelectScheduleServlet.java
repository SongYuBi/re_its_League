package com.kh.semi.league.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.league.model.service.LeagueService;

@WebServlet("/selectSchedule.lg")
public class SelectScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectScheduleServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date = request.getParameter("fullDate");
		String league = request.getParameter("league");
		
		System.out.println(date);
		System.out.println(league);
		
		ArrayList<HashMap<String,Object>> list = new LeagueService().selectSchedule(date,league);
		System.out.println(list);
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
