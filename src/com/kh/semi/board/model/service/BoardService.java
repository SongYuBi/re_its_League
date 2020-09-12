package com.kh.semi.board.model.service;
import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.board.model.dao.BoardDao;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.PageInfo;
 
public class BoardService {

	public int insertBoard(Board_vo newBoard) {

		Connection con = getConnection();
		
		int result = new BoardDao().insertBoard(con, newBoard);
		 
		//1이상일 경우는 정보한행이 담김거이므로  commit
		if(result > 0) {
			commit(con);
		}else { //0일 경우에는 rollback	
			rollback(con);
		}
		close(con);
		
		return result;
	}
	public ArrayList<Board_vo> selectListWithPaging(PageInfo pi) {
	      Connection con = getConnection();
	      
	      ArrayList<Board_vo> list = new BoardDao().selectListWithPaging(con, pi);
	      
	      close(con);
	      
	      return list;
	   }
	public int getListCount() {
	      Connection con = getConnection();
	      
	      int listCount = new BoardDao().getListCount(con);
	      
	      close(con);
	      return listCount;
	   }
}




