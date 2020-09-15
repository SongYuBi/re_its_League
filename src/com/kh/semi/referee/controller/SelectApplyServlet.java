package com.kh.semi.referee.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.referee.model.service.RefereeService;
import com.kh.semi.referee.model.vo.Referee_vo;

/**
 * Servlet implementation class SelectApplyServlet
 */
@WebServlet("/selectApply.rf")
public class SelectApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectApplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Referee_vo> list = new RefereeService().selectApplyReferee();
		
		String path = "";
		if(list != null) {
			path = "views/admin/referee/refereeApply_admin.jsp";
			request.setAttribute("list", list);
		} else {
			path = "views/common/errorPage.jsp";
			request.setAttribute("message", "심판 관리 페이지 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
