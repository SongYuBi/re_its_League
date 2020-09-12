<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#login_position {
	position: absolute;
	padding: 20px;
	width: 350px;
	background-color: #EEEFF1;
	border-radius: 5px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}


#login_button{
	float: right;
	margin-top: 10px;
	width : 310px;
	background-color : #2A3682;
	color : white;
}

#insert_clue{
	float : right;
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
            width: 20%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }


</style>
</head>
<body>

<!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>                                                               
        <form name="login" action="<%= request.getContextPath() %>/login.me" method="post">
	<div id="login_position">
		<input type="Email" id="user_id" name="user_id" class="w3-input w3-hover" placeholder="Email" style="width:310px;">
		 <br> 
		 <input	type="password" id="password" name="password" class="w3-input w3-hover" placeholder="Password" style="width:310px;"> 
		 <button id = "login_button" class="w3-btn w3-round"  >로그인</button>
		
		 <div id="insert_clue" onclick="insert_clue();">회원 가입</div><div id="insert_clue" onclick="search_password();">비밀번호 찾기 &nbsp</div>
		 <div id="insert_clue" onclick="search_email();">&nbsp이메일  찾기&nbsp</div>
	</div>
</form>
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
    btn.onclick = function() {
        modal.style.display = "block";
    }

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

function insert_clue(){
self.close();
location.href="../login/insert_member.jsp";
}

function search_password(){
self.close();
location.href="../login/search_member.jsp";

}

function search_email(){
	self.close();
	location.href="../login/search_Email.jsp";
}

function logout(){
	var check = window.confirm("로그아웃");
	
	if(check){
		location.href ="<%=request.getContextPath()%>/logout.me";
	}
}
</script>

</body>
</html>