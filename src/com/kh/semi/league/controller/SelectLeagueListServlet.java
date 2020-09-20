package com.kh.semi.league.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.league.model.service.LeagueService;

/**
 * Servlet implementation class SelectLeagueListServlet
 */
@WebServlet("/selectLeagueList.lg")
public class SelectLeagueListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectLeagueListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<HashMap<String,Object>> list = new LeagueService().selectLeagueList();
		
		System.out.println("서블릿 : " + list);
		
		String path = "";
		
		if(list != null) {
			path = "views/user/league/leagueJoinForm.jsp";
			request.setAttribute("list", list);
			
		}else {
			path= "views/common/errorPage.jsp";
			request.setAttribute("message", "리그리스트 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
