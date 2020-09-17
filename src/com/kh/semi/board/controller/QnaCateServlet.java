package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.Qna_vo;

/**
 * Servlet implementation class QnaCateServlet
 */
//재서
@WebServlet("/qnaCate")
public class QnaCateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaCateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//			String qnaCate1 = request.getParameter("qnaCate1");
//			String qnaCate2 = request.getParameter("qnaCate2");
//			String qnaCate3 = request.getParameter("qnaCate3");
//			String qnaCate4 = request.getParameter("qnaCate4");
			String qnaCate = request.getParameter("qnaCate");
			
			System.out.println("나오십니꾜 : " + qnaCate);
			
			
			//name속성만 가져오는데 ....
			ArrayList<Board_vo> list= new BoardService().qnaCate(qnaCate);
			//내가 뭘 조회해야하는지 , 뭘 뿌려줘야하느지 ..> 다 담을수 있는 쪽으로 
			
			System.out.println("뽑아보십꾜	 : " + list);
			response.setContentType("application/json; charset=UTF-8"); 
			new Gson().toJson(list, response.getWriter());
			
			
			}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
