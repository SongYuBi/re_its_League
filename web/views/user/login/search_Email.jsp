<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>



 /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 20%; /* Could be more or less, depending on screen size */                          
        }
      




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
 #insert_member{
 	width:400px;
 }
  
 .footer{
   grid-area: footer;
 }
 #password_search{
 	width:400px;
 }
 #check{
 	width:200px;
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
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function validate() {
    var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디와 패스워드가 적합한지 검사할 정규식
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    // 이메일이 적합한지 검사할 정규식
    
    //이름 정규화 공식
     var regul3 = /^[가-힝a-zA-Z]{2,}$/;

  
  
    var name = document.getElementById("name");

    var Jumin_1 = document.getElementById("Jumin_1");
    var Jumin_2 = document.getElementById("Jumin_2");
  
   
	

	if ((name.value=="")){
        alert("이름을 입력해주세요");
        name.focus();
        return false;
    }
	
	
	if ((Jumin_1.value=="")){
        alert("주민번호를 입력해주세요");
        Jumin_1.focus();
        return false;
    }

	if ((Jumin_2.value=="")){
        alert("주민번호를 입력해주세요");
        Jumin_2.focus();
        return false;
    }
	

	
	
}
</script>
</head>
<body>
<c:if test="${ !empty requestScope.email }">

	<!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>    
        <br>
        <br>                                                           
        	<h4> ${email }</h4>
	
	</div>

      </div>
 
</c:if>

<form name="insertUser" action="<%= request.getContextPath() %>/searchEmail.me" method="post" onsubmit="return validate();">
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">
	  	
		<div id="logo" align="center">
				 <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px" style="cursor: pointer" onclick="reHome();">
			</div>
			<br>	<br>	<br>	
		
	  </div>
	  <div class="leftCol"></div>
	  <div class="rightCol"></div>
	  <div class="midTop"><h2>이메일 찾기</h2>
	  <div id="div_1">

<label style="float:left;">이름</label>
<input type="text" id="name" name="name" class="w3-input w3-border w3-border-black" maxlength="20" >
<br>
<label style="float:left;" >주민등록번호</label>
<br><br>
<div style="float:left;">
<input type="text" id="Jumin_1" name="Jumin_1" class="w3-input w3-border w3-border-black" style="float:left" maxlength="6">
</div>

<div style="float:left;">
<label style="font-weight:bold;"> - </label>
</div>

<div style="float:right;">
<input type="text"  style="float:left" id="Jumin_2" name="Jumin_2" class="w3-input w3-border w3-border-black" maxlength="7">
</div>
<br><br><br>



	<input type="submit" value="이메일 찾기" class="w3-btn w3-red" id="password_search">
	
</form>
	</div>
	  </div>
	  <div class="midBottom">
	 	<div class="footer" align="center">

         <img src="/semi/resources/image/chu/footer.png" width="1100px" height="280px">
	  </div>
	</div>
	
	
	
	<script>

	$(function (){

		// Get the modal
	    var modal = document.getElementById('myModal');

	    // Get the button that opens the modal
	    var btn = document.getElementById("myBtn");

	    // Get the <span> element that closes the modal
	    var span = document.getElementsByClassName("close")[0];                                          

	    // When the user clicks on the button, open the modal 
	   
	        modal.style.display = "block";
	 

	    // When the user clicks on <span> (x), close the modal
	    span.onclick = function() {
	        modal.style.display = "none";
	        location.href="views/user/mainPage/mainPage.jsp";

	    }

	    // When the user clicks anywhere outside of the modal, close it
	    window.onclick = function(event) {
	        if (event.target == modal) {
	            modal.style.display = "none";
	        }
	    }
	})
	</script>
</body>
</html>