package com.kh.semi.club.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi.club.model.service.ClubService;

/**
 * Servlet implementation class clubInviteMemberServlet
 */
@WebServlet("/club_invite")
public class clubInviteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clubInviteMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pfIds = request.getParameter("checkbox_all_value");
		int club_id = Integer.parseInt(request.getParameter("teamNumber"));
		System.out.println(pfIds+"와 구두ㅏㄴ 오유번호 : " + club_id);
		
		String[] pfid = pfIds.split("/");
		
		for(int i = 0 ; i < pfid.length; i++) {
			System.out.println(i+"번째 : "+pfid[i]);
		}
		
		int result = new ClubService().inviteMember(pfid,club_id);
		
		String ment = "";
		if(result > 0) {
			ment = result +"명의 선수가 초대되었습니다.";
		}
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(ment,response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
