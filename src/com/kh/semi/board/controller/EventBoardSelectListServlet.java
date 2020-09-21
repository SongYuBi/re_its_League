package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.EventService;
import com.kh.semi.board.model.vo.Attachment_vo;
import com.kh.semi.board.model.vo.Event_vo;
import com.kh.semi.exile.model.service.ExileService;
import com.kh.semi.exile.model.vo.Exile_vo;

/**
 * Servlet implementation class EventBoardSelectListServlet
 */
@WebServlet("/EventBoardSelectListServlet")
public class EventBoardSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventBoardSelectListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Event_vo> list = new EventService().selectEvent();
		ArrayList<Attachment_vo> list2 = new EventService().selectAttachment();
	
		
		String page = "";
		if (list != null  && list2 != null) {
			request.setAttribute("list", list);
			request.setAttribute("list2", list2);
			page = "views/user/event/eventBoard.jsp";

		} else {
			request.setAttribute("message", "회원 목록 조회 실패!");
			page = "views/common/errorPage.jsp";
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
