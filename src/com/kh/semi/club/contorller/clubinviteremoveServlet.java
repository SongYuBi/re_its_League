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
 * Servlet implementation class clubinviteremoveServlet
 */
@WebServlet("/clubinviteremove")
public class clubinviteremoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubinviteremoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hidden_pfId =request.getParameter("hidden_pfId");
		String teamNumber = request.getParameter("teamNumber");
		
		
		
		System.out.println("넘어온 값 :  : "+hidden_pfId);
		
		int result = new ClubService().removeinvite(hidden_pfId,teamNumber);
		String msg = "";
		if(result>0) {
			msg = "초대가 취소되었습니다.";
		}
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(msg,response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
