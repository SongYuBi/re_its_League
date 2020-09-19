
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
   
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body>

	<jsp:include page="../../common/sideBar.jsp"/>
	<br>
	<br>
<div class="logo" align="center">

	<button class="buttonLogo" type="button" onclick="goMain();"><img  src="../../../resources/image/logo_jess.png" style="width:80%"></button>

</div>
	
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
	 
	 
	 <div class="footer">
	 	<!-- <img alt="" src="imgs/footer.png" style="width:100%"> -->
	 	<img alt="" src="../../../resources/image/footer_jess.png" style="width:100%">
	 </div>
</div>
      
      <script>
      	function goMain(){
      		
      		location.href="${applicationScope.contextPath}/index.jsp";
      		
      	};
      	
      	function goLogin(){
      		
      		location.href="${applicationScope.contextPath}/views/user/login/insert_member.jsp";	
      	};
      
      </script>
</body>










