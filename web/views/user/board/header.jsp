<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#default-div {
	display: grid;
	grid-template-columns: 1fr 3fr 1fr;
	grid-gap: 10px;
	height: 100%
}
 
@media ( max-width : 100px) {
	#default-div {
		display: block;
	}
}

<
style>#headWrapper {
	width: 100%;
}

#bar {
	margin-left: 10px;
	margin-right: 10px;
}

.btns {
	position: static;
	margin-left: 1400px;
	width: 300px;
}

.loginBtns {
	float: left;
}

#footer {
	width: 100%;
	height: 500px;
	background-color: #111B39;
}

.maintext {
	float: left;
}

.wrap {
	display: inline-block;
}

select {
	width: 200px;
	padding: .8em .5em;
	border: 1px solid #999;
	font-family: inherit;
	margin-top: 10px;
}

.wrap {
	position: static;
}

.checkbox-container {
	float: left;
}
</style>
</head>
<header> <br>
<br>
<div id="headWrapper" align="center">
	<div id="logo">
		<img src="/semi/resources/image/chu/logo.png" width="400px"
			height="150px">
	</div>
	<div class="btns"
		style="font-size: 20px; color: gray; font-weight: 600;">
		<div class="loginBtns" id="loginBtn" onclick="login();">
			<label>로그인 </label>
		</div>
		<div class="loginBtns" id="bar">
			<label>|</label>
		</div>
		<div class="loginBtns" id="memberJoinBtn" onclick="memberJoin();">
			<label> 회원가입</label>
		</div>
	</div>
</div>
<br clear="both">
</header>

<hr style="height: 3px; background: black;">