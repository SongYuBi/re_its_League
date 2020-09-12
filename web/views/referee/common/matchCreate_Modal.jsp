<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Remember to include jQuery :) -->
<!-- <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

jQuery Modal
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
 -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/w3.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Insert title here</title>
<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 100; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

#open {
	display: none;
	position: fixed;
	left: 50%;
	top: 50%;
	z-index: 100;
	padding: 52px 60px 60px;
	width: 820px;
	height: 500px;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	background: #fff;
	/* margin-top: 10%; */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close {
	color: black;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

#mySidebar {
	height: 400px;
}

.back {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 99;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
}

.input_table {
	margin-left:250px;
}

.myth {
	font-size:20px;
	padding:10px 100px 10px 10px;
}

</style>
</head>
<body>
	<div id="open" class="openModal">
		<div class="open_back">
			<span class="close">&times;</span>
			<div id="mySidebar" class="w3-sidebar w3-itLeague-blue w3-card"
				style="width: 200px">
				<button class="w3-button w3-block w3-left-align"
					onclick="myAccFunc1()">포항</button>
				<div id="demoAcc1" class="w3-bar-block w3-hide w3-white w3-card-4">
					<a href="#" class="w3-bar-item w3-button">선수1</a> 
					<a href="#"	class="w3-bar-item w3-button">선수2</a>
				</div>				
				<button class="w3-button w3-block w3-left-align"
					onclick="myAccFunc2()">울산</button>
				<div id="demoAcc2" class="w3-bar-block w3-hide w3-white w3-card-4">
					<a href="#" class="w3-bar-item w3-button">선수3</a> 
					<a href="#"	class="w3-bar-item w3-button">선수4</a>
				</div>				
			</div>
		</div>
		<div class="input_table">
			<div>
				<span class="myth">리그</span>
				<span>리그명</span>
			</div>
			<div>
				<span class="myth">팀</span>
				<span>포항 <input type="checkbox" value="승"></span>
				<span>울산 <input type="checkbox" value="승"></span>
			</div>
			<div>
				<span class="myth">점수</span>
				<span>0</span><span>:</span><span>0</span>
			</div>
			<div>
				<span class="myth">장소</span>
				<span>용산역 아이파크</span>
			</div>
			<div>
				<span class="myth">시간</span>
				<span>19:00</span>
			</div>
		</div>
	</div>
	<div class="back"></div>
</body>
<script>
	$(document).ready(function() {
		$("#myModalbtn").on('click', function() {
			$("#open").show();
			$(".back").show();
			console.log("modal open")
		});

		$(".close").on('click', function() {
			$("#open").hide();
			$(".back").hide();
		});

	});

	function myAccFunc1() {
		var x = document.getElementById("demoAcc1");
		if (x.className.indexOf("w3-show") == -1) {
			x.className += " w3-show";
			/* x.previousElementSibling.className += " w3-green"; */
		} else {
			x.className = x.className.replace(" w3-show", "");
			/* 		    x.previousElementSibling.className = 
			 x.previousElementSibling.className.replace(" w3-green", ""); */
		}
	}
	function myAccFunc2() {
		var x = document.getElementById("demoAcc2");
		if (x.className.indexOf("w3-show") == -1) {
			x.className += " w3-show";
			/* x.previousElementSibling.className += " w3-green"; */
		} else {
			x.className = x.className.replace(" w3-show", "");
			/* 		    x.previousElementSibling.className = 
			 x.previousElementSibling.className.replace(" w3-green", ""); */
		}
	}

	
</script>
</html>