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
   background-color: LightSeaGreen ;
 }
  
 .leftCol{
   grid-area: leftCol;
   background-color: orange;
 }
  
 .rightCol{
   grid-area: rightCol;
   background-color: lightblue;
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

    var password = document.getElementById("password");
    var password_re = document.getElementById("password_re");
    var email = document.getElementById("Email");
    var name = document.getElementById("name");
    var  certification_number = document.getElementById("certification_number");
    var certification = document.getElementById("certification");
    var Jumin_1 = document.getElementById("Jumin_1");
    var Jumin_2 = document.getElementById("Jumin_2");
    
	
    if ((email.value=="")){
        alert("이메일을 입력해주세요");
        email.focus();
        return false;
    } 
    
    if ((password.value=="")){
        alert("비밀번호를 입력해 주세요");
        password.focus();
        return false;
    }
	
	if ((password_re.value=="")){
        alert("비밀번호를 입력해 주세요");
        password_re.focus();
        return false;
    }

	if(password.value != password_re.value){
		 alert("비밀번호가 일치하지 않습니다.");
	        password_re.focus();
	        return false;
	}else{
		console.log("유저 비밀번호 일치");
	}
    
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
	 if((certification.value=="false")){
	    	alert("이메일 인증을 실시해주세요");
	    	email_check.focus();
	    	return false;
	    }
	    
	    
	    if((certification_number.value=="")){
	    	alert("인증번호를 입력하세요.");
	    	certification_number.focus();
	    	return false;
	    }
	
    

	
}
</script>

</head>
<body>
<c:if test="${ !empty requestScope.message }">

	<!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">메인으로</span>
        <br>
        <br>                                                               
        	<h4> ${message }</h4>
	
	</div>

      </div>
 
    </div>
</c:if>


	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">Header</div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop"><h2>비밀 번호 변경</h2>
	  <div id="div_1">
	  
<label style="float:left;">이메일 인증</label><br><br>
<div style="float:left;">
<input type="Email" id='Email' name="email_check" class="w3-input w3-border">
</div >
<div>
<button class="w3-btn w3-red" id="check" onclick="email_certification();">인증번호 받기</button><br><input type="hidden" value="false" id="email_check">
</div>
<br>
<div style="float:left;">
<label style="float:left;">인증번호 확인</label><br><br>
<input type="hidden" value="false" id="email_check_btn">
	<input type="hidden" value="" id="email_certification_result">
	<input type="hidden" value="false" id="certification">
<input type="text" id="certification_number" class="w3-input w3-border" style="width:250px;"></div>
<div><br><br>
<button class="w3-btn w3-red" id="check" style="width: 125px;" onclick="email_certification_result();">확인</button><br>
</div>
<form name="searchPassword" action="<%= request.getContextPath() %>/search_password.me" method="post" onsubmit="return validate();">
<br>
<label style="float:left;">이름</label>
<input type="text" id="name" name="name" class="w3-input w3-border w3-border-black" maxlength="20">
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


<br>
<label style="float:left;">새로운 비밀번호</label>
<input type="password" id="password" name="password" class="w3-input w3-border w3-border-black" maxlength="12">
<br>
<label style="float:left;">새로운 비밀번호 확인</label>
<input type="password" id="password_re" name="password_re" class="w3-input w3-border w3-border-black" maxlength="12">	
<br><br>

	<!-- <button class="w3-btn w3-red" id="password_search">변경하기</button></div> -->
	  <input type="submit" value="변경하기" class="w3-btn w3-red" id="password_search">
	</div>
	  </div>
	  <div class="midBottom">
	  <div class="footer"></div>
	</div>
	</form>
	
	
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
	
	function email_certification(){
		 var email =$("#Email").val();
		 console.log("이메일 인증 받을 이메일 : "+email);
		 
		 $.ajax({
			 url :"/semi/Email",
			 type:"get",
			 data:{email:email},
			 success: function(data){
				 $('#email_certification_result').val(data);
				 console.log($('#email_certification_result').val())
			 }
		 })
		 
	 }
	
function email_certification_result(){
	  var number =  $('#email_certification_result').val();
	  var text_number = $('#certification_number').val();
	  var Email  = $('#Email').val();
	  var result_email = $('#result_email').val();
	  
	  if(number==text_number){
		  $('#certification').val("true");
		  alert("인정번호가 일치힙니다.");
		  $('#result_email').val(Email);
		  console.log(result_email = $('#result_email').val());
	  }else{
		  alert("인증번호가 일치하지 않습니다. 다시 입력해주세요.");
	  }
}
	</script>
</body>
</html>