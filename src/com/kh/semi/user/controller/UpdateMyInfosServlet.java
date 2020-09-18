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
 * Servlet implementation class UpdateMyInfosServlet
 */
@WebServlet("/updatemyInfos.me")
public class UpdateMyInfosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMyInfosServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int pfId = Integer.parseInt(request.getParameter("pfId"));
		
		String pfName = request.getParameter("pfName");
		String pfPwd = request.getParameter("password");
		String phone = request.getParameter("pfPhone");
		String pfNumber = request.getParameter("pfNumber");
		String pfAddress = request.getParameter("pfAddress");
		String pfGender = request.getParameter("gender");
		String pfEmail = request.getParameter("pfEmail");
		
		System.out.println(pfName);
		System.out.println(pfPwd);
		System.out.println(phone);
		System.out.println(pfNumber);
		System.out.println(pfAddress);
		System.out.println(pfGender);
		System.out.println(pfEmail);
		System.out.println(pfId);
		
		Profile_vo pv = new Profile_vo();
		pv.setPfId(pfId);
		pv.setPfPhone(phone);
		pv.setPfNumber(pfNumber);
		pv.setPfAddress(pfAddress);
		pv.setPfGender(pfGender);
		pv.setPfEmail(pfEmail);
		
		
		Profile_vo changeInfo = new UserService().updateMyInfos(pv);
		
		System.out.println(changeInfo);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
