<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#default-div {
		display:grid;
		grid-template-columns: 1fr 3fr 1fr;
		grid-gap :10px;
		height:100%
		 
	}
	
	@media (max-width: 100px){
		#default-div {
			display: block;
		}
	}
   #headWrapper {
      width:100%;
   }
#bar {
  margin-left:10px;
  margin-right:10px;
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
#logo {
  margin: 0 auto;
  padding:0;
}
.eventtext{
  width:70%;
  height:190px;

}
#img1{
   width: 1440px;
   height: 650px;
}
.maintext {
   float:left;
}
#announce {
   background-color:#13264B;
   color: white;
   border-radius: 100px;
   
}
.nav {
   display:inline-block;

}
#footer {
   width: 100%;
   height: 500px;
   background-color:#111B39;
}
	
</style>
</head>
<header>
      <br><br>
      <div id="headWrapper" align="center">
         <div id="logo">
            <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px">  
         </div>     
          <div class="btns" style="font-size:20px; color: gray; font-weight: 600;">
            <div class= "loginBtns" id="loginBtn" onclick="login();"><label>로그인 </label> </div>
            <div class= "loginBtns" id="bar"><label>|</label></div>
            <div class= "loginBtns" id="memberJoinBtn" onclick="memberJoin();"><label> 회원가입</label> </div>
         </div>
      </div>
      <br clear="both"> 
    </header>
    
    <br><br>

    <hr style="height: 3px; background: black;">
<body>
	<jsp:include page="../../common/sideBar.jsp"></jsp:include>
	<div id="default-div">
		<div class="box1">
		
		</div>
		<div class="box2">
				<div class="wrap" align="center">
          <div class="nav" >
             <div class="menu" style="font-weight:900; font-size: 50px ; margin:0 auto ; margin-top:40px "> 이벤트</div>
               <div class="maintext" style="line-height: 160px; margin-left:30px; font-size: 25px; font-weight: 600; color:#707070" > 풍성한 이벤트 ! 즐거운 잇츠리그</div>
         </div>
      </div>
   
       <br clear="both"> 

    <hr width="1440px" style="margin-top: -40px;">
   <br>
   <div class ="eventwrap">
         <a href="event1.jsp">
      <div id="event1" align="center">
        <img id="img1" src="/semi/resources/image/chu/eventchulcheck.jpg">
      
        <div class="eventtext">
         <div style="font-size: 40px; font-weight: bold; margin-top: 40px;"> 🎁 9월 출석체크 & 랜덤박스 이벤트 🎁</div>
         <div style="font-size: 28px; margin-top: 5px;">출석도장 10개 모으고 랜덤박스 받자!</div>
         <div style="font-weight: 600; font-size: 23px; margin-top: 20px; color: gray;">20.09.01 - 20.09.30</div>
      </div>

      </div>
      </a>
      
      <hr style= "width:1440px;">
      <br>
      <a href="event1.jsp" target="_blank">
      <div id="event2" align="center">
        <img id="img1" src="/semi/resources/image/chu/eventcoupon.jpg">

        <div class="eventtext">
         <div style="font-size: 40px; font-weight: bold; margin-top: 40px;"> ⚽ 리그 할인 이벤트 ⚽</div>
         <div style="font-size: 28px; margin-top: 5px;">리그 누적 3회 참여 시 다음 리그 30%할인!</div>
         <div style="font-weight: 600; font-size: 23px; margin-top: 20px; color: gray;">20.01.01 - 20.12.31</div>
      </div>
      
      </div>
   </a>
   
    
       <hr style= "width:1440px;">
      <br>
      <a href="event1.jsp" target="_blank">
         <div id="event2" align="center">
        <img id="img1" src="/semi/resources/image/chu/eventuniform.jpg">
 
        <div class="eventtext">
         <div style="font-size: 40px; font-weight: bold; margin-top: 40px;"> 🏆 리그 우승 시 프리미엄 제작 유니폼 증정!🏆</div>
         <div style="font-size: 28px; margin-top: 5px;">리그 3연속 우승 시 우승 혜택!</div>
         <div style="font-weight: 600; font-size: 23px; margin-top: 20px; color: gray;">20.01.01 - 20.12.31</div>
      </div>
   </a>
      </div>

    </body>
    <br><br><br>
    <footer>
      <div id="footer" align="center">
         <img src="/semi/resources/image/chu/footer.png" width="1500px" height="500px">
       </div>
    </footer>
   
			
			
			
		</div>
		<div class="box3">
			
		</div>
	</div>
	
</body>
</html>