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
import com.kh.semi.board.model.vo.PageInfo;

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
//		int currentPage; //시작
//		int limit;		//한 페이지에 보여질 목록의 개수, 한 페이지에 보여지는 목록의 개수
//		int maxPage;	//전체페이지에서 가장 마지막 페이지
//		int startPage;	//한 번에 표시될페이지가 시작할 페이지 
//		int endPage;	//한번에 표시될 페이지가 끝나는 페이지 
//		
//		//게시판은 1페이지부터 시작 
//		currentPage = 1;
//		
//		//파라미터로 전달되는 값이 있는경우 그 값을 currentPage값으로 사
//		if(request.getParameter("currentPage") != null) {
//			//넘어온 값을 가지고 currentPage값을 써줄것
//			currentPage = Integer.parseInt(request.getParameter("currentPage"));
//			
//		}
//		
//		limit = 10;
//		
//		
//		BoardService bs = new BoardService();
//		
//		int qnaListCount = bs.getQnaListCount();
//		
//		System.out.println("나와?" + qnaListCount); //꺅꺅 나와용 ~~ 이게 전체목록갯수리턴 ~
//		
//	
//		// // // // // // 
//		//총페이지 수 계산
//		//ex)목록갯수가 123이면, 총 13페이지가 필요함
//		//만약에 목록이 1개가 생기면 무시할수 없음 1페이지를 추가를 더해야함
//		//limit이 10일떄는 10% - > (0.1)의 가중치를 가짐 / 100퍼센트의 한개는 10% - >0.1
//		//0.1이 발생했을때는 1을 발생할라면 0.9를 더줘야함 
//		//123 / 10 은 12임 (int)12.3 을  + 0.9 하면 13.2인데
//		//int로 13으로 형변환 소수점 바이요 ~ 
//		maxPage = (int) ((double) qnaListCount / limit + 0.9);
//		
//		//시작 페이지 수 계산
//		//1,11,21,31,,버튼이 10개씩 보여지면 이렇게 시작페이지에 있음 
//		//앞자리 단위를 계산하고 currentPage가 double캐스팅하
//		startPage = (((int)((double)currentPage / limit + 0.9)) -1) * 10 + 1;
//		
//		//마지막 목록, 목록아래 보여질 마지막 페이지(10,20,30,,,)
//		//10은 버튼으 갯수, 10단위로 끊어질수있게
//		endPage = startPage + 10 -1;
//		
//		if(maxPage < endPage) {
//			endPage = maxPage;
//			
//		}
//		
//		PageInfo infos = new PageInfo(currentPage, limit, maxPage, startPage, qnaListCount, endPage);
//		
//		ArrayList<Board_vo> qnaList = bs.selectQnaListWithPaging(infos);
//		
//		String path="";
//		if(qnaList != null) {
//			
//			path = "views/user/qna/qnaList.jsp";
//			request.setAttribute("list", qnaList);
//			//추가적으로 페이지인포도 해줘야함 
//			request.setAttribute("infos", infos);
//		} else {
//			//path="view/common/errorPage.jsp";
//			//request.setAttribute("message", "게시판 조회 실패!");
//			System.out.println("실패!!!!!!");
//		}
//		
//		request.getRequestDispatcher(path).forward(request, response); 
//		
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}



















