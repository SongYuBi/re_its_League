
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	
	.outer{
		width:800px;
		height:500px;
		margin-top:30px;
		margin-left:auto;
		margin-right:auto;
		
	}
	 td{
		border:2px solid lightgrey;
		border-style: ridge;
		width:200px;
	} 
	.tableArea{
		border:2px solid lightgrey;
		width:810px;
		height:350px;
		margin:0 auto;
		border-style: ridge;
		
	}
	#content{
		height:250px;
	}
	
	.footer { 
  width: 100%; 
     
    background-color:#111B39; }
	
</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="outer">
	
	
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>

	  
	  
	  <div class="midTop">
	  	<br>
	  	 		<h2 font-weight="bold" align="center">QnA상세보기</h2>
	  	 
	  	 <div class="tableArea" align="center">
	  	 
				 <div class="text-area">
	  	 	
				<table class="area-box" width="800px">
					<tr>
						<td>분야</td>
						<td><span><c:out value="${ requestScope.board.bNo }"/></span></td>
						<td>제목</td>
						<td colspan="3"><span><c:out value="${ requestScope.board.bTitle }"/></span></td>
					</tr>
					<tr>
						<td>조회수</td>
						<td><span><c:out value="${ requestScope.board.bCount }"/></span></td>
						 <td>작성	일</td>
						 <td><span><c:out value="${ requestScope.board.bDate }"/></span></td>
					</tr>
				<tr>
					<td colspan="6">내용</td>
				</tr>
				<tr>
					<td colspan="6"><p id="content"><c:out value="${ requestScope.board.bContent }"/></p></td>
				</tr>
				</table>
				</div>
					<br>
				
	  	 	
	  	 </div>
	 	 <br>		
			<div align="center">
				<button onclick="location.href='${ applicationScope.contextPath }/SelectBoardListServlet'">목록으로 돌아가기</button>
			</div>
	  </div>
	 	 <br>
	 <div class="footer">
	 	<img alt="" src="../../../resources/image/footer_jess.png" style="width:100%">
	 </div>
	</div>
</body>
</html>




















