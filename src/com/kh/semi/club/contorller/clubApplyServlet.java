package com.kh.semi.club.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.club.model.service.ClubService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class clubApplyServlet
 */
@WebServlet("/isert_club")
public class clubApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubApplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String club_name = request.getParameter("club_name");
		String area = request.getParameter("arae_local");
		String club_comment = request.getParameter("club_ment");
		
		System.out.println("club_name : " + club_name);
		System.out.println("area : " + area);
		System.out.println("club_comment : " + club_comment);
		
		HttpSession session = request.getSession();
		Profile_vo user_vo = (Profile_vo)session.getAttribute("loginUser");
		
		System.out.println(user_vo);
		
		int result = new ClubService().insert_club(club_name,area,club_comment,user_vo);
		
		
		
		String page = "";
		if(result > 0) {
			page ="index.jsp";
			request.setAttribute("login", "클럽신청이 완료되었습니다.");
			request.getRequestDispatcher(page).forward(request, response);
		}else {
			page="views/user/club/club_apply.jsp";
			request.setAttribute("msg", "올바른 정보를 입력해주세요.");
			request.getRequestDispatcher(page).forward(request, response);
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
