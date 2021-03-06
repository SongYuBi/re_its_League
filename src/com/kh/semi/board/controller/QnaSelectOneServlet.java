package com.kh.semi.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.Qna_vo;

/**
 * Servlet implementation class QnaSelectOneServlet
 */
//재서
@WebServlet("/selectOne.qna")
public class QnaSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("button"));
		
	//	int num = 113;
		
		//nno를 이용해서 조회함
		//num값 전달 
		//notice를 셀렉트한거는 조회한거 조회수가 없음 
		Board_vo qna = new BoardService().selectOneByBid(num);
		
	
		System.out.println("뷰 페이지로 보여져라 뿅 : " + qna);
		
		String path = "";
		
		if(path != null) {
			path = "views/user/qna/qnaDetail.jsp";
			request.setAttribute("board", qna);
			
		}else {
//			path = "views/commmon/errorPage.jsp";
//			request.setAttribute("message", "게시판 상세 조회 실패");
			System.out.println("실패₩");
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






















