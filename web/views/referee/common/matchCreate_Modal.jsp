<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Remember to include jQuery :) -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

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

#saveBtn {
	position:absolute;
	right:12%;
	bottom:10%;
}

#cancle {
	position:absolute;
	right:6%;
	bottom:10%;
}


</style>
</head>
<body>
	<div id="open" class="openModal">
		<div class="open_back">
			<span class="close" onclick="modalClose();">&times;</span>
			<div id="mySidebar" class="w3-sidebar w3-itLeague-blue w3-card"
				style="width: 200px">
				<button class="w3-button w3-block w3-left-align" id="home"
					onclick="myAccFunc1()">포항</button>
				<div id="demoAcc1" class="w3-bar-block w3-hide w3-white w3-card-4">
					<a href="#" class="w3-bar-item w3-button">선수1</a> 
					<a href="#"	class="w3-bar-item w3-button">선수2</a>
				</div>				
				<button class="w3-button w3-block w3-left-align" id="away"
					onclick="myAccFunc2()">울산</button>
				<div id="demoAcc2" class="w3-bar-block w3-hide w3-white w3-card-4">
					<a href="#" class="w3-bar-item w3-button">선수3</a> 
					<a href="#"	class="w3-bar-item w3-button">선수4</a>
				</div>				
			</div>
		</div>
		<form id="saveForm" method="post" action="${pageContext.request.contextPath }/insertResult.mr">
		<div class="input_table">
			<div>
				<span class="myth">리그</span>
				<span id="lgName"></span>
			</div>
			<div>
				<span class="myth">팀</span>
				<span id="home2"></span><input id="homeRadio" type="radio" value="승" name="win" style="margin-left:10px">
				&nbsp;<span id="away2"></span><input id="awayRadio" type="radio" value="승" name="win" style="margin-left:10px">
				<span>무승부</span><input id="DrawRadio" type="radio" value=0 name="win" style="margin-left:10px">
			</div>
			<div>
				<span class="myth">점수</span>
				<span id="score1"><input type="text" name="fidScore" style="width:50px"></span><span>&nbsp;:&nbsp;</span><span id="score2"><input type="text" name="sidScore" style="width:50px"></span>
			</div>
			<div>
				<span class="myth">장소</span>
				<span id="std"></span>
			</div>
			<div>
				<span class="myth" id="matchTime">시간</span>
				<span>19:00</span>
			</div>
		</div>
		</form>
		<button class="save" id="saveBtn">저장하기</button>
		<button id="cancle">취소</button>
	</div>
	<div class="back"></div>
</body>
<script>
/* 	$(document).ready(function() {
		$("#myModalbtn").on('click', function() {
			$("#open").show();
			$(".back").show();
			console.log("modal open")
		});

		$(".close").on('click', function() {
			$("#open").hide();
			$(".back").hide();
		});
		
		console.log("modal");

	}); */

	
	function modalOpen(my) {
		var matchId = $(my).siblings('input').text();
		var inputTable = $(".input_table");
		$("#open").show();
		$(".back").show();
		console.log("modal open");
		$.ajax({
			url:"${pageContext.request.contextPath}/selectOneResult.rs",
			type:"post",
			data:{matchId:matchId, date:date, nextMonth:nextMonth},
			success:function(data){
				var $home = $("#home");
				var $away = $("#away");
				var $home2 = $("#home2");
				var $away2 = $("#away2");
				var $lgName = $("#lgName");
				var $score = $("#score");
				var $std = $("#std");
				var $matchTime = $("#matchTime");
				var $homeRadio = $("#homeRadio").val(data[0].fid);
				var $awayRadio = $("#awayRadio").val(data[0].sid);
				
				
 				var $matchId_modal = $('<input type="hidden" id="matchId" name="matchId">').val(data[0].matchId);
				var $fName = $('<input type="hidden" id="home" name="fname">').val(data[0].fName);
				var $sName = $('<input type="hidden" id="away" name="sname">').val(data[0].sName);
				var $lgName_tag = $('<input type="hidden" id="lgName" name="lgname">').val(data[0].lgName);
				var $fid = $('<input type="hidden" id="fid" name="fid">').val(data[0].fid);
				var $sid = $('<input type="hidden" id="sid" name="sid">').val(data[0].sid);
				
				$home.html('');
				$away.html('');
				$home2.html('');
				$away2.html('');
				$lgName.html('');
				$score.html('');
				$std.html('');
				$matchTime.html('');
				 
				$home.text(data[0].fName);
				$away.text(data[0].sName);
				$home2.text(data[0].fName);
				$away2.text(data[0].sName);
				$lgName.text(data[0].lgName);
				$std.text(data[0].stdName);
				$std.append($matchId_modal);
				$std.append($fName);
				$std.append($sName);
				$std.append($lgName_tag);
				$std.append($fid);
				$std.append($sid);
				 
			}
		});
			
		
	}
	
	function modalClose() {
		
	}
	
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

	$("#saveBtn").on('click', function(){
		$("#saveForm").submit(); 
/* 		var lgName = $("#lgName").text();
		var away = $("#away").text();
		var home = $("#home").text();
		var awayScore = $("#away2").text();
		var homeScore = $("#home2").text();
		var matchId = $("#matchId").text();
		alert(matchId);
		
		$.ajax({
			url:"/insertResult.mr",
			type:"post",
			data:{lgName:lgName, away:away, home:home, awayScore:awayScore, homeScore:homeScore, matchId:matchId},
			success:function(data){
				
			} 
		});*/
		
	});
	
	$("#cancle").on('click', function(){
		location.href="${pageContext.request.contextPath}/views/referee/league/refereeGameEvalution.jsp";
	});
</script>
</html>