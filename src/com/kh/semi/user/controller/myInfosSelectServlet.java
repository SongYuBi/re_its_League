package com.kh.semi.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi.club.model.service.ClubService;
import com.kh.semi.club.model.vo.Club_vo;
import com.kh.semi.user.model.service.UserService;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class myInfosSelectServlet
 */
@WebServlet("/selectInfo.myPage")
public class myInfosSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myInfosSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	//select만 하는거
    	//한사람의 정보를 수정하는거 내정보수정 한사람의 행만 조회
    	//그조건은 session에 정보값올라온거를 조회한거 pfId를 세션에 꺼내서 .... 한행의 결과값조회 
    	
    	//Http정보를 꺼내오는거 
    	//request.session() 세션값을 가져오는거 	
    	HttpSession session = request.getSession();
    	Profile_vo pvId = (Profile_vo) session.getAttribute("loginUser");
    	int writer = pvId.getPfId();
    	
    	//Profile_vo 반환값 
    	Profile_vo pv = new UserService().selectMyPage(writer);
    	
		/*
		 * Club_vo club_co = new UserService().search_club(pv);
		 */	int teamNumber = new UserService().serach_teamNumber(pv);
    	
    	String path = "";
    	
    	if(pv != null) {
    		path = "views/user/myPage/userMyPage.jsp";
    		//셋해서 넘겨야 뷰페이제 get해서 받아줘야함 
    		request.setAttribute("pv", pv);
    		request.setAttribute("teamNumber",teamNumber);
    	}else {
    		System.out.println("실패");
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
