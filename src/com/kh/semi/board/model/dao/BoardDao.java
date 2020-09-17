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
	//재서
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
              b.setPfName(rset.getString(4));
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
		
		String query = prop.getProperty("selectList1");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Board_vo>();
			
			while(rset.next()) {
				Board_vo b = new Board_vo();
				
				b.setBid(rset.getInt("BID"));
				b.setbType(rset.getInt("bType"));
				b.setbNo(rset.getInt("bNo"));
				b.setPfId(rset.getInt("pf_Id"));
				b.setbTitle(rset.getString("bTitle"));
				b.setbContent(rset.getString("bContent"));
				b.setbCount(rset.getInt("bCount"));
				b.setbDate(rset.getDate("bDate"));
				b.setModifyDate(rset.getDate("modify_Date"));
				b.setbStatus(rset.getString("b_Status"));
				
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

	
	//재서
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
	
	
	//재서
	public int insertBoadForQna(Connection con, Qna_vo qv) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertQna");
		
		
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, qv.getBid());
		//	pstmt.setString(2, qv.getCateType());
			//title
		//	pstmt.setString(parameterIndex, x);
			//content
		//	pstmt.setString(parameterIndex, x);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
	}
	
	//재서
	public int selectBid(Connection con, int num) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		int bid = 0;
		
		String query = prop.getProperty("selectBid");
	
		try {
			
			pstmt = con.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				bid = rset.getInt("bid");
						
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
			
		}
		
		return bid;
	}
	//재서
	public int updateCount(Connection con, int num) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateCount");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, num);
			pstmt.setInt(2, num);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
	}
	
	//재서
	public Board_vo selectOneQnaByBno(Connection con, int num) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Board_vo board = null;
		
		String query = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				board = new Board_vo();
				board.setbNo(rset.getInt("BNO"));
				board.setbTitle(rset.getString("BTITLE"));
				board.setbContent(rset.getString("BCONTENT"));
				board.setbCount(rset.getInt("BCOUNT"));
				board.setbDate(rset.getDate("BDATE"));
				board.setBid(rset.getInt("BID"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
			
		}
		
		
		
		
		
		return board;
	}
	
	//재서 전체 목록갯수 조회용 메소드
	public int getQnaListCount(Connection con) {

		Statement stmt = null;
		int QnaListCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("qnaListCount");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				QnaListCount = rset.getInt(1);
				
			}
					
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
			
		}
		
		return QnaListCount;
	}
	//재서
	public ArrayList<Board_vo> selectQnaListWithPaging(Connection con, PageInfo infos) {

			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<Board_vo> qnaList = null;
			
			String query = prop.getProperty("selectQnaListWithPaging");
			
			//물음표가 2개 BETWEEN ? AND ?
			try {
				pstmt = con.prepareStatement(query);
				
				//2개의물음표에 값전달 시작줄과 종료줄을 계산하고 계산한값을 이용해서 쿼리문을 만들어줌 	
				
				//startrow는시작행임 현재가 3페이지면 2의리미드 20이 되고 21의 조회가 되는 3페이지 
				int startRow = (infos.getCurrentPage()-1) * infos.getLimit() + 1;
				//-1d은 엔드로우 
				int endRow = startRow + infos.getLimit() - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				//객체생성
				qnaList = new ArrayList<Board_vo>();
				//한행식꺼내서 보드에 담고 리스트에 추가는 select랑 같음 
				while(rset.next()) {
					Board_vo b = new Board_vo();
					
					b.setBid(rset.getInt("BID"));
					b.setbType(rset.getInt("bType"));
					b.setbNo(rset.getInt("bNo"));
					b.setPfId(rset.getInt("pf_Id"));
					b.setbContent(rset.getString("bContent"));
					b.setbCount(rset.getInt("bCount"));
					b.setbDate(rset.getDate("bDate"));
					b.setModifyDate(rset.getDate("modify_Date"));
					b.setbStatus(rset.getString("b_Status"));
					
					qnaList.add(b);
					
				 
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rset);
				
			}
			
		
			
		return qnaList;
	}
	
	//민경 자유게시판 상세보기
	   public Board_vo selectOne(Connection con, int num) {
	         PreparedStatement pstmt = null;
	         ResultSet rset = null;
	         Board_vo b = null;
	         
	         String query = prop.getProperty("selectOneFB");
	         
	         try {
	            pstmt = con.prepareStatement(query);
	            pstmt.setInt(1, num);
	            
	            rset = pstmt.executeQuery();
	            
	    
//	            B.BID ,B.BTYPE ,B.BNO ,P.PF_NAME ,B.BTITLE ,B.BCONTENT ,B.REF_BID ,
//	            B.REPLY_LEVEL ,B.BDATE ,B.MODIFY_DATE ,B.BCOUNT ,B.B_STATUS   
	            while(rset.next()) {
	                b = new Board_vo();
	               
	               b.setBid(rset.getInt(1));
	               b.setbType(rset.getInt(2));
	               b.setbNo(rset.getInt(3));
	               b.setPfName(rset.getString(4));
	               b.setbTitle(rset.getString(5));
	               b.setbContent(rset.getString(6));
	               b.setRefBid(rset.getInt(7));
	               b.setReplyLevel(rset.getInt(8));
	               b.setbDate(rset.getDate(9));
	               b.setModifyDate(rset.getDate(10));
	               b.setbCount(rset.getInt(11));
	               b.setbStatus(rset.getString(12));
	            }
	            
	         } catch (SQLException e) {
	            e.printStackTrace();
	         } finally {
	            close(rset);
	            close(pstmt);
	         }
	         
	         return b;
	      }
	   
	   //민경 자유게시판 인설트
	   public int insertBoardForCommu(Connection con, Board_vo newBoard) {
	      PreparedStatement pstmt = null;
	      int result = 0;
	      
	      
	      String query = prop.getProperty("insertBoard2");
	      
	      try {
	         pstmt = con.prepareStatement(query);
	         //이거 순서 쿼리문에서 들어가는 순서 맞게해야함 ^^ 
	         pstmt.setInt(1, newBoard.getPfId());
	         pstmt.setString(2, newBoard.getbTitle());
	         pstmt.setString(3, newBoard.getbContent());
	         
	         result = pstmt.executeUpdate();
	         System.out.println("dao-result="+result);
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         
	      }
	      
	      return result;
	      
	      
	   
	   }
	
	 //재서 버튼 5개 ajax
	 		public ArrayList<Board_vo> qnaCate(Connection con, String qnaCate) {

	 			PreparedStatement pstmt = null;
	 			ResultSet rset = null;
	 			//Qna_vo qv = null;
	 			
	 			ArrayList<Board_vo> list = null;

	 			String query = prop.getProperty("cateType");
	 			
	 			try {
	 				
	 			
	 				pstmt = con.prepareStatement(query);
	 				pstmt.setString(1, qnaCate); //value가 친구를 맞는거  여기서 채워지는거임 들고온거를 채워주는거 
	 				
	 				
	 				
	 				rset = pstmt.executeQuery();
	 				
	 				//객체생성
	 				list = new ArrayList<Board_vo>();
	 				
	 				while(rset.next()) {
	 					
	 					Board_vo b = new Board_vo();
	 					
	 					
	 					b.setbNo(rset.getInt("BNO"));
	 					b.setbTitle(rset.getString("BTITLE"));
	 					b.setbCount(rset.getInt("BCOUNT"));
	 					b.setbDate(rset.getDate("BDATE"));
	 					
	 					list.add(b);
	 					
	 					System.out.println("뽑아방 : " + list);
	 				}
	 				
	 				
	 			} catch (SQLException e) {
	 				// TODO Auto-generated catch block
	 				e.printStackTrace();
	 			}finally {
	 				close(pstmt);
	 				close(rset);
	 				
	 			}
	 			
	 			return list;
	 			
	 			
	 		}

}