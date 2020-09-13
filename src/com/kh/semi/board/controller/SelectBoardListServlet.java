package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;

/**
 * Servlet implementation class SelectBoardListServlet
 */
//재서
@WebServlet("/SelectBoardListServlet")
public class SelectBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectBoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Board_vo> list = new BoardService().selectList1();
		
		System.out.println("select board list : " + list);
		
		String path="";
		if(list != null) {
			path = "views/user/qna/qnaList.jsp";
			request.setAttribute("list", list);
		} else {
			path="view/common/errorPage.jsp";
			request.setAttribute("message", "게시판 조회 실패!");
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
