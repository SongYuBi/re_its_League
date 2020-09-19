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
 * Servlet implementation class ModifyBoardServlet
 */
@WebServlet("/modifyBoard.bo")
public class ModifyBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		System.out.println("게시판번호:" +bid);
		
		;
		Board_vo newBoard = new Board_vo();
		newBoard.setbTitle(title);
		newBoard.setbContent(content);
		newBoard.setBid(bid);
		
		int result = new BoardService().modifyBoard(newBoard);
		
		System.out.println("result : " + result);
		
		String path = "";
		if(result > 0) {
			path ="/selectList.bo";
			System.out.println("게시글 수정 성공");
			request.setAttribute("newBoard",newBoard);
			
		}else {
			path = "views/common/errorPage.jsp";
			System.out.println("게시글 수정 실패");
			request.setAttribute("message","게시판 수정 실패");
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
