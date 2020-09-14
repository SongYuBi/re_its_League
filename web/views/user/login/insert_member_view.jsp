<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
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
   background-color: lightgreen;
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
            width: 25%; /* Could be more or less, depending on screen size */                          
        }
      
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
    var gender = document.getElementsByName("gender");
    var Jumin_1 = document.getElementById("Jumin_1");
    var Jumin_2 = document.getElementById("Jumin_2");
    var addess = document.getElementById("address");
    var phone1 = document.getElementById("phone1");
    var phone2 = document.getElementById("phone2");
    var phone3 = document.getElementById("phone3");
    var email_check = document.getElementById("email_check");
   /*  if(!check(regul3,name,"이름을 제대로 입력하세요.")){
    	return false;
    }
    
    if(!check(re2,email,"이메일을 정확하게 입력해주세요.")){
    	return false;
    }
    
    if(!check(re,password,"패스워드는 4 ~ 12 글자사이의 숫자와 영어 대소문자를 입력해주세요.")){
    	return false;
    }  */
    
    if (( email_check.value=="")){
        alert("이메일을 입력해주세요");
        email_check.focus();
        return false;
    }
    
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
	
	
	 
    if ((addess.value=="")){
        alert("주소를 입력해주세요");
        addess.focus();
        return false;
    }
    
    if ((phone1.value=="")){
        alert("번호  입력해주세요");
        phone1.focus();
        return false;
    }
    
    if ((phone2.value=="")){
        alert("번호  입력해주세요");
        phone2.focus();
        return false;
    }
    
    if ((phone3.value=="")){
        alert("번호 입력해주세요");
        phone3.focus();
        return false;
    }
    
 
  
    
    
	var index_gender = false;
	
	for (var i = 0; i <gender.length; i++) {
		//성별을 검사하면서 한개라도 체크가되어있다면
		if (gender[i].checked) {
			index_gender = true;
			
		}
	}
	
	
	if(index_gender == false){
		alert("성별을 눌러주세요.");
	}
	
	
  
	
}

</script>

</head>
<body>


	<!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>    
        <br>
        <br>                                                           
        	<h4 id="ment"> ${ment}</h4>
	
	</div>

      </div>
<c:if test="${!empty requestScope.doublecheck }">
<!-- The Modal -->
    <div id="doubleccheck_modal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>    
        <br>
        <br>                                                           
        	<h4 id="ment"> ${doublecheck}</h4>
	
	</div>

      </div>
</c:if>

<input type="hidden" value="false" id="email_double_check">
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">Header</div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop">
	  <div id="div_1">
	
<label style="float:left;">이메일</label><br><br>
  <div style="float:left;">
<input type="Email" id="Email" name="Email" class="w3-input w3-border w3-border-black"  maxlength="30" style="width:300px;">
</div>

<div>
<button class="w3-btn w3-red" id="double_check" onclick="double_check_();">중복 확인</button><br>

 <form name="insertUser" action="<%= request.getContextPath() %>/insertUser.me" method="post" onsubmit="return validate();">
</div>
<br>
<label style="float:left;">비밀번호</label>
<input type="password" id="password" name="password" class="w3-input w3-border w3-border-black"  maxlength="12">

<label style="float:left;">비밀번호 확인</label>
<input type="password" id="password_re" name="password_re" class="w3-input w3-border w3-border-black"  maxlength="12">

<label style="float:left;">이름</label>
<input type="text" id="name" name="name" class="w3-input w3-border w3-border-black" maxlength="20" >

<label style="float:left;" >주민등록번호</label>
<br><br>
<div style="float:left;">
<input type="text" id="Jumin_1" name="Jumin_1" class="w3-input w3-border w3-border-black" style="float:left"  maxlength="6">
</div>

<div style="float:left;">
<label style="font-weight:bold;"> - </label>
</div>

<div style="float:right;">
<input type="text"  style="float:left" id="Jumin_2" name="Jumin_2" class="w3-input w3-border w3-border-black"  maxlength="7">
</div>

<br><br>
<div style="padding:5px;">
<label style="float:left;">성별</label><br>

<label>남</label><input class="w3-radio" id="male" type="radio" value="M" name="gender" class="gender"> 

<label>여</label><input  class="w3-radio" id="female" type="radio" value="W" name="gender" class="gender"><br>
</div>

<label style="float:left;">주소</label>
<input type="text" id="address" name="address" class="w3-input w3-border w3-border-black">



<label style="float:left;">전화번호</label><br><br>
<input type='tel' name='phone1' id='phone1'  size="4" maxlength="3" class=" w3-border w3-border-black" style="width:100px; height:35px;"/> &nbsp&nbsp - &nbsp&nbsp
        <input type='tel' name='phone2' id='phone1' size="4" maxlength="4" class=" w3-border w3-border-black"  style="width:100px; height:35px;" />&nbsp&nbsp  - &nbsp&nbsp
        <input type='tel' name='phone3' id='phone1'  size="4" maxlength="4" class=" w3-border w3-border-black"  style="width:100px; height:35px;" />
<br><br>
<label style="float:left;">이메일 인증</label><br><br>
<div style="float:left;">
<input type="Email" id="email_check" name="email_check" class="w3-input w3-border" style="width:250px;">
</div >

<div>
<button class="w3-btn w3-red" id="check">인증번호 받기</button><br>
<input type="hidden" value="false" id="email_check_btn">
</div>
	
	</div>
	  </div>
	  <div class="midBottom">
	  <input type="submit" value="가입하기" class="w3-btn w3-red" id="insert_member">
	  <!-- <button class="w3-btn w3-red" id="insert_member">가입하기</button></div> -->
</form>
	  <div class="footer">Footer</div>
	</div>
	
	<!-- 중복확인 창 -->
	<script>

	 $(function (){

		// Get the modal
	    var modal = document.getElementById('doubleccheck_modal');

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
	 
	
	
	
function double_check_(){
	var email =$("#Email").val();
	console.log(email);
	
	$.ajax({
		url:"/semi/double_check",
		type:"get",
		data:{email:email},
		success: function(data){
			// Get the modal
		    var modal = document.getElementById('myModal');
			
			pass = true;
			console.log(pass);
		    // Get the button that opens the modal
		    var btn = document.getElementById("myBtn");

		    // Get the <span> element that closes the modal
		    var span = document.getElementsByClassName("close")[0];  
		    
		    var email =$("#Email").val();
		    var ment = $("#ment");
		  
		    ment.text(data);
		    modal.style.display = "block";
		    
		   /*  // When the user clicks on the button, open the modal 
		    btn.onclick = function() {
  		   	   modal.style.display = "block";
  			  }
 */
		    // When the user clicks on <span> (x), close the modal
		    span.onclick = function(event) {
		    	if (event.target == modal) {
		            modal.style.display = "none";
		        }
		    }

		    // When the user clicks anywhere outside of the modal, close it
		    window.onclick = function(event) {
		        if (event.target == modal) {
		            modal.style.display = "none";
		        }
		    }
		},
		error: function(err){
			console.log("check박스 불러오기 실패");
			
		}
	});
}
	</script>
	
	
</body>
</html>