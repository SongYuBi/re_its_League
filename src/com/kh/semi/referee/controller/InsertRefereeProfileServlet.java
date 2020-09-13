package com.kh.semi.referee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.referee.model.service.RefereeService;

/**
 * Servlet implementation class InsertRefereeProfileServlet
 */
@WebServlet("/insertProfile.rf")
public class InsertRefereeProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertRefereeProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] applyRefId = request.getParameterValues("check");
		int result = 0;
		for(String val : applyRefId) {
			System.out.println("val :" + val);
		}
		
		result = new RefereeService().insertRefProfile(applyRefId);
		
		String page = "";
		if(result > 0) {
			System.out.println("profile 에 입력완료");
			page = "views/admin/main/index.jsp";
		} else {
			page = "views/common/error.jsp";
			request.setAttribute("message", "승인 실패!");
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