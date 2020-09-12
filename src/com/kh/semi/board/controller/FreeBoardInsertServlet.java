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
 * Servlet implementation class FreeBoardInsertServlet
 */
@WebServlet("/insert.bo")
public class FreeBoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeBoardInsertServlet() {
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
		
		Board_vo newBoard = new Board_vo();
		newBoard.setbTitle(title);
		newBoard.setbContent(content);
		newBoard.setPfId(writer);
		
		int result = new BoardService().insertBoard(newBoard);
		
		System.out.println("거기게 : " + result);
		System.out.println("다음 : " + writer);
		
		String path = "";
		if(result > 0) {
			System.out.println("인설트 성공");
		}else {
			System.out.println("인설트 실패");
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
