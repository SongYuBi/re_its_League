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
 * Servlet implementation class searchUserEmailServlet
 */
@WebServlet("/searchEmail.me")
public class searchUserEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchUserEmailServlet() {
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
	
		Profile_vo vo = new Profile_vo();
		vo.setPfName(name);
		vo.setPfNumber(jumin1 +"-"+ jumin2);
		
		String result = new UserService().searchEmail(vo);
		
		String page = "";
		
		if(result != "") {
			page ="views/user/login/search_Email.jsp";
			request.setAttribute("email", "회원의 이메일"+result);
			request.getRequestDispatcher(page).forward(request, response);
		}else {
			page="views/user/login/search_Email.jsp";
			request.setAttribute("email", "올바른 정보를 입력해주세요.");
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
