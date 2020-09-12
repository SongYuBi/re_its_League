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
 * Servlet implementation class clubInfoRankServlet
 */
@WebServlet("/club_info_rank")
public class clubInfoRankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubInfoRankServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("클럽의 고유 번호를 통해서 해당 리그가 어떤리그인지 찾기");
		int club_id = Integer.parseInt(request.getParameter("teamNumber"));
		System.out.println("club _ id "+club_id);
		
		ArrayList club_info_rank = new ClubService().club_info_rank(club_id);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(club_info_rank,response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
