package com.kh.semi.referee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.referee.model.service.RefereeService;

/**
 * Servlet implementation class DeleteRefereeServlet
 */
@WebServlet("/deleteReferee.rf")
public class DeleteRefereeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRefereeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] refId = request.getParameterValues("check");
		String[] pfId = request.getParameterValues("pfId");
		
		int result_ref = new RefereeService().deleteRef(refId);
		int result_pf = new RefereeService().pfChangeGrade(pfId);
		
		
		
		String page="";
		if(result_ref > 0 && result_pf > 0 ) {
			page="/selectReferee.rf";
		} else {
			page="views/comman/errorPage.jsp";
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
