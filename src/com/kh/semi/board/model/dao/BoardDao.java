package com.kh.semi.board.model.dao;
import static com.kh.semi.common.JDBCTemplate.*;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.PageInfo;
import com.kh.semi.board.model.vo.Qna_vo;

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

	public int insertBoadForQna(Connection con, Board_vo newBoard) {

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

	//민경이꺼 
	public ArrayList<Board_vo> selectListWithPaging(Connection con, PageInfo pi) {
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        ArrayList<Board_vo> list = null;
        
        String query = prop.getProperty("selectListWithPaging");
        
        try {
           pstmt = con.prepareStatement(query);
           
           int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() + 1;
           int endRow = startRow + pi.getLimit() - 1;
           System.out.println(startRow);
           System.out.println(endRow);
           pstmt.setInt(1, startRow);
           pstmt.setInt(2, endRow);
           
           rset = pstmt.executeQuery();
           
           list = new ArrayList<Board_vo>();
           
           while(rset.next()) {
              Board_vo b = new Board_vo();
              
              b.setBid(rset.getInt(1));
              b.setbType(rset.getInt(2));
              b.setbNo(rset.getInt(3));
              b.setbWriter(rset.getInt(4));
              b.setbTitle(rset.getString(5));
              b.setbContent(rset.getString(6));
              b.setbCount(rset.getInt(7));
              b.setbDate(rset.getDate(8));
              b.setModifyDate(rset.getDate(9));
              b.setbStatus(rset.getString(10));
              
              list.add(b);
           }
        
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close(pstmt);
           close(rset);
        }
        System.out.println(list);
        return list;
     }
	
	//민경
	  public int getListCount(Connection con) {
	       Statement stmt  = null;
	         int listCount = 0;
	         ResultSet rset = null;
	         
	         String query = prop.getProperty("listCount");
	         
	         try {
	            stmt = con.createStatement();
	            rset = stmt.executeQuery(query);
	            
	            if(rset.next()) {
	               listCount=rset.getInt(1);
	            }
	         } catch (SQLException e) {
	            
	            e.printStackTrace();
	         }finally {
	            close(stmt);
	            close(rset);
	         }
	         
	         return listCount;
	      }

	
	
	
	//재서
	public ArrayList<Board_vo> selectList1(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board_vo> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Board_vo>();
			
			while(rset.next()) {
				Board_vo b = new Board_vo();
				
				b.setBid(rset.getInt("bid"));
				b.setbType(rset.getInt("bType"));
				b.setbNo(rset.getInt("bNo"));
				b.setPfId(rset.getInt("pfId"));
				b.setbTitle(rset.getString("bTitle"));
				b.setbContent(rset.getString("bTitle"));
				b.setbCount(rset.getInt("bCount"));
				b.setbDate(rset.getDate("bDate"));
				b.setModifyDate(rset.getDate("modifyDate"));
				b.setbStatus(rset.getString("bStatus"));
				
				list.add(b);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
			
		}
		
		
		
		return list;
	}

	

	public int selectCurrval(Connection con) {
		
		//쿼리전달하는 값없어ㅓ서 stmt 

		Statement stmt = null;
		ResultSet rset = null;
		
		int bid = 0;
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			//한행만있어서 
			if(rset.next()) {
				//sql 헤더부분
				//조회해가지고 온 헤더부분
				bid = rset.getInt("CURRVAL");
			}
					
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
			
		}
		//반환값이 bid
		return bid;
	}
	
	

	public int insertBoadForQna(Connection con, Qna_vo qv) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertQna");
		
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, qv.getBid());
			pstmt.setString(2, qv.getCateType());
			//title
		//	pstmt.setString(parameterIndex, x);
			//content
		//	pstmt.setString(parameterIndex, x);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
	}

//	public int insertBoadForQna(Connection con, Board_vo board) {
//
//		PreparedStatement pstmt = null;
//		int result = 0;
//		
//		String query = prop.getProperty("insertBoardForQna");
//		
//		
//		return 0;
//	}

}














