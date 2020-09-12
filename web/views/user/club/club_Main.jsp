<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	.header{
   grid-area: header;
 
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
   background-color: orange;
 }
  
 .rightCol{
   grid-area: rightCol;
   background-color: lightblue;
 }
  
  .midTop{
   grid-area: midTop;
 
 }
  
 .midBottom{
   grid-area: midBottom;
   background-color: pink;
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


</style>

	
<script>

$(function(){
	// 기본 초기 화면에서 순위 테이블 불러오기
	$.ajax({
		url:"/semi/club_main_rank?league=SEOUL01",
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
				
				
				console.log("클릭한 row의 모든 데이터 : " + td.text());
				console.log("hidden : " + teamNumber);
				
				location.href="/semi/club_info?teamNumber="+teamNumber;
			})
			
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
			$target.append("<option value='5001' selected='selected' >리그를 선택해주세요.</option>")
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
		alert(league_id);
		
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
					
					
					console.log("클릭한 row의 모든 데이터 : " + td.text());
					console.log("hidden : " + teamNumber);
					
					location.href="/semi/club_info?teamNumber="+teamNumber;
				})
				
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
	
	<div class="wrapper">
	  <div class="header">
	  <p id="text_header_login" onclick="login_click();">로그인</p>
	  	<p id="text_header_insertMember">회원가입</p>
	  	<p id="text_header">구단 정보 조회</p>
	  	<p id="text_header_date">2020.07.31 기준</p>
	  	
	  </div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop">

			<h4 class="rank">순위</h4>
			
			<select name="league" id="league" class="w3-input w3-border" stylel="float:right">
		
			</select>
			
			<table id="club_info_table" class="w3-table">
				<thead>
				<tr bgcolor="#2A3692"  class="rank-shadow">
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
				</thaed>
				<tbody class="w3-table">
					
				</tbody>
			</table>

		</div>


	
	
	
	

	  </div>

	  <div class="footer">Footer</div>
	</div>
</body>
</html>