package com.kh.semi.club.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.club.model.service.ClubService;
import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.common.vo.rank_vo;

/**
 * Servlet implementation class clubInfoServlet
 */
@WebServlet("/club_info")
public class clubInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int teamNumber = Integer.parseInt(request.getParameter("teamNumber"));
		System.out.println("teamnumber : "+teamNumber);
		
		Club_vo club_info = new ClubService().getClub_info(teamNumber);
	
		System.out.println("club vo :" + club_info );
		
		String path="";
		if(club_info != null) {
			request.setAttribute("club_info", club_info);
			path = "views/user/club/club_info.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}else {
			request.setAttribute("message","로그인 실패");
			path = "views/common/errorPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
