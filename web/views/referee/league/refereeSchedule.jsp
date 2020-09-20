<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"
	scope="application" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script
	src="${ pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="/semi/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="/semi/resources/css/all.min.css" rel="stylesheet"
	type="text/css">
<title>Insert title here</title>
<style>
.carousel-control-next,
.carousel-control-prev {
    filter: invert(100%);
}

.header {
	background: gray;
}

#myCarousel {
	width: 25%;
	margin-left: 37.5%;
}

.carousel-control.left {
	color: currentColor;
}

.carousel-control.right {
	color: currentColor;
}

.midTop {
	background-color: white;
}

.matchDate {
	font-weight: 700;
	
	padding: 10px;
}

.table_area {
	border: 2px solid black;
	padding: 15px;
}
</style>
</head>
<body>
	<%-- <jsp:include page="/views/referee/common/adminSideBar.jsp"></jsp:include> --%>
	<jsp:include
		page="${ application.contextPath }/views/referee/common/sideBar.jsp"></jsp:include>

	<div class="wrapper_admin">
		<div class="header">
			<h1>스케줄 관리</h1>
		</div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
			<hr>
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="false">
				<div class="carousel-inner" >
					<div class="carousel-item" id="carouselVal1">
						<h1 id="carouselValue1" align="center">1</h1>
					</div>
					<div class="carousel-item" id="carouselVal2">
						<h1 id="carouselValue2" align="center">2</h1>
					</div>
					<div class="carousel-item" id="carouselVal3">
						<h1 id="carouselValue3" align="center">3</h1>
					</div>
					<div class="carousel-item" id="carouselVal4">
						<h1 id="carouselValue4" align="center">4</h1>
					</div>
					<div class="carousel-item" id="carouselVal5">
						<h1 id="carouselValue5" align="center">5</h1>
					</div>
					<div class="carousel-item" id="carouselVal6">
						<h1 id="carouselValue6" align="center">6</h1>
					</div>
					<div class="carousel-item" id="carouselVal7">
						<h1 id="carouselValue7" align="center">7</h1>
					</div>
					<div class="carousel-item" id="carouselVal8">
						<h1 id="carouselValue8" align="center">8</h1>
					</div>
					<div class="carousel-item" id="carouselVal9">
						<h1 id="carouselValue9" align="center">9</h1>
					</div>
					<div class="carousel-item" id="carouselVal10">
						<h1 id="carouselValue10" align="center">10</h1>
					</div>
					<div class="carousel-item" id="carouselVal11">
						<h1 id="carouselValue11" align="center">11</h1>
					</div>
					<div class="carousel-item" id="carouselVal12">
						<h1 id="carouselValue12" align="center">12</h1>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>

			<div class="table_area">
				<!-- <div class="matchDate"></div> -->
				<div>
					<table class="table table-striped custab" id="scheduleTb">
						<thead>
							<tr>
								<th>날짜</th>
								<th>리그</th>
								<th>home</th>
								<th>away</th>
								<th>구장</th>
							</tr>
						</thead>
						<tr>
							<td>A리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>종합운동장</td>
						</tr>
						<tr>
							<td>B리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>용산 아이파크</td>
						</tr>
						<tr>
							<td>C리그</td>
							<td><span>1팀</span>:<span>2팀</span></td>
							<td>용인 참스포츠</td>
						</tr>
					</table>

				</div>

			</div>
		</div>
		<div class="midBottom"></div>
		<div class="footer"></div>

	</div>
	<jsp:include page="/views/referee/common/matchCreate_Modal.jsp"></jsp:include>
	<script>
		// carousel 현재 달로 변경해주는 함수
		$(document).ready(function() {
			var month = getMonthDate() + 1;

			for (var i = 1; i < 13; i++) {
				var $carouselValue = $("#carouselValue" + i);
				if (month == $carouselValue.text()) {
					$("#carouselVal" + i).attr("class", "carousel-item active");
					console.log($("carouselVal" + i).text());

				}
			}
		});

		// 페이지 시작 시 현재 날짜로 변환
		$(document).ready(function() {
			var date = getDate();
			console.log(date);
			$(".matchDate").text(date);
		});

		// 날짜 구하기
		function getMonthDate() {
			var date = new Date().getMonth();
			return date
		};
		function getDayDate() {
			var date = new Date().getDay();
			return date
		};
		function getYearDate() {
			var date = new Date().getFullYear();
			return date
		};

		function getDate() {
			var date = new Date();
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var day = date.getDate();
			var formatDate = year + "-" + ("0" + month).slice(-2) + "-"
					+ ("0" + day).slice(-2);
			return formatDate;
		}
		
		
		$(function(){
			$("#carouselExampleControls").carousel({
				interval:false
				
			});
		});
		
		
		var defaultDateMonth = getMonthDate();
		var date = getDate();
		var nextMonth = defaultDateMonth;
		
		$(function loadAjax() {
	 		$(".carousel-control-next").click(function(){
	 			nextMonth = nextMonth + 1;
	 			if(nextMonth > 12) {
	 				nextMonth = 1;
	 			}
	 			console.log(nextMonth);
				$.ajax({
					url:"${pageContext.request.contextPath}/refSchedule_filter.rf",
					type:"get",
					data:{date:date, nextMonth:nextMonth},
					success: function(data){
						var $tablehead = $("thead");
						var $tableBody = $("#scheduleTb tbody");
						var $matchDate = $(".matchDate");
						var nowDate = getDate();
						$tableBody.html('');
						$matchDate.html('');
						console.log(data[1].matchDate.split("-"));
						
						// 날짜 중복 제거
						var listDate =[];
						$matchDate.text(data[0].matchDate);
						for(var i=0; i < data.length; i++){
							listDate.push(data[i].matchDate);
						}
						var dupleListDate = [];
						$.each(listDate, function(i, el){
							if($.inArray(el, dupleListDate) === -1) {
								dupleListDate.push(el);
							}
						});
						console.log(dupleListDate);
						
						
						for(var j=0; j < dupleListDate.length; j++){
							var $dupleDiv = $('<div class="matchDate">').	text(dupleListDate[j]);
							
							$tableBody.append($dupleDiv);
							
							for(var i=0; i < data.length; i++) {
								if(dupleListDate[j] == data[i].matchDate){
									var $tr = $('<tr>');
									var $dateTd = $('<td>');/* .text(data[i].matchDate); */
									var $lgTd = $('<td>').text(data[i].lgName);
									var $fNameTd = $('<td>').text(data[i].fName);
									var $sNameTd = $('<td>').text(data[i].sName);
									var $stdName = $('<td>').text(data[i].stdName);
									
									$tr.append($dateTd);
									$tr.append($lgTd);
									$tr.append($fNameTd);
									$tr.append($sNameTd);
									$tr.append($stdName);
									
									$tableBody.append($tr);
								} else {
									continue;
								}
								
							}
					};
						
					}
				});
			});
		
		});
		
		$(function loadAjax() {
	 		$(".carousel-control-prev").click(function(){
	 			nextMonth = nextMonth - 1;
	 			if(nextMonth > 12) {
	 				nextMonth = 1;
	 			}
	 			console.log(nextMonth);
				$.ajax({
					url:"${pageContext.request.contextPath}/refSchedule_filter.rf",
					type:"get",
					data:{date:date, nextMonth:nextMonth},
					success: function(data){
						var $tablehead = $("thead");
						var $tableBody = $("#scheduleTb tbody");
						var $matchDate = $(".matchDate");
						var nowDate = getDate();
						$tableBody.html('');
						$matchDate.html('');
						console.log(data[1].matchDate.split("-"));
						
						// 날짜 중복 제거
						var listDate =[];
						$matchDate.text(data[0].matchDate);
						for(var i=0; i < data.length; i++){
							listDate.push(data[i].matchDate);
						}
						var dupleListDate = [];
						$.each(listDate, function(i, el){
							if($.inArray(el, dupleListDate) === -1) {
								dupleListDate.push(el);
							}
						});
						console.log(dupleListDate);
						
						
						for(var j=0; j < dupleListDate.length; j++){
							var $dupleDiv = $('<div class="matchDate">').text(dupleListDate[j]);
							
							$tableBody.append($dupleDiv);
							
							for(var i=0; i < data.length; i++) {
								if(dupleListDate[j] == data[i].matchDate){
									var $tr = $('<tr>');
									var $dateTd = $('<td>');/* .text(data[i].matchDate); */
									var $lgTd = $('<td>').text(data[i].lgName);
									var $fNameTd = $('<td>').text(data[i].fName);
									var $sNameTd = $('<td>').text(data[i].sName);
									var $stdName = $('<td>').text(data[i].stdName);
									
									$tr.append($dateTd);
									$tr.append($lgTd);
									$tr.append($fNameTd);
									$tr.append($sNameTd);
									$tr.append($stdName);
									
									$tableBody.append($tr);
								} else {
									continue;
								}
								
							}
					};
						
					}
				});
			});
		
		});

  		$(document).ready(function(){
 			nextMonth = nextMonth + 1;
 			if(nextMonth > 12) {
 				nextMonth = 1;
 			}
 			console.log(nextMonth);
			$.ajax({
				url:"${pageContext.request.contextPath}/refSchedule_filter.rf",
				type:"get",
				data:{date:date, nextMonth:nextMonth},
				success: function(data){
					var $tablehead = $("thead");
					var $tableBody = $("#scheduleTb tbody");
					var $matchDate = $(".matchDate");
					var nowDate = getDate();
					$tableBody.html('');
					$matchDate.html('');
					console.log(data[1].matchDate.split("-"));
					
					// 날짜 중복 제거
					var listDate =[];
					$matchDate.text(data[0].matchDate);
					for(var i=0; i < data.length; i++){
						listDate.push(data[i].matchDate);
					}
					var dupleListDate = [];
					$.each(listDate, function(i, el){
						if($.inArray(el, dupleListDate) === -1) {
							dupleListDate.push(el);
						}
					});
					console.log(dupleListDate);
					
					
					for(var j=0; j < dupleListDate.length; j++){
						var $dupleDiv = $('<div class="matchDate">').text(dupleListDate[j]);
						
						$tableBody.append($dupleDiv);
						
						for(var i=0; i < data.length; i++) {
							if(dupleListDate[j] == data[i].matchDate){
								var $tr = $('<tr>');
								var $dateTd = $('<td>');/* .text(data[i].matchDate);*/
								var $lgTd = $('<td>').text(data[i].lgName);
								var $fNameTd = $('<td>').text(data[i].fName);
								var $sNameTd = $('<td>').text(data[i].sName);
								var $stdName = $('<td>').text(data[i].stdName);
								
								$tr.append($dateTd);
								$tr.append($lgTd);
								$tr.append($fNameTd);
								$tr.append($sNameTd);
								$tr.append($stdName);
								
								$tableBody.append($tr);
							} else {
								continue;
							}
							
						}
				};
					
				}
			});
		});
	</script>
</body>
</html>