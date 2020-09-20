<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	#div_1{
		width:400px;
		height:600px;
	
	}
	.header{
   grid-area: header;
}
  
 .leftCol{
   grid-area: leftCol;
 
 }
  
 .rightCol{
   grid-area: rightCol;
 
 }
  
  .midTop{
   grid-area: midTop;
 
   text-align:center;
   margin: 0 auto;
 }
  
 .midBottom{
   grid-area: midBottom;
  
   text-align:center;
   
 }
 #club_apply{
 	width:400px;
 }
  
 .footer{
   grid-area: footer;
 
 }
 .wrapper {
  display: grid;
  grid-template-columns: 1fr 4fr 4fr 1fr;
  /* grid-template-rows: 50px 100px 100px 30px; */
  grid-auto-rows: minmax(100px, auto);
  grid-template-areas:
  "header header header header"
  "leftCol midTop midTop rightCol"
  "leftCol midBottom midBottom rightCol"
  "footer footer footer footer";
  grid-gap: 5px;
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
 	
 	.btn{
		align:right;
		padding:800px;
	}
	#guest{
	
		margin-left:1200px;
	}
	#infoNlogout{
		margin-left:1300px;
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function validate(){
	var club_name = document.getElementById("club_name");
	var club_ment = document.getElementById("club_ment");
	var local = document.getElementById("area");
	
	
	if(club_name.value==""){
		alert("구단 이름을 입력해주세요.");
		club_name.focus();
		return false;
	}

	
	if(local.options[local.selectedIndex].value=="defualt"){
		alert("지역을 선택해주세요.");
		area.focus();
		return false;
	}
	
	if(club_ment.value==""){
		alert("구단 멘트를 입력해주세요.");
		club_ment.focus();
		return false;
	}
	
	
}
	

$(function (){

	// Get the modal
    var modal = document.getElementById('myModal_login');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];                                          

    // When the user clicks on the button, open the modal 
   
        modal.style.display = "block";
 

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
      

    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
})
	
	
</script>


</head>
<body>

	<!-- 로그인 아이디 또는 비밀번호가 틀렸을때 나타나는 다이얼로그 박스 -->
	<c:if test="${ !empty requestScope.login }">

	<!-- The Modal -->
    <div id="myModal_login" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>    
        <br>
        <br>                                                           
        	<h4> ${login }</h4>
	
	</div>

      </div>
 
</c:if>
<jsp:include page="${ application.contextPath }/views/user/comman/login.jsp"/>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	 <div class=header>
		
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
			
			</div>	  <div class="leftCol"></div>
	  <div class="rightCol"></div>
	  <div class="midTop">
	  <h2>구단 신청 페이지</h2>
	  <div id="div_1">
	<form name="isert_club" action="<%= request.getContextPath() %>/isert_club" method="post" onsubmit="return validate();">  
<label style="float:left;">구단명</label>
<input type="text" id="club_name" name="club_name" class="w3-input w3-border w3-border-black">
<br>
<label style="float:left;">지역 선택</label>
<select name="arae_local" id="area" class="w3-input w3-border" >
	<option value="defualt" selected="selected" >지역을 선택해주세요.</option>
	<option value="S1">서울</option>
	<option value="GG1">경기</option>
	<option value="I1">인천</option>
	<option value="B1">부산</option>
	<option value="p1">포항</option>
	<option value="U1">울산</option>
</select>
<br>
<label style="float:left;">소개 멘트</label><br><br>
<textarea id="club_ment" name="club_ment"cols="52" rows="10" placeholder="구단을 소개하는 멘트를 입력해주세요." style="resize:none;"></textarea>
	</div>
	  </div>
	  <div class="midBottom"><button class="w3-btn w3-red" id="club_apply">구단 신청</button></div>
	  </form>
	  <div class="footer" align="center">

         <img src="/semi/resources/image/chu/footer.png" width="1100px" height="280px">

</div>
	</div>
</body>
</html>