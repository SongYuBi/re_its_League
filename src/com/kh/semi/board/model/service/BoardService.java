package com.kh.semi.board.model.service;
import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import com.kh.semi.board.model.dao.BoardDao;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.PageInfo;
import com.kh.semi.board.model.vo.Qna_vo;
 
public class BoardService {

	//재서	
	public int insertBoard(Board_vo newBoard) {

		Connection con = getConnection();
		
		int result = new BoardDao().insertBoadForQna(con, newBoard);
		 
		//1이상일 경우는 정보한행이 담김거이므로  commit
		if(result > 0) {
			commit(con);
		}else { //0일 경우에는 rollback	
			rollback(con);
		}
		close(con);
		
		return result;
	}
	//민경
	public ArrayList<Board_vo> selectListWithPaging(PageInfo pi) {
	      Connection con = getConnection();
	      
	      ArrayList<Board_vo> list = new BoardDao().selectListWithPaging(con, pi);
	      
	      close(con);
	      
	      return list;
	   }
	//민경
	public int getListCount() {
	      Connection con = getConnection();
	      
	      int listCount = new BoardDao().getListCount(con);
	      
	      close(con);
	      return listCount;
	   }
	
	
	
	//재서
	public ArrayList<Board_vo> selectList1() {

		Connection con = getConnection();
		
		ArrayList<Board_vo> list = new BoardDao().selectList1(con);
		
		
		close(con);
		
		return list;
	}

	//재서			
	public int insertBoth(Map<String, Object> requestData) {

		Connection con = getConnection();
		//성공실패여부
		int result = 0;
		
		
		//BoardDao 여러번 사용해서 객체로 빼놓구 사용
		BoardDao bd = new BoardDao();
		
		Board_vo board = (Board_vo) requestData.get("board");
		Qna_vo qna = (Qna_vo) requestData.get("qna");
		
		
		//보드 인설트부터 ! bid가져오기위해서 	
		int result1 = bd.insertBoadForQna(con, board);
	System.out.println("result1 번 값 :" + result1);
	
		
		if(result1 > 0) {
			System.out.println("r아무것낭 :" + result1);
			//qna넣기전에 번호를 부여해주는거 ,최근에한 인설트 시퀀스 값을 가져오는거 
			int bid = bd.selectCurrval(con);
			
			Qna_vo qv = new Qna_vo();
			qv.setBid(bid);
			
			int result2 = bd.insertBoadForQna(con, qv);
			
			System.out.println("result2 : " + result2);
			
			if(result2 > 0) {
				
				commit(con);
				result = 1; //실행내용이 성공했음을 알리기위해서 1로 바꿔줌	
			}else {
				rollback(con);
				
			}
			
		}else {
			rollback(con);
		}
		return result;
		
	}

	//재서
	public Board_vo selectOneByBid(int num) {

		Connection con = getConnection();
		
		BoardDao bd = new BoardDao();
		
		Board_vo Board = null;
		
		int result = bd.updateCount(con, num);
		
	
		if(result > 0) {
			Board = bd.selectOneQnaByBno(con, num);
			
		}else {
			rollback(con);
			
		}
		
		close(con);
		
		
		//bno게시물의 번호를 update
		//update를 selectOne 
		//updateCount하고 
		//bid 통해서 상세페이지를 보여지는거  
		//viewPage에 RequestScope
		
		//
		
		
		return Board;
	}

}




