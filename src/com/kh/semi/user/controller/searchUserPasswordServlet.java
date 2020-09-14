package com.kh.semi.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.user.model.service.UserService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class searchUserPasswordServlet
 */
@WebServlet("/search_password.me")
public class searchUserPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchUserPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String jumin1 = request.getParameter("Jumin_1");
		String jumin2 = request.getParameter("Jumin_2");
		String password = request.getParameter("password");
		
		Profile_vo vo = new Profile_vo();
		vo.setPfName(name);
		vo.setPfNumber(jumin1 +"-"+ jumin2);
		vo.setPfPwd(password);
		
		int result = new UserService().searchPassword(vo);
		
		String page = "";
		
		if(result > 0) {
			page ="index.jsp";
			response.sendRedirect(page);
			System.out.println("유저 비밀 번호 변경  완료");
		}else {
			page="views/user/login/search_member.jsp";
			request.setAttribute("message", "일치하는 정보가 없습니다.");
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
