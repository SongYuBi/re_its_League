<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
</style>
</head>
<body>
<form name="login" action="<%= request.getContextPath() %>/login.me" method="post">
	<div id="login_position">
		<input type="Email" id="user_id" name="user_id" class="w3-input w3-hover" placeholder="Email">
		 <br> 
		 <input	type="password" id="password" name="password" class="w3-input w3-hover" placeholder="Password"> 
		 <button id = "login_button" class="w3-btn w3-round" onclick="moveClose();" >로그인</button>
		 <div id="insert_clue" onclick="insert_clue();">회원 가입</div><div id="insert_clue" onclick="search_password();">비밀번호 찾기 &nbsp</div>
	</div>
</form>

<script type="text/javascript">
function insert_clue(){
	self.close();
	location.href="../login/insert_member.jsp";
}

function search_password(){
	self.close();
	location.href="../login/search_member.jsp";
	
}


</script>
</body>
</html>