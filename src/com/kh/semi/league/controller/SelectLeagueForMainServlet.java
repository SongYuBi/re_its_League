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


//메인페이지 매치 아약스 서블릿
@WebServlet("/selectMain.lg")
public class SelectLeagueForMainServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public SelectLeagueForMainServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullDate = request.getParameter("fullDate");
		String startNum = request.getParameter("startNum");
		System.out.println(fullDate);
		System.out.println(startNum);
		
		ArrayList<HashMap<String,Object>>list = new LeagueService().selectForMain(fullDate);
		
		
		
		System.out.println("selectFormain controller:" + list);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list,response.getWriter());
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
