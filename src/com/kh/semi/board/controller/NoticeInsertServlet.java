package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/insertNotice.no")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		int writer = Integer.parseInt(request.getParameter("pfName"));
		String date = request.getParameter("date");
		String content = request.getParameter("content");
		
		System.out.println("입력 " + writer);
		
		java.sql.Date day = null;
		
		if(date != "") {
			
			day = java.sql.Date.valueOf(date);
			
		} else {
			day = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Board_vo newNotice = new Board_vo();
		newNotice.setbTitle(title);
		newNotice.setPfId(writer);
		newNotice.setbContent(content);
		newNotice.setbDate(day);
		
		System.out.println("new notice : " + newNotice);
		
		int result = new BoardService().insertNotice(newNotice);
		
		String path = "";
		if(result > 0) {
			path = "noticeList.no";
			response.sendRedirect(path);
		} else {
			path = "views/common/errorPage.jsp";
			request.setAttribute("message", "공지사항 등록 실패!");
			request.getRequestDispatcher(path).forward(request, response);
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
