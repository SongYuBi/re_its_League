package com.kh.semi.league.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.league.model.service.LeagueService;
import com.kh.semi.referee.model.vo.Referee_vo;

@WebServlet("/selectRefereeFirst.lg")
public class SelectRefereeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectRefereeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Referee_vo> list = new LeagueService().selectReferee();
		System.out.println("servlet list : " + list);
		
		
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
