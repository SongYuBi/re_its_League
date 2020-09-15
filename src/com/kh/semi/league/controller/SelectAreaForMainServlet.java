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


//메인페이지 지역으로 ajax
@WebServlet("/selectArea.lg")
public class SelectAreaForMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectAreaForMainServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String area  = request.getParameter("selectArea");
		String fullDate = request.getParameter("fullDate");
		
		
		
		ArrayList<HashMap<String, Object>> list = new LeagueService().selectArea(area,fullDate);
		
		System.out.println("controlle : " + list);
		response.setContentType("application/json;charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
