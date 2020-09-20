package com.kh.semi.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;

/**
 * Servlet implementation class NoticeSelectOneServlet
 */
@WebServlet("/selectNoticeOne.no")
public class NoticeSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
	      System.out.println("NoticeSelectOneServlet 호출 성공");
	      System.out.println("num : " + num);
	      
	      Board_vo board = new BoardService().selectNoticeOne(num);
	      
	      System.out.println("select board detail : " + board);
	      
	      String page="";
	      if(board != null) {
	         page = "views/user/noitce/noticeDetail.jsp";
	         
	         request.setAttribute("board",board);
	      }else {
	         
	         page = "views/common/errorPage.jsp";
	         request.setAttribute("message","게시판 상세 조회 실패");
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
