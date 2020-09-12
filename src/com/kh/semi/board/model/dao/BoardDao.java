package com.kh.semi.board.model.dao;
import static com.kh.semi.common.JDBCTemplate.*;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;

public class BoardDao {
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public int insertBoard(Connection con, Board_vo newBoard) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String query = prop.getProperty("insertBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			//이거 순서 쿼리문에서 들어가는 순서 맞게해야함 ^^ 
			pstmt.setInt(1, newBoard.getPfId());
			pstmt.setString(2, newBoard.getbTitle());
			pstmt.setString(3, newBoard.getbContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
		
		
		
	}

	public ArrayList<Board_vo> selectList(Connection con) {
		 PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Board_vo> list = null;
	      
	      String query = prop.getProperty("selectList");
	      
	      try {
	         pstmt = con.prepareStatement(query);
	         rset=pstmt.executeQuery(query);
	         
	         list = new ArrayList<Board_vo>();
	         
	         while(rset.next()) {
	            Board_vo b = new Board_vo();
	            
	            b.setBid(rset.getInt("BID"));
	            b.setbType(rset.getInt("BTYPE"));
	            b.setbNo(rset.getInt("BNO"));
	            b.setbWriter(rset.getInt("BWRITER"));
	            b.setbTitle(rset.getString("BTITLE"));
	            b.setbContent(rset.getString("BCONTENT"));
	            b.setbCount(rset.getInt("BCOUNT"));
	            b.setbDate(rset.getDate("BDATE"));
	            b.setModifyDate(rset.getDate("MODIFY_DATE"));
	            b.setbStatus(rset.getString("B_STATUS"));
	            
	            list.add(b);
	         }
	      
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return list;
	   
	}

}












