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
public class refChangeStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public refChangeStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] applyRefId = request.getParameterValues("check");
		int pfId = Integer.parseInt(request.getParameter("pfId"));
		
		int result = 0;
		int result_pf_update = 0;
		
		String apply = request.getParameter("sts");
		for(String val : applyRefId) {
			System.out.println("val :" + val);
		}
		
		if(apply.equals("Y")) {
			result = new RefereeService().refChangeStatus(applyRefId);			
			result_pf_update = new RefereeService().updatePf(pfId);
		} else {
			result = new RefereeService().refApplydel(applyRefId);
		}

		String page = "";
		System.out.println("result : " + result);
		if(result > 0) {
			page = "views/admin/referee/refereeApply_admin.jsp";
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
