package com.kh.semi.club.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.club.model.service.ClubService;
import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.common.vo.rank_vo;
import com.kh.semi.user.model.vo.Profile_vo;

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
		HttpSession session = request.getSession();
		Profile_vo user_vo = (Profile_vo)session.getAttribute("loginUser");
		
		System.out.println("구단을 클릭한 유저: "+user_vo);
		
		if(user_vo==null) {
			 user_vo = new Profile_vo();
			 user_vo.setPfId(125);
		}
		
		int teamNumber = Integer.parseInt(request.getParameter("teamNumber"));
		System.out.println("teamnumber : "+teamNumber);
		
		int if_admin = new ClubService().search_club_admin(teamNumber,user_vo);
		
		Club_vo club_info = new ClubService().getClub_info(teamNumber,user_vo);
	
		System.out.println("club vo :" + club_info );
		
		if(if_admin > 0 ) {
			System.out.println("구단주 입장.");
		}
		String path="";
		
		if(club_info != null) {
			request.setAttribute("club_info", club_info);
			request.setAttribute("if_admin", if_admin);
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
