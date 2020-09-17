package com.kh.semi.referee.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.kh.semi.referee.model.service.RefereeService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class ScheduleSearchServlet
 */
@WebServlet("/refSchedule_filter.rf")
public class ScheduleServletFilter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleServletFilter() {
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
		String[] date = request.getParameter("date").split("-");
		String carouselMonth = request.getParameter("nextMonth");
		int carMonth = Integer.parseInt(carouselMonth);
		int year = Integer.parseInt(date[0]);
		int month = Integer.parseInt(date[1]);
		int day = Integer.parseInt(date[2]);
		
		
		Calendar cal = Calendar.getInstance();
		cal.set(year, carMonth-1, 1);
		int lastDay = cal.getActualMaximum(Calendar.DATE);
		System.out.println("lastDay :" + lastDay);
		System.out.println("year : " + year + " month : " + carMonth + " day : " + day);
		
		String lastDate = Integer.toString(year)+"-"+Integer.toString(carMonth)+"-"+Integer.toString(lastDay);
		String firstDate = Integer.toString(year)+"-"+Integer.toString(carMonth)+"-"+"01";
		System.out.println("라스트 데이!!"+lastDate);
		System.out.println("퍼스트 데이!!"+firstDate);
		
		int pfId = 500;
		ArrayList schList = null;
		schList = new RefereeService().searchScheduleFilter(pfId, firstDate, lastDate);
		
		System.out.println(schList);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(schList, response.getWriter());
 		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
