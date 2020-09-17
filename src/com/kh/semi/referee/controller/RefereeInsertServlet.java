package com.kh.semi.referee.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.referee.model.service.RefereeService;
import com.kh.semi.referee.model.vo.Referee_vo;

/**
 * Servlet implementation class RefereeInsertServlet
 */
@WebServlet("/insertReferee.pf")
public class RefereeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefereeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int pfId = Integer.parseInt(request.getParameter("pfId"));
		
		String refName = request.getParameter("refName");
		String refAdd = request.getParameter("refAdd");
		String refPhone = request.getParameter("refPhone");
		String refNumber = request.getParameter("refNumber");
		String refJob = request.getParameter("refJob");
		String refCar = request.getParameter("refCar");
		String refAccount = request.getParameter("refAccount");
		String refLicense = request.getParameter("refLicense");
		
		String refGetLicense = request.getParameter("refGetLicense");
		Date refGetLicenseDate = Date.valueOf(refGetLicense);
		String refEndLicense = request.getParameter("refEndLicense");
		Date refEndLicenseDate = Date.valueOf(refEndLicense);
		String refRating = request.getParameter("refRating");
		
		Referee_vo ref = new Referee_vo();
		ref.setRefName(refName);
		ref.setRefAddress(refAdd);
		ref.setRefPhone(refPhone);
		ref.setRefNumber(refNumber);
		ref.setRefJob(refJob);
		ref.setRefCar(refCar);
		ref.setRefAccount(refAccount);
		ref.setLicense(refLicense);
		ref.setGetLicenseDate(refGetLicenseDate);
		ref.setEndLicenseDate(refEndLicenseDate);
		ref.setLicenseRating(refRating);
		ref.setPfId(pfId);
		
		System.out.println(ref);
		
		int result_insert = new RefereeService().insertReferee(ref);
		
		String page = "";
		
		if(result_insert > 0) {
			page = "index.jsp";
			response.sendRedirect(page);
		} else {
			page = "views/common//errorPage.jsp";
			request.setAttribute("message", "입사지원 실패!");
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
