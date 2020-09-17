package com.kh.semi.board.controller;

import java.io.IOException;
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
 * Servlet implementation class FreeBoardInsertServlet2
 */
@WebServlet("/insert2.bo")
public class FreeBoardInsertServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeBoardInsertServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//작성자는 로그인해있는 상태에서 사용이 가능하기 때문에 세션에 있는 사용이 가능
		//서블릿에서 세션사용이 가능HttpSession에 request.getSession
		HttpSession session = request.getSession(); 
		//로그인 유저정보를 session에서 꺼내가지구옴 
		Profile_vo loginUser = (Profile_vo) session.getAttribute("loginUser");
		System.out.println("ㅇㅇㄹ" + loginUser);
		//loginUser에있는 getPfId를 가지구옴 
		
		int writer = loginUser.getPfId();
		
		;
		Board_vo newBoard = new Board_vo();
		newBoard.setbTitle(title);
		newBoard.setbContent(content);
		newBoard.setPfId(writer);
		
		int result = new BoardService().insertBoard2(newBoard);
		
		System.out.println("result : " + result);
		System.out.println("writer : " + writer);
		
		String path = "";
		if(result > 0) {
			path ="/selectList.bo";
			System.out.println("게시글 등록 성공");
			request.setAttribute("newBoard",newBoard);
			
		}else {
			path = "views/common/errorPage.jsp";
			System.out.println("게시글 등록 실패");
			request.setAttribute("message","게시판 상세 조회 실패");
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
