
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
  
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"
   integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
   crossorigin="anonymous"></script>
<link
   href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	.button {
	 
	  border: none;
	  color: white;
	  padding: 5px 15px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 6px ;
	  transition-duration: 0.4s;
	  cursor: pointer;
	  border-radius:8px;
	 align:right;
	  margin-right:30px;
	
	}
	.button5 {
  background-color: white;
  color: black;
  border: 2.5px solid #111B39;
}

.button5:hover {
  background-color: #111B39;
  color: white;
}
	
	.outer{
		width:800px;
		height:500px;
		margin-top:30px;
		margin-left:auto;
		margin-right:auto;
		
	}
	 td{
		border:2px solid black;/* 
		border-style: ridge; */
		width:200px;
	} 
	.tableArea{
		/* border:2px solid lightgrey; */
		width:810px;
		height:350px;
		margin:0 auto;
	/* 	background-color:lightgrey; */
/* 		border-style: ridge; */
		
	}
	.tableArea
	#content{
		height:250px;
	}
	
    
    	.btns {
   position:static;
   margin-left:1400px;
   width:300px;
}
.loginBtns {
   float:left;
}
.menu{
  float:left;
}

 .lil,.banner{
 	cursor:pointer;
 	pont-size:20px;
 	float: right;
 	margin : 2px;
 }
  .toplo{
 	list-style:none;
    margin:0;
    padding:0;
 }
  ul li{
 	float: right;
 	margin : 2px;
 	}
 	#userInfo{
 	float:right;
 	}
 	
 	#member_out{
 		position: relative;
	left: 0%;
	top: 50%;
 	}

	}.btn{
		align:right;
		padding:800px;
	}
	#guest{
	
		margin-left:1400px;
	}
	#infoNlogout{
		margin-left:1500px;
	}
	.common-header{
		margin-bottom:50px;
	}#changeInfo{
		float:left;
	}
	 .tr-header{
	 	background-color: white;
	 	color:black;
	 	padding:5px;
	 	text-align:center;
	 }
	
</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<jsp:include
		page="${ application.getContextPath() }/views/user/comman/login.jsp"/>
		
		
		  <div class=common-header>
		
		<div id="logo" align="center">
				 <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px" style="cursor: pointer" onclick="reHome();">
			</div>
			
		
		<div  class="head" id="headWrapper">

				<div class="btns" style="font-size:20px; color:gray; font-weight:600px;">
				<c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div id="myBtn">로그인</div></li>
					<li class="lil"style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div><a href="${ application.contextPath }/semi/views/user/login/insert_member.jsp">회원가입</a></div></li>
				</ul> 
				
				</c:if>
				</div>
			
				<c:if test="${!empty sessionScope.loginUser }">
		
			
				<div class="guest" id="guest" style="font-size:20px;">
				<label><c:out value="${sessionScope.loginUser.pfName }" />
					님의 방문을 환영합니다.</label>
				</div>	
					
				<div class="btn" id="infoNlogout" style="font-size:19px; color: gray; font-weight: 600;">
					<div id="changeInfo" onclick="updateMember();">정보수정 </div>
					<div class= "loginBtns" id="bar"><label> | </label></div>
					<div id="logoutBtn" onclick="logout();"> 로그아웃</div>
				</div>

		</c:if>
			
			</div>
			
			</div>
			
			<hr style="height: 3px; background: black;">
			
	
	
	
	
	
	<div class="outer">
	
	
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>

	  
	  
	  <div class="midTop">
	  	<br>
	  	 		<h2 font-weight="bold" align="center">QnA상세보기</h2>
	  	 
	  	<br>
	  	 <div class="tableArea" align="center">
	  	 
				 <div class="text-area">
	  	 	
				<table class="area-box" width="800px">
					<tr class="tr-header">
						<td>분야</td>
						<td><span><c:out value="${ requestScope.board.bNo }"/></span></td>
						<td>제목</td>
						<td colspan="3"><span><c:out value="${ requestScope.board.bTitle }"/></span></td>
					</tr>
					<tr class="tr-header">
						<td>조회수</td>
						<td><span><c:out value="${ requestScope.board.bCount }"/></span></td>
						 <td>작성	일</td>
						 <td><span><c:out value="${ requestScope.board.bDate }"/></span></td>
					</tr>
				<tr class="tr-header">
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
				<button   class="button button5"  onclick="location.href='${ applicationScope.contextPath }/SelectBoardListServlet'">목록으로 돌아가기</button>
			</div>
	  </div>
	 	 <br>
	<br>
	</div>
		<br>
		
		<br>
		<br>
		
	<footer>
      <div id="footer" align="center">
         <img src="/semi/resources/image/chu/footer.png" width="1100px" height="280px">
       </div>
    </footer>
	
</body>
</html>




















