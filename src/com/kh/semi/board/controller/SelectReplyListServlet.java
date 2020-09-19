package com.kh.semi.board.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
 
/**
 * Servlet implementation class SelectReplyListServlet
 */
@WebServlet("/selectReplyList.bo")
public class SelectReplyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectReplyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int bid = Integer.parseInt(request.getParameter("bid"));
		 
		 System.out.println("bid : " + bid);
		 
         ArrayList<Board_vo> list = new BoardService().showReplyList(bid);
		
		System.out.println("select comment list : " + list);
		
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
