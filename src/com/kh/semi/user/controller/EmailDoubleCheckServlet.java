package com.kh.semi.user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.user.model.service.UserService;

/**
 * Servlet implementation class EmailDoubleCheckServlet
 */
@WebServlet("/double_check")
public class EmailDoubleCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailDoubleCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		System.out.println(email);
		
		int doublecheck_result = new UserService().doublecheck(email);
		String ment = "";
		if(doublecheck_result > 0) {
			ment = "중복된 아이디가 있습니다.";
		}else {
			ment ="아이디 사용이 가능합니다.";
		}
		ArrayList list = new ArrayList();
		list.add(ment);
		response.setContentType("application/json; charset=UTF-8");
		
		new Gson().toJson(ment,response.getWriter());
		System.out.println(list.get(0));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
