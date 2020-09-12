package com.kh.semi.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.user.model.service.UserService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class LoginUserServlet
 */
@WebServlet("/login.me")
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("user_id");
		String userPwd = request.getParameter("password");
		
		System.out.println("userId : " + userId);
		System.out.println("userPwd : " + userPwd);
		
		Profile_vo vo = new Profile_vo();
		vo.setPfEmail(userId);
		vo.setPfPwd(userPwd);
		
		Profile_vo loginUser = new UserService().loginCheck(vo);
		System.out.println(loginUser);
		
		String path ="";
		if(loginUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			path = "views/user/mainPage/mainPage.jsp";
			response.sendRedirect(path);
	
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
