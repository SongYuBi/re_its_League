package com.kh.semi.club.contorller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.club.model.service.ClubService;

/**
 * Servlet implementation class clubSearchNameServlet
 */
@WebServlet("/search_club_name")
public class clubSearchNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubSearchNameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String league_id = request.getParameter("league_id");
		String club_name = request.getParameter("oldVal");
		System.out.println("클럽 이름으로 검색 : "+ club_name);
		
		ArrayList club_info = new ClubService().searchTeamName(club_name,league_id);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(club_info,response.getWriter());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
