package com.kh.semi.user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.user.model.service.MemberService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class UserSelectAllServlet
 */
@WebServlet("/selectAll")
public class MemberSelectAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberSelectAllServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  ArrayList<Profile_vo> list = new MemberService().selectAll();
		ArrayList list2 = new MemberService().selectAll2();
		
		String page = "";
		if (list != null && list2 != null) {
			request.setAttribute("list", list);
			request.setAttribute("list2", list2);
			page = "views/admin/member/user.jsp";

		} else {
			request.setAttribute("message", "회원 목록 조회 실패!");
			page = "views/common/errorPage.jsp";
		}

		request.getRequestDispatcher(page).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
