<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	.header{
   grid-area: header;
  grid-column: auto / span 4; 
 }
 
 th>td{
		width: 10%;
		height: 50px;
		background-color: #2A3682;
			
	}
	
  #th_width{
  	border : 1px solid white;
  		width: 300px;
  		height: 200px;
  		text-align:center;
  		
  }
 .leftCol{
   grid-area: leftCol;
  
 }
  
 .rightCol{
   grid-area: rightCol;
   
 }
  
  .midTop{
   grid-area: midTop;
 width: 1100px;
	margin-left: 58px;
 }
  
 .midBottom{
   grid-area: midBottom;
  width: 1100px;
	margin-left: 58px;
 }
  
 .footer{
   grid-area: footer;
  
 }
 .wrapper {
  display: grid;
  grid-template-columns: 1fr 4fr 4fr 1fr;
  /* grid-template-rows: 50px 100px 100px 30px; */
  grid-auto-rows: minmax(100px, auto);
  grid-template-areas:
  "header  header header  header"
  "leftCol midTop midTop rightCol"
  "leftCol midBottom midBottom rightCol"
  "footer footer footer footer";
  grid-gap: 5px;
 }
 
 #text_header{
 	text-decoration-line:underline;
 	text-decoration-color:#EA9C2D;
 	fon-size: large;
 	position:relative;
 	left: 10%;
 	top: 30%;
 
 }
 
 #text_header_date{
 position:relative;
 	left: 80%;
 	top: 10%;
 }
 
 #text_header_login{
 	position:relative;
 	left: 75%;
 	top: 0%;
 }
 
 #text_header_insertMember{
 position:relative;
 	left: 85%;
 	top: -25%;
 	fon-size: meduim;
 }
 th{
 	color:white;
 }
 .th_club_name{
 
 	width:200px;
 }
 
 table{
 	width : 100%;
 	min-width: 500px;
 }

.rank {
	position: relative;
	left: 5%;
	top: 0%;
}
 
 .rank-shadow {
	box-shadow:0px  2px 2px #333;

	
}
.td_100{
height:75px;
border-bottom:2px solid gray;
}

 .lil,.banner{
 	cursor:pointer;
 	pont-size:20px;
 	float: right;
 	margin : 2px;
 }
  .toplo{
 	list-style:none;
    margin:0;
    padding:0;
 }
  ul li{
 	float: right;
 	margin : 2px;
 	}
 	#userInfo{
 	float:right;
 	}
 	
 #search_club{
 	position:relative;
 	left:65%;
 	top: 40%;
 	margin-bottom: 5px;
 }
 
 
 .btn{
		align:right;
		padding:800px;
	}
	#guest{
	
		margin-left:1200px;
	}
	#infoNlogout{
		margin-left:1300px;
	}
	.common-header{
		margin-bottom:50px;
	}
	#changeInfo{
		float:left;
	}
	    .loginBtns {
	   float:left;
	}
	
</style>

	
<script>

$(function(){
	// 기본 초기 화면에서 순위 테이블 불러오기
	$.ajax({
		url:"/semi/club_main_rank?league=all",
		type:"get",
		success:function(data){
			console.log(data);
			
			var $club_info_table = $("#club_info_table tbody");
			
			$club_info_table.html('');
			
			$.each(data,function(index,value){
				var $tr = $('<tr class="td_100">');
				
				var $rankTd	= $("<td  style='text-align:center'>").text(value.rank);
				var $clubNameTd = $("<td style='text-align:center'>").text(value.clubName);
				var $roundTd = $("<td style='text-align:center'>").text(value.round);
				var $winScoreTd = $("<td style='text-align:center'>").text(value.winScore);
				var $winTd = $("<td style='text-align:center'>").text(value.win);
				var $drawTd = $("<td style='text-align:center'>").text(value.draw);
				var $loseTd = $("<td style='text-align:center'>").text(value.lose);
				var $goalTd = $("<td style='text-align:center'>").text(value.goal);
				var $loseGoalTd = $("<td style='text-align:center'>").text(value.loseGoal);
				var $goalResultTd = $("<td style='text-align:center'>").text(value.goalResult);
				var $hidden = $("<input type='hidden' id='teamNumber' value="+value.teamNumber+">");
				
				$tr.append($rankTd);
				$tr.append($clubNameTd);
				$tr.append($roundTd);
				$tr.append($winScoreTd);
				$tr.append($winTd);
				$tr.append($drawTd);
				$tr.append($loseTd);
				$tr.append($goalTd);
				$tr.append($loseGoalTd);
				$tr.append($goalResultTd);
				$tr.append($hidden);
				
				$club_info_table.append($tr);
				
				
			});
			
			$("#club_info_table tr").click(function(){
				console.log("asd");
				var str = "";
				
				var tr = $(this);
				
				var teamNumber = tr.children('#teamNumber').val();
				
				
				console.log("hidden : " + teamNumber);
				
				location.href="/semi/club_info?teamNumber="+teamNumber;
			})
			
				$('#club_info_table tr').hover(function(){
     			   $(this).css('background','gray');
     			  $(this).css('color','white');
     			   $('#main').css('background','#2A3692');
  				  }, function() {
   			     $(this).css('background','white');
   			  $(this).css('color','black');
   			  $('#main').css('background','#2A3692');
  				  });


		},
		error: function(err){
			console.log("실패");
		}
	
}); 
	
	
	
	
});
	

$(function(){
	$.ajax({
		url:"/semi/club_main_league",
		type:"get",
		success:function(data){
			console.log(data);
			
			var $club_info_league = $("#league");
	
			var $target = $("select[name='league']");
			$target.append("<option value='all' selected='selected' >모든 구단.</option>")
			$(data).each(function(i){
				$target.append("<option value="+data[i].lgId + ">"+data[i].lgName+"</option>")	
			});
		
		},
		error: function(err){
			console.log("실패");
		}
	
});
});

$(function(){
	
	$('#league').change(function(){
		var league_id = $("#league option:selected").val();
		
		
		$.ajax({
			url:"/semi/club_main_rank?league="+league_id,
			type:"get",
			success:function(data){
				console.log(data);
				
				var $club_info_table = $("#club_info_table tbody");
				
				$club_info_table.html('');
				
				$.each(data,function(index,value){
					var $tr = $('<tr class="td_100">');
					
					var $rankTd	= $("<td  style='text-align:center'>").text(value.rank);
					var $clubNameTd = $("<td style='text-align:center'>").text(value.clubName);
					var $roundTd = $("<td style='text-align:center'>").text(value.round);
					var $winScoreTd = $("<td style='text-align:center'>").text(value.winScore);
					var $winTd = $("<td style='text-align:center'>").text(value.win);
					var $drawTd = $("<td style='text-align:center'>").text(value.draw);
					var $loseTd = $("<td style='text-align:center'>").text(value.lose);
					var $goalTd = $("<td style='text-align:center'>").text(value.goal);
					var $loseGoalTd = $("<td style='text-align:center'>").text(value.loseGoal);
					var $goalResultTd = $("<td style='text-align:center'>").text(value.goalResult);
					var $hidden = $("<input type='hidden' id='teamNumber' value="+value.teamNumber+">")
					
					$tr.append($rankTd);
					$tr.append($clubNameTd);
					$tr.append($roundTd);
					$tr.append($winScoreTd);
					$tr.append($winTd);
					$tr.append($drawTd);
					$tr.append($loseTd);
					$tr.append($goalTd);
					$tr.append($loseGoalTd);
					$tr.append($goalResultTd);
					$tr.append($hidden);
					
					$club_info_table.append($tr);
					
					
				});
				$("#club_info_table tr").click(function(){
					console.log("asd");
					var str = "";
					
					var tr = $(this);
					var td = tr.children();
					var teamNumber = tr.children('#teamNumber').val();
					
					
					console.log("hidden : " + teamNumber);
					
					location.href="/semi/club_info?teamNumber="+teamNumber;
				})
				$('#club_info_table tr').hover(function(){
	     			   $(this).css('background','gray');
	     			  $(this).css('color','white');
	     			   $('#main').css('background','#2A3692');
	  				  }, function() {
	   			     $(this).css('background','white');
	   			  $(this).css('color','black');
	   			  $('#main').css('background','#2A3692');
	  				  });
			},
			error: function(err){
				console.log("실패");
			}
		
	}); 
		
	})
	
	var oldVal;
	
	$("#search_club").on("propertychange change keyup paste input", function(){
		var currentVal = $(this).val();
		var league_id = $("#league option:selected").val();
		if(currentVal == oldVal){
			return;
		}
		oldVal = currentVal;
		console.log(oldVal);
		
		$.ajax({
			url:"/semi/search_club_name?oldVal="+oldVal+"&league_id="+league_id,
			type:"get",
			success:function(data){
				console.log(data);
				
				var $club_info_table = $("#club_info_table tbody");
				
				$club_info_table.html('');
				
				$.each(data,function(index,value){
					var $tr = $('<tr class="td_100">');
					
					var $rankTd	= $("<td  style='text-align:center'>").text(value.rank);
					var $clubNameTd = $("<td style='text-align:center'>").text(value.clubName);
					var $roundTd = $("<td style='text-align:center'>").text(value.round);
					var $winScoreTd = $("<td style='text-align:center'>").text(value.winScore);
					var $winTd = $("<td style='text-align:center'>").text(value.win);
					var $drawTd = $("<td style='text-align:center'>").text(value.draw);
					var $loseTd = $("<td style='text-align:center'>").text(value.lose);
					var $goalTd = $("<td style='text-align:center'>").text(value.goal);
					var $loseGoalTd = $("<td style='text-align:center'>").text(value.loseGoal);
					var $goalResultTd = $("<td style='text-align:center'>").text(value.goalResult);
					var $hidden = $("<input type='hidden' id='teamNumber' value="+value.teamNumber+">")
					
					$tr.append($rankTd);
					$tr.append($clubNameTd);
					$tr.append($roundTd);
					$tr.append($winScoreTd);
					$tr.append($winTd);
					$tr.append($drawTd);
					$tr.append($loseTd);
					$tr.append($goalTd);
					$tr.append($loseGoalTd);
					$tr.append($goalResultTd);
					$tr.append($hidden);
					
					$club_info_table.append($tr);
					
					
				});
				$("#club_info_table tr").click(function(){
					console.log("asd");
					var str = "";
					
					var tr = $(this);
					var td = tr.children();
					var teamNumber = tr.children('#teamNumber').val();
					
					
					console.log("hidden : " + teamNumber);
					
					location.href="/semi/club_info?teamNumber="+teamNumber;
				})
				$('#club_info_table tr').hover(function(){
	     			   $(this).css('background','gray');
	     			  $(this).css('color','white');
	     			   $('#main').css('background','#2A3692');
	  				  }, function() {
	   			     $(this).css('background','white');
	   			  $(this).css('color','black');
	   			  $('#main').css('background','#2A3692');
	  				  });
			},
			error: function(err){
				console.log("실패");
			}
		
	}); 
	
	})

	
})


</script>
		
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	<jsp:include page="${ application.contextPath }/views/user/comman/login.jsp"/>
	
	<input type="hidden" value="club_main" id="location_web"/>
	<div class="wrapper">
	  <%-- <div class="header">
	 <c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div id="myBtn">로그인</div></li>
					<li style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div><a href="${ application.contextPath }/semi/views/user/login/insert_member.jsp">회원가입</a></div></li>

				</ul>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
			<div id="userInfo">
				<label><c:out value="${sessionScope.loginUser.pfName }" />
					님의 방문을 환영합니다.</label>
				<div class="btn" align="right">
					<div id="changeInfo" onclick="updateMember();">정보수정</div>
					<div id="logoutBtn" onclick="logout();">로그아웃</div>
				</div>
			</div>
		</c:if>
		<br><br><br><br>
	  	<p id="text_header">구단 정보 조회</p>
	  	<p id="text_header_date">2020.07.31 기준</p>
	 
	  	
	  </div> --%>
	  
	  <div class=header>
		
		<div id="logo" align="center">
				 <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px" style="cursor: pointer" onclick="reHome();">
			</div>
			
		
		<div  class="head" id="headWrapper">

				<div class="btns" style="font-size:20px; color:gray; font-weight:600px;">
				<c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div id="myBtn">로그인</div></li>
					<li class="lil"style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div><a href="${ application.contextPath }/semi/views/user/login/insert_member.jsp">회원가입</a></div></li>
				</ul> 
				
				</c:if>
				</div>
			
				<c:if test="${!empty sessionScope.loginUser }">
		
			
				<div class="guest" id="guest" style="font-size:20px;">
				<label><c:out value="${sessionScope.loginUser.pfName }" />
					님의 방문을 환영합니다.</label>
				</div>	
					
				<div class="btn" id="infoNlogout" style="font-size:19px; color: gray; font-weight: 600;">
					<div id="changeInfo" onclick="updateMember();">정보수정 </div>
					<div class= "loginBtns" id="bar"><label> | </label></div>
					<div id="logoutBtn" onclick="logout();"> 로그아웃</div>
				</div>

		</c:if>
			
			</div>
			
			</div>
	  
	  <div class="leftCol"></div>
	  <div class="rightCol"></div>
	  <div class="midTop">

			<h4 class="rank">순위</h4>
			
			<select name="league" id="league" class="w3-input w3-border" stylel="float:right">
		
			</select>
			 <input type="text" id="search_club" class="w3-input w3-border" style="width:250px;" placeholder="구단 명 검색">
			<table id="club_info_table" class="w3-table">
				<thead>
				<tr bgcolor="#2A3692"  class="rank-shadow" id="main">
					<th width="100px" height="50px" style="text-align: center;">순위</th>
					<th width="200px" height="50px" style="text-align: center;">구단</th>
					<th width="100px" height="50px" style="text-align: center;">경기수</th>
					<th width="100px" height="50px" style="text-align: center;">승점</th>
					<th width="100px" height="50px" style="text-align: center;">승</th>
					<th width="100px" height="50px" style="text-align: center;">무</th>
					<th width="100px" height="50px" style="text-align: center;">패</th>
					<th width="100px" height="50px" style="text-align: center;">득점</th>
					<th width="100px" height="50px" style="text-align: center;">실점</th>
					<th width="100px" height="50px" style="text-align: center;">득실</th>
				</tr>
				</thead>
				<tbody class="w3-table">
					
				</tbody>
			</table>

		</div>


	  </div>

	  <div class="footer" align="center">

         <img src="/semi/resources/image/chu/footer.png" width="1100px" height="280px">
	  </div>
	
</body>
</html>