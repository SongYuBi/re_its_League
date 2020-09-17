package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.Qna_vo;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class QnaInsertServlet
 */
//재서
@WebServlet("/insert.qna")
public class QnaInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//board 
		String title = request.getParameter("title");
		String content = request.getParameter("content");
//		String cateType = request.getParameter("cateType");
		
		//int bWriter = ((Profile_vo) request.getSession().getAttribute("loginUser")).getPfId();
		int bWriter = 113;
		Board_vo board = new Board_vo();
		board.setbTitle(title);
		board.setbContent(content);
		board.setPfId(bWriter);
	
		
		
		//내가 이미 넣었어 
		//qna db에봐도 없어 보드에서 불러올꺼니깐 
		//bid로 불러오니깐 ...! 
		
		
		
		Qna_vo qna = new Qna_vo();
	
		//qna
		String category = request.getParameter("category");
		System.out.println("category value 값 : " + category);
		qna.setCateType(category);
		
		Map<String, Object> requestData = new HashMap<String , Object>();
		
		requestData.put("board", board);
		requestData.put("qna", qna);
		
		System.out.println("보드랑 큐엔에이 이거되면 크러쉬할트 : "  + requestData);
		
 		int result = new BoardService().insertBoth(requestData);
 		
 		String path ="";
 		
 		if(result > 0) {
 			
 			
 			path = "SelectBoardListServlet";
 			response.sendRedirect(path);
 			
 			System.out.println("썽꽁");
 		}else {
 			System.out.println("야 정상진");
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
