
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	.container{
	width:100vw;
	height:100vh;
	display:flex; 
	justify-content:center;
	align-items:center;
	margin: 0 auto;
	background:white;
	}
	input, label{
		transition:0.4s ease;
	}
	label{
		transform: transition(-100%, 60%) scale(1.02);
		position:absolute;
		/* top: 50%; */
		left:36%;
		cursor: text;
		transform-origin: left top;
		color:#757575;
	}
	input{
		position: relative;
		font-size:1.2em;
		padding: 30px 10px 10px 10px;
		border: none;
		border-bottom: 2px solid #9e9e9e;
		outline:none;
		border-radius:5px 5px 0 0;
		
	}
	input::placeholder{
		opacity: 0;
		
	}
	input:focus,
	input:not(:placeholder-shown){
		border-bottom:2px solid #000;
	}
	input:not(:placeholder-shown) ~ label,
	input:focus ~label{
		transform:translate(-100%, -50%) scale(0.8);
		padding-left: 0px;
		color:black;
	}
	
	
  

</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	<div class="container">

	<form action="">
	<!-- <div class="top-bar">
		<img alt="" src="../../imgs/logo.png" style="width:10%">
	</div> -->

	 <div class="inner" width="">
	 
	 <div class="who" >
	 <h2 margin-top="0;">최명수 심판님!</h2>
	 <br>
	 
	 <div class="input-tag" >
	
	<div class="input-form">
		<input type="text" name="name" id="name" placeholder="이름을 입력하세요" style="width:350px; height:50px;">
		<label for="name">연락처</label>
	</div>
	<br>
	<div class="input-form">
		<input type="text" name="IdNumber" id="IdNumber" placeholder="주민번호를 입력하세요" style="width:350px; height:50px;">
		<label for="name">주민등록번호</label>
	</div>
	<br>
	<div class="input-form">
		<input type="text" name="address" id="address" placeholder="이름을 입력하세요" style="width:350px; height:50px;">
		<label for="name">주소</label>
	</div>
	<br>
	<div class="input-form">
		<input type="text" name="account" id="account" placeholder="이름을 입력하세요" style="width:350px; height:50px;">
		<label for="name">계좌</label>
	</div>
	<br>
	<div class="input-form">
		<input type="text" name="job" id="job" placeholder="이름을 입력하세요" style="width:350px; height:50px;">
		<label for="name">직업</label>
	</div>
	<br>
	<div class="input-form">
		<input type="text" name="level" id="level" placeholder="이름을 입력하세요" style="width:350px; height:50px;">
		<label for="name">급수</label>
	</div>
	<br>
	<div class="input-form">
		<input type="text" name="car" id="car" placeholder="이름을 입력하세요" style="width:350px; height:50px;">
		<label for="name">차량유무(Y/N)</label>
	</div>

	 
	 
	 </div>
	 
	 
	 </div>
	 <br>
	  <button type="button" class="btn btn-primary btn-lg btn-block">저장하기</button>
	 
	 </div>
	
	</form>
	
	
</div>
	

	
</body>
</html>