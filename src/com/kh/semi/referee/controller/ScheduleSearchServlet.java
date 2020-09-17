package com.kh.semi.referee.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.referee.model.service.RefereeService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class ScheduleSearchServlet
 */
@WebServlet("/refSchedule.rf")
public class ScheduleSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	HttpSession session = request.getSession();
		
		Profile_vo loginUser = (Profile_vo)session.getAttribute("loginUser");
		System.out.println("loginUser : " + loginUser);*/
		/*int pfId = loginUser.getPfId();*/
		int pfId = 500;
		ArrayList schList = null;
		System.out.println("뭔데이거!!!!!!!!!!!!");
		schList = new RefereeService().searchSchedule(pfId);
		
		String page = "";
		
		if(schList != null) {
			page ="views/referee/league/refereeSchedule.jsp";
			request.setAttribute("list", schList);
			
		} else {
			page ="views/common/errorPage.jsp";
		}
		request.getRequestDispatcher(page).forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
