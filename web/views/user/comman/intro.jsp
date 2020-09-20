
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<title>W3.CSS</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <style>
 	
	.burger div{
        width: 30px;
        height: 2px;
        background-color:black;
        margin: 7px;
        padding:2px;
    }
    .text h2{
    	font-weight:bolder;
    }
    .text h5{
    	color:darkgrey;
    }
    .text1 {
    	align:left;
    	margin:30px;
    	text-align:left;
    }
    div.subtitle{
    	
    	margin:30px;
    	padding: 20px;
    	
    }
   div.featureTxt1{
   		width:20em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    
    	padding:40px;
    	
    }
    div.featureTxt2{
    	width:20em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    	padding:40px;
    }
    div.featureTxt3{
    	width:23em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    	padding:40px;
    }
    div.featureTxt4{
   		width:11em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    	padding:40px;
    }
    div.featureTxt5{
    	width:15em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    	padding:40px;
    }
    div.featureTxt6{
    	width:23em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    	padding:40px;
    }
    div.space{
    	height:5px;
    	padding: 5px 10px;
    	
    	
    }
    div.last{
    	width:70em;
    	word-wrap:break-word;
    	float: left; width: 33%;
    	text-align:center;
    	font-weight:bolder;
    	margin:30px;
    	padding:30px;
    	
    	
    }
    .buttonLogo{
    	background-color:white;
    	outline:none;
    	border:0px
    	
    	
    }
   *:focus{
   	outline:none;
   }
   .outer{
   		margin:300px;
   		margin-top:-20px;
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
	}
	#changeInfo{
		float:left;
	}
	    .loginBtns {
	   float:left;
	}
   
   
   
   
   
   
   
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body>

	<jsp:include page="../../common/sideBar.jsp"/>
	
	
		<jsp:include
		page="${ application.getContextPath() }/views/user/comman/login.jsp"/>
		
		
		  <div class=common-header>
		
		<div id="logo" align="center">
				 <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px" style="cursor: pointer" onclick="reHome();">
			</div>
			
	<%-- 	
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
			 --%>
			</div>
			
	
	
	
	
	
	
	
	
	
	<br>
	<br>

	<br>
	<nav>

    </nav>
    <br>
    <div class="outer">
    <div class="row">
    	
    	<img alt="" src="../../../resources/image/main1_jess.png" style="width:100%" onclick="goLogin();">
    	
    </div>
	<br>
	<br>
	
	<div class="text">
		<h2 align="center">LET'S LEAGUE<p></h2>
		<h5 align="center">이제는 동네에서 LET'S LET'S PLAY!<p>IT'S LEAGUE</h5>
	</div>

		<div class="subtitle">
		
			<ul>
				<div class="featureTxt1">
					<h3>내가 하고 싶을</h3>
					<p>아침 부터 저녁, 주말까지</p>
				</div>
			
			 	<div class="featureTxt2">
			 		<h3>내가 하고싶은 곳에서</h3>
			 		<p >우리집 가장 가까운 구장에서</p>
			 	</div>
				
			 	<div class="featureTxt3">
			 		<h3>내가 하고 싶은 사람들과</h3>
			 		<p>내 친구와 중급매치 리그매치 그리고 레슨까지</p>
			 	</div>
			</ul>	 	
		</div>
		
		
	  <div class="row1">
	  
    	<!-- <img alt="" src="image/main2_jess.png" style="width:100%"> -->
    	<img alt="" src="../../../resources/image/main2_jess.png" style="width:100%">
    	
    </div>
	 
	 
		<div class="subtitle1">
		
			<ul>
				<div class="featureTxt4">
					<h3>정기적인 리그 경기</h3>
					<p>개막부터 폐막까지 지속적인 경기</p>
				</div>
			
			 	<div class="featureTxt5">
			 		<h3>경쟁과 순위의 리그</h3>
			 		<p >매 경기에 따라서 순위가 결정된다.</p>
			 	</div>
				
			 	<div class="featureTxt6">
			 		<h3>공정하고 깨끗한 경기</h3>
			 		<p>전문적인 심판의 참여로 깨끗한 경기를</p>
			 	</div>
			</ul>	 	
		</div>
	 
		<br>
		<br>
		<br>
		
	<div class="space" style="height:5px;">
	</div>
	<div class="last">
		<h1>지금 바로 리그경기에<p>참여해 경기를 즐기세요!</h1>
		  <button type="button" class="btn btn-primary btn-lg btn-block" onclick="goLogin();">가입하고 시작!</button>
	</div>
	</div>
	
	 <br>
	 <br>
	
</div>

      <footer>
      <div id="footer" align="center">
         <img src="/semi/resources/image/chu/footer.png" width="1100px" height="280px">
       </div>
       </footer>
       
      <script>
      	function goMain(){
      		
      		location.href="${applicationScope.contextPath}/index.jsp";
      		
      	};
      	
      	function goLogin(){
      		
      		location.href="${applicationScope.contextPath}/views/user/login/insert_member.jsp";	
      	};
      
      </script>
</body>










