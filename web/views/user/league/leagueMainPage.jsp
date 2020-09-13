<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
	.lgBtn {
	background:#111B39;
	color:white;
	 width:300px; 
	 height:60px; 
	 font-size:42px;
	 border-radius:15px;
	 margin-left:0px;
	}
	
	.selop{
	width:200px;
	height:30px;
	font-size:20px;
	margin:0;
	text-align-last:center;
	margin-top:7px;
	box-shadow:0px 0px 4px 0px gray;
	border:1px solid white;
	}
	.thd th {
		text-align:center;
		height: 100px;
	}
 .toplo{
 	list-style:none;
    margin:0;
    padding:0;
 }
 .toplo li{
 	float: right;
 	margin : 2px;
 	}
 .lil,.banner{
 	cursor:pointer;
 	pont-size:20px;
 }
 .datelist li {
 	float:left;
 }
 ul,li {
 list-style:none;
 }
 
 /*테이블 클래스*/
 .tc{
 	text-align:center;
 	font-size : 20px;
 	font-weight:600;
 }
 .tc7{
 	font-size : 20px;
 	font-weight:600;
 }
 }
 .w1{
 	width:20px;
    margin-left:0px;

 }
 .w2{
 	width:100px;
 	margin-left:100px;
 }
 .w3{
 	width:100px;
 	margin-left:0px;
 }
 .w4{
 	width:20px;
 	margin-left:0px;
 }
 .w5{
 	width:100px;
 }
 .w6{
 	width:100px;
 }
 .w7{
 	width:150px;
 	margin-left:50px;
 }
 .w8{
 	width:100px;
 	margin-left:50px;
 }
</style>

</head>
<body>
	<jsp:include page="${ application.contextPath }/views/common/sideBar.jsp"/>
	
	<div class="wrapper">
	<div class="head">
		<div align="right">
			<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;">로그인</li>
					<li style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;">회원가입</li>
				</ul>
				<div align="center">
					<img src="${applicationScope.contextPath }/resources/image/chu/logo.png"
						style="cursor: pointer">
				</div>
		</div> 
	</div>
	  <div class="header" style="margin-top:30px; padding:0 auto;">
	  <h1>일정</h1>
	  <!-- 검색영역 -->
	  	<div style="border:1px solid blue;width:100%; background:#F8F8F8; height:150px; margin-top:30px;">
	  	<!-- 리그 -->
	  	<div style="float:left; margin-left:100px; margin-top:20px; text-align:center; margin-right:150px;">
	  		<h2>리그</h2>
	  		<select class="selop" name="league" id="league-select" onchange="leagueSelect(this);">
	  			<option value="allLrankLeague">전체</option>
     				<c:forEach var="l" items="${requestScope.list}">
     					<option  value="${l.lgId }">${l.lgId }</option>
     				</c:forEach>
	  		</select>
	  	</div>
	  	<!-- 구단 -->
		<div align="center" style="float:left;margin-top:20px;">
			<h2>날짜</h2>
			<select class="selop" name="dateSchedule" id="dateSchedule">
				 <option>선택</option>
			</select>
		</div>	  	
		<!-- 버튼 -->
		<div style="float:right; margin-right:50px; margin-top:50px; margin-left:20px;">
			<button class="lgBtn" onclick="joinLeague();">리그신청</button>
		</div>
	  	</div>
	  </div>
	  <div class="midTop" style="margin-top:40px; background:#F8F8F8; border:1px solid blue;margin-top:100px;" align="center">
	
	  
	  	<div class="container-my">
        <div class="table-wrapper">
            <div class="table-title" style="overflow:auto; height:1000px;" >
            <div id="ScheduleList">
            	<h1 class="fixed-top">9월</h1>
            	<!-- 토요일 -->
				<div>            	
				<!-- 테이블 날짜 -->
				
            	<div style="width:90%;border:3px solid black; padding:10px; font-size:24px; font-weight:bold;"><span>2020</span><span>.08</span><span>.01</span><span>토요일</span></div>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            </div>
            
            <!-- 일요일 -->
				<div>       
				<!-- -->     	
            	<div style="width:90%;border:3px solid black; padding:10px; font-size:24px; font-weight:bold;"><span>2020</span><span>.08</span><span>.01</span><span>토요일</span></div>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            </div>
            
            <!-- 다음토요일 -->
				<div>            	
            	<div style="width:90%;border:3px solid black; padding:10px; font-size:24px; font-weight:bold;"><span>2020</span><span>.08</span><span>.01</span><span>토요일</span></div>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
            	<ul class="datelist" style="width:90%; padding:30px; height:100px;border-bottom:1px solid black;">
            		<li class="w1 tc">14R</li>
            		<li class="w2 tc">포항</li>
            		<li class="w3 tc">2</li>
            		<li class="w4 tc">:</li>
            		<li class="w5 tc">3</li>
            		<li class="w6 tc">울산</li>
            		<li class="w7 tc7"><span>울산스타디움</span></li>
            		<li class="w8 tc">강남길</li>
            	</ul>
           	 </div>
           </div>
            </div>
        </div>
     </div>
     <!-- 순위 -->
	  </div>
     <div class="midBottom" style="margin-top:30px;">
     	<h1>순위</h1>
     	<!-- 조회 -->
     	<div style="background:#F8F8F8; border:1px solid blue; width:100%; height:150px;" align="center" >
     		<div style="float:left; margin-right:100px;margin-left:220px; margin-top:20px;">
     		<h2>리그</h2>
     			<select class="selop" name="rankLeague" onchange="rankLeague(this);">		
     				<option>선택</option>
     				<c:forEach var="li" items="${requestScope.list }">
     					<option value="${li.lgId }">${li.lgId }</option>
     				</c:forEach>
     			</select>	
     		</div>
     		
     		<div style="margin-left:300px; margin-top:20px; float:left;margin-right:0px;">
     			<h2>대회명</h2>
     			<select class="selop" name="rankName" onchange="rankName(this);">
     				<option>선택</option>
     				<c:forEach var="leagueName" items="${requestScope.list }">
     					<option value="${leagueName.lgName }">${leagueName.lgName }</option>
     				</c:forEach>
     			</select>
     		</div>
     	</div>
     	<!-- 조회끝 -->
     	<!--순위 테이블 -->
     	<div style="overflow:auto; height:1264px;" align="center" id="rank">
     	<h1 style="margin-top:50px;" id="namet"></h1>
     		<table style="width:100%; height:1000px; margin-top:50px; border-top:1px solid black; text-align:center; font-size:22px;" id ="ranktable">
     			<thead style="border-bottom:1px solid black;"  class="thd">
     				<th>순위</th>
     				<th>경기수</th>
     				<th>구단</th>
     				<th>승점</th>
     				<th>승</th>
     				<th>무</th>
     				<th>패</th>
     				<th>득점</th>
     				<th>실점</th>
     				<th>득실</th>
     			</thead>
     			<tbody id="rankbody">
     			</tbody>
     		</table>
     	</div>
     	<!-- 순위테이블끝 -->
     </div>
	  <div class="footer" align="center" style="margin-top:100px;">
	  	<img src="${applicationScope.contextPath }/resources/image/footer_jess.png">
	  </div>
	</div>
	
	
	<!-- method -->
	<script type="text/javascript">
		function joinLeague() {
			location.href="${applicationScope.contextPath}/views/user/league/leagueJoinForm.jsp";
		}
		
		
		/* function test1(){
			$("#namet").show();	
			$("#ScheduleList").show();
		} */
	</script>
	
	<script type="text/javascript">
		/* $(function(){
			$("#namet").hide();
			$("#ScheduleList").hide();
		}); */
	
	
	</script>
	
	<%-- id로 검색 --%>
	<script type="text/javascript">
			function leagueSelect(val){
				var league = $(val).find(":selected").val();
				console.log(league);
				
				var date = new Date();
				var month = date.getMonth() + 1;
				if(month < 10) {
					month = '0' + month;
				}
				
				$.ajax({
					url : "${applicationScope.contextPath}/selectMatchWithId.lg",
					data : {month : month, league : league},
					type : "get",
					success : function(data){
						console.log(data);
					},
					error : function(err){
						console.log("리그메인 경기조회 실패!")
					}
					
				});
				
			}
	</script>
	
	<%--달추가 --%>>
	<script type="text/javascript">
		$(function (){
			
			var date = new Date();
			//현재 달
			var month = date.getMonth();
			
			//추가할 body 영역
			$select =  $("#dateSchedule");
			
			for(var i = 0; i < 3; i ++) {
				var mon = $("<option>").text(month + i +"월");
				$select.append(mon);
			}
		});
	</script>
	
	
	
	<!-- 순위 -->
	<script type="text/javascript">
		
		function rankLeague(val) {
		 var leagueI = $(val).children(":selected").val();
		 
		 
		 $.ajax({
			url :  "${applicationScope.contextPath}/selectRankWithId.lg",
			data : {leagueI : leagueI},
			type : "post",
			success : function(data){
				$tbody = $("#rankbody");
				$tbody.html("");
				console.log("id")
				console.log(data);
				$("#namet").text(data[0].lgId);
				
				
				for(key in data) {
					$tr = $("<tr>");
					$tdt = $("<td>");
					if(key == 0) {
					$icona = $("<i>").addClass("xi-trophy");
					$tdt.append($icona);
						
					}else if(key ==1) {
					$icona = $("<i>").addClass("xi-crown");
					$tdt.append($icona);
					}else{
						
					$icona = Number(key) + 1;
					$tdt.append($icona);
					}
					
					$clubNameTd = $("<td>").text(data[key].clubName);
					$drawTd = $("<td>").text(data[key].draw);
					$goalTd = $("<td>").text(data[key].goal);
					$goalPointTd = $("<td>").text(data[key].goalPoint);
					$lostTd = $("<td>").text(data[key].lose);
					$loseGoalTd = $("<td>").text(data[key].loseGoal);
					$roundTd = $("<td>").text(data[key].round);
					$winTd = $("<td>").text(data[key].win);
					$winScoreTd = $("<td>").text(data[key].winScore);
					
					$tr.append($tdt);
					$tr.append($roundTd);
					$tr.append($clubNameTd);
					$tr.append($winScoreTd);
					$tr.append($winTd);
					$tr.append($drawTd);
					$tr.append($lostTd);
					$tr.append($goalTd);
					$tr.append($loseGoalTd);
					$tr.append($goalPointTd);
					
					$tbody.append($tr);
					
				}	
			},
			error : function(err){
				console.log(err);
			}
			
			 
		 });
		 
		 
		}
	</script>
	
	
	
	<!-- 리그 이름으로 -->
	<script type="text/javascript">
		function rankName(val) {
			var leagueName = $(val).children(":selected").val();
			console.log(leagueName);
			
			
			$.ajax({
				url : "${applicationScope.contextPath}/selectRankWithName.lg",
				data : {leagueName:leagueName},
				type : "get",
				success: function(data) {
					console.log("name");
					console.log(data);
					$tbody = $("#rankbody");
					$tbody.html("");
					console.log(data);
					$("#namet").text(data[0].lgName);
					
					for(key in data) {
						$tr = $("<tr>");
						$tdt = $("<td>");
						if(key == 0) {
						$icona = $("<i>").addClass("xi-trophy");
						$tdt.append($icona);
							
						}else if(key ==1) {
						$icona = $("<i>").addClass("xi-crown");
						$tdt.append($icona);
						}else{
							
						$icona = Number(key) + 1;
						$tdt.append($icona);
						}
						$clubNameTd = $("<td>").text(data[key].clubName);
						$drawTd = $("<td>").text(data[key].draw);
						$goalTd = $("<td>").text(data[key].goal);
						$goalPointTd = $("<td>").text(data[key].goalPoint);
						$lostTd = $("<td>").text(data[key].lose);
						$loseGoalTd = $("<td>").text(data[key].loseGoal);
						$roundTd = $("<td>").text(data[key].round);
						$winTd = $("<td>").text(data[key].win);
						$winScoreTd = $("<td>").text(data[key].winScore);
						
						$tr.append($tdt);
						$tr.append($roundTd);
						$tr.append($clubNameTd);
						$tr.append($winScoreTd);
						$tr.append($winTd);
						$tr.append($drawTd);
						$tr.append($lostTd);
						$tr.append($goalTd);
						$tr.append($loseGoalTd);
						$tr.append($goalPointTd);
						
						$tbody.append($tr);
						
					}	
					
					
				},
				error : function(err) {
					console.log("랭크 네임 조회 실패!");
				}
				
			});
		}
	</script>
</body>
</html>