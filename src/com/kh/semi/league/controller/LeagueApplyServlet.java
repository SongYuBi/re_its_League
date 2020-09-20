package com.kh.semi.league.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.league.model.service.LeagueService;
import com.kh.semi.user.model.vo.Profile_vo;

//리그조인폼 리그 신청  controller
@WebServlet("/leagueApply.lg")
public class LeagueApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LeagueApplyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lgName = request.getParameter("lgName");
		
		System.out.println(lgName);
		
		HttpSession session = request.getSession();
		Profile_vo user = (Profile_vo)session.getAttribute("loginUser");
		//int num  = user.getPfId();
		int num = 133;
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("num", num);
		hmap.put("lgName", lgName);
		
		int result = new LeagueService().leagueApply(hmap);
		
		String path = "";
		
		if(result> 0) {
			path = "selectLeagueList.lg";
			response.sendRedirect(path);
			
		}else {
			path = "views/common/errorPage.jsp";
			request.setAttribute("message", "리그신청실패!");
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
