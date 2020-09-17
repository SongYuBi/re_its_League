<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>Insert title here</title>
<style>
.header {
	grid-area: header;
	
}

.leftCol {
	grid-area: leftCol;

}

.rightCol {
	grid-area: rightCol;
}

.midTop {
	grid-area: midTop;
}

.img_back {

	background-image: url("../../../resources/image/club/club_info.png");
	background-repeat: no-repeat;
	background-image: cover;

}

.midBottom {
	grid-area: midBottom;
	
}

.footer {
	grid-area: footer;
	
}

.wrapper {
	display: grid;
	grid-template-columns: 1fr 4fr 4fr 1fr;
	/* grid-template-rows: 50px 100px 100px 30px; */
	grid-auto-rows: minmax(100px, auto);
	grid-template-areas: "header header header header"
		"leftCol midTop midTop rightCol"
		"leftCol midBottom midBottom rightCol" "footer footer footer footer";
	grid-gap: 5px;
}

.team_name {
	font-size: 300%;
	color: black;
	position: relative;
	left: 5%;
	top: 20%;
}

.team_result {
	font-size: 200%;
	color: red;
}

.main_image {
	width: 80%;
	height: 200px;
}

.rank {
	position: relative;
	left: 5%;
	top: 0%;
	margin: 10px;
}

.rank_table {
	background-color: ligntgray;
}

.rank-shadow {
	box-shadow: 0px 2px 2px #333;
	text-align: center;
}

.font-white {
	color: white;
	position: relative;
	left: 5%;
	top: 20%;
}

.memBer {
	float: right;
	margin-top: 10px;
	width: 310px;
	background-color: #2A3682;
	color: white;
}

.team_result_value {
	font-size: 200%;
}

.cal_font_size {
	font-size: 200%;
	text-align: center;
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
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.member_modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
	height: 60%;
}
/* The Close Button */


.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.member_list {
	font-size: 140%;
}
.member_list_search{
	font-size: 120%;
}

.check_box_size {
	zoom: 1.5;
}

.list_margin {
	
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
 	
 	#member_out{
 		position: relative;
	left: 0%;
	top: 50%;
 	}
</style>

</head>
<body>
	<jsp:include
		page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
<jsp:include
		page="${ application.contextPath }/views/user/comman/login.jsp"/>

<input type="hidden" value="club_info" id="location_web"/>
	<div class="wrapper">
		<div class="header">
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
		</div>
		
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
			<div class="img_back">
				<p class="team_name">${club_info.clubName }</p>

				<!-- 		<p class="font-white">공식 홈페이지 :</p> -->
				<!-- 		<p>온라인 샵 :</p> -->


			</div>
			
<!-- 
			<img alt="왜 안뜨냐" src="C:\Users\Song\git\re_its_League\web\resources\image\club\club_info.png">
			<img alt="왜 " src="../../../resources/image/club/club_info.png">
		 -->


			<p class="team_result">역대 전적</p>
			<p class="team_result_value" id="League_result">30전 12승 18패</p>
			<input type="hidden" id="clubId" value="${club_info.clubId }">
			<input type="hidden" id="clubName" value="${club_info.clubName }">
			
			<p class="team_result_value" id="club_member_size">구단 인원 : 6명</p>
			<p class="team_result_value" id="League_Name">참가 중인 리그 : it's ManLeague busan</p>
			<br> <br>

			<h4>
				선수 리스트
				</h2>
				<table id="club_info_table_member" class="w3-table" border="1" style="width:500px; text-align: center;">
					<thead>
					<tr bgcolor="lightgray" border="1" class="rank-shadow" >
						<th width="100px" style="text-align:center">이름</th>
						<th width="200px" style="text-align:center">어시스트</th>
						<th width="100px" style="text-align:center">골</th>
					</tr>
					</thaed>
					<tbody>
						 
					</tbody>
				</table>
				<button id="member" class="w3-btn w3-round memBer">선수관리</button>
		</div>
		<div class="midBottom">
			<h4 class="rank">순위</h4>
			<table id="club_info_table" class="w3-table" border="1">
				<thead  style="text-align:center">
				<tr bgcolor="lightgray" border="1" class="rank-shadow">
					<th width="100px"  style="text-align:center">순위</th>
					<th width="200px"  style="text-align:center">구단</th>
					<th width="100px"  style="text-align:center">경기수</th>
					<th width="100px"  style="text-align:center">승점</th>
					<th width="100px"  style="text-align:center">승</th>
					<th width="100px"  style="text-align:center">무</th>
					<th width="100px"  style="text-align:center">패</th>
					<th width="100px"  style="text-align:center">득점</th>
					<th width="100px"  style="text-align:center">실점</th>
					<th width="100px"  style="text-align:center">득실</th>
				</tr>
				</thaed>
				
				<tbody >
				
				</tbody>
			</table>
	


		
			<h4 class="rank">경기 일정</h4>
			<!-- stlye 은 slick 영역 확인용 -->
			<div style="padding: 50px 100px; background-color: gray;">
				<div id="slider-div">
					<div class="cal_font_size" value="1">1월</div>
					<div class="cal_font_size">2월</div>
					<div class="cal_font_size">3월</div>
					<div class="cal_font_size">4월</div>
					<div class="cal_font_size">5월</div>
					<div class="cal_font_size">6월</div>
					<div class="cal_font_size">7월</div>
					<div class="cal_font_size">8월</div>
					<div class="cal_font_size">9월</div>
					<div class="cal_font_size">10월</div>
					<div class="cal_font_size">11월</div>
					<div class="cal_font_size">12월</div>
				</div>
			</div>

			<table id="LeagueInfoTable" border="1" class="w3-table">
				<thead>
					<tr>
						<th width="100px" style='text-align:center'>리그명</th>
						<th width="200px" style='text-align:center'>일시</th>
						<th width="200px" style='text-align:center'>팀 1</th>
						<th width="200px" style='text-align:center'>팀 2</th>
						<th width="200px" style='text-align:center'>구장</th>
						<th width="200px" style='text-align:center'>심판</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>

			<script>
			//구단 선수들 초기화면에 뿌려주기
			
			$(function(){
				var teamNumber =$("#clubId").val();
				var club_member_size = document.getElementById("club_member_size");
				var club_member = $('#club_member_size');
				console.log(club_member);
				var team_count = 0;
				$.ajax({
					url:"/semi/club_info_member?teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						console.log(data);
						
						var $club_info_table_member = $("#club_info_table_member tbody");
						
						$club_info_table_member.html('');
						
						$.each(data,function(index,value){
							team_count++;
							var $tr = $('<tr>');
							
							var $pfName	= $("<td  style='text-align:center'>").text(value.pfName);
							var $prAssist = $("<td style='text-align:center'>").text(value.prAssist);
							var $prGoal = $("<td style='text-align:center'>").text(value.prGoal);
						
							
							$tr.append($pfName);
							$tr.append($prAssist);
							$tr.append($prGoal);
							
							
							$club_info_table_member.append($tr);
					
							club_member.attr('html',team_count);
							$('#club_member_size').text("구단 인원 : "+team_count + " 명");
						});
						
						
					},
					error: function(err){
						console.log("실패");
					}
				
			});
				
				
				
			})
			
			
	// 기본 초기 화면에서 순위 테이블 불러오기
	var teamNumber =$("#clubId").val();
	var clubName = $("#clubName").val();
	console.log(teamNumber);
	console.log(clubName);
	
	
		$(function(){
			$.ajax({
				url:"club_info_rank?teamNumber="+teamNumber,
				type:"get",
				success:function(data){
					console.log(data);
					
					var $club_info_table = $("#club_info_table tbody");
					
					$club_info_table.html('');
					
					$.each(data,function(index,value){
						
						
						var $tr = $('<tr>');
						
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
						
						$club_info_table.append($tr);
						
						if(value.clubName==clubName){
							var team_result = value.round+"전 "+value.win+"승 " +value.lose+"패";
							console.log(team_result);
							$('#League_result').text(team_result);
						}
					});
					
					
				},
				error: function(err){
					console.log("실패");
				}
			
		});
			
			
		})
			
			
			
			
	//선수 관리창 띄우기
	function member_management(){
		window.open('club_member_management_view.jsp','선수관리','resizeable=no width=500 height=500');
	}
	
	// 월 을 넘기면 테이블 바뀌게
	$("#slider-div").children().click(function(){
		var teamNumber =$("#clubId").val();
		var tema = "<%=request.getParameter("clubId")%>";
		var _month = $(this).text();
		var month = _month.substring(0,1);
		console.log(teamNumber);
		
		
		
		
		for(var i = 1 ; i < 13; i++){
			if(month == i ){
				$.ajax({
					url:"searchTeamMatch?month="+month+"&teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						console.log(data);
						
						var $LeagueInfoTable =$("#LeagueInfoTable tbody");
						
						$LeagueInfoTable.html('');
						
						$.each(data,function(index,value){
							var $tr = $('<tr>');
							
							var $lgNameTd = $("<td style='text-align:center'>").text(value.lgName);
							var $matchDateTd = $("<td style='text-align:center'>").text(value.matchDate);
							var $clubFNameTd = $("<td style='text-align:center'>").text(value.clubFName);
							var $clubSNameTd = $("<td style='text-align:center'>").text(value.clubSName);
							var $stdNameTd = $("<td style='text-align:center'>").text(value.stdName);
							var $RefNameTd = $("<td style='text-align:center'>").text(value.ref_name);
							
							$tr.append($lgNameTd);
							$tr.append($matchDateTd);
							$tr.append($clubFNameTd);
							$tr.append($clubSNameTd);
							$tr.append($stdNameTd);
							$tr.append($RefNameTd);
							
							$LeagueInfoTable.append($tr);
							
						});
						
						
					},
					error: function(err){
						console.log("실패");
					}
				
			});
			}
		}
	});
	
	$(function(){
		var today = new Date();
		var month = today.getMonth() + 1;
		var teamNumber =$("#clubId").val();
		var tema = "<%=request.getParameter("clubId")%>";
					for (var i = 1; i < 13; i++) {
						if (month == i) {
							$.ajax({
									url : "searchTeamMatch?month=" + month+ "&teamNumber=" + teamNumber,
								   type : "get",
								success : function(data) {
										console.log(data);
                                        var $LeagueInfoTable = $("#LeagueInfoTable tbody");

											$LeagueInfoTable.html('');

											$.each(data,function(index,value) {
																var $tr = $("<tr style='text-align:center'>");
																var $lgNameTd = $("<td style='text-align:center'>").text(value.lgName);
																var $matchDateTd = $("<td style='text-align:center'>").text(value.matchDate);
																var $clubFNameTd = $("<td style='text-align:center'>").text(value.clubFName);
																var $clubSNameTd = $("<td style='text-align:center'>").text(value.clubSName);
																var $stdNameTd = $("<td style='text-align:center'>").text(value.stdName);
																var $RefNameTd = $("<td style='text-align:center'>").text(value.ref_name);

																$tr.append($lgNameTd);
																$tr.append($matchDateTd);
																$tr.append($clubFNameTd);
																$tr.append($clubSNameTd);
																$tr.append($stdNameTd);
																$tr.append($RefNameTd);

																$LeagueInfoTable.append($tr);
																if(value.clubName==clubName){
																	var team_result = value.round+"전 "+value.win+"승 " +value.lose+"패";
																	$('#League_result').text(team_result);
																}
																$('#League_Name').text("참가 중인 리그 : "+value.lgName);
															});
											},
										error : function(err) {
											console.log("실패");
										}

									});
						}
					}

				});

				$(
						function() {
							var today = new Date();
							var month = today.getMonth() + 1;
							console.log(month);

							$('#slider-div').slick(
											{
												slide : 'div', //슬라이드 되어야 할 태그 ex) div, li 
												infinite : true, //무한 반복 옵션	 
												slidesToShow : 5, // 한 화면에 보여질 컨텐츠 개수
												slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
												speed : 100, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
												arrows : true, // 옆으로 이동하는 화살표 표시 여부
												dots : true, // 스크롤바 아래 점으로 페이지네이션 여부
												autoplay : true, // 자동 스크롤 사용 여부
												autoplaySpeed : 100000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
												pauseOnHover : true, // 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
												vertical : false, // 세로 방향 슬라이드 옵션
												prevArrow : "<button type='button' class='slick-prev'>Previous</button>", // 이전 화살표 모양 설정
												nextArrow : "<button type='button' class='slick-next'>Next</button>", // 다음 화살표 모양 설정
												dotsClass : "slick-dots", //아래 나오는 페이지네이션(점) css class 지정
												draggable : true, //드래그 가능 여부 
												initialSlide : month - 3,
												responsive : [ // 반응형 웹 구현 옵션
												{
													breakpoint : 960, //화면 사이즈 960px
													settings : {
														//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
														slidesToShow : 3
													}
												}, {
													breakpoint : 768, //화면 사이즈 768px
													settings : {
														//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
														slidesToShow : 2
													}
												} ]

											});
						})
			</script>
			<button id="delete_clue" class="w3-btn w3-round memBer">구단삭제</button>
			<div class="footer"></div>
		</div>


		<!-- The Modal -->
		<div id="member_Modal" class="modal">

			<!-- Modal content -->
			<div class="member_modal-content ">
				<span class="close">&times;</span>
				<h2>선수 관리</h2>
				<div style="float: left;">
					<input type="text" id="search_member" name="search_member"
						class="w3-input w3-border" style="width: 400px;">
				</div>
				<div style="float: right;">
					<button name="member_management" id="member_management"
						class="w3-input w3-border" style="width: 100px;">검색</button>
				</div>
				<div style="float:left; width:53%; height:380px; overflow:auto;">
					<table id="searchListTable">
						<thead>
						
						</thead>
						<tbody class="member_list_search">
							<!-- 임의 값 넣기 -->
							
						</tbody>
					</table>

				</div>
				<div style="float:left; width:47%; height:150px; overflow:auto;">
				<div style="float:right">
					<table id="userListTable">
					<caption>구단 선수</caption>
						<thead>
						
						</thead>
						<tbody class="member_list">
							<!-- 임의 값 넣기 -->
							
						</tbody>
					</table>
					</div>
				</div>
				<div style="width:47%; height:150px; overflow:auto;">
				<div>
					<table id="inviteListTable">
					<caption>초대한 선수</caption>
						<thead>
						
						</thead>
						<tbody class="member_list_search">
							<!-- 임의 값 넣기 -->
							
						</tbody>
					</table>
					</div>
				</div>
				<br> <br>
			<div>
				
				<button class="w3-input w3-border" id="member_out" name="member_out"
					style="width: 100px; float: right" >방출</button>
					<button class="w3-input w3-border" id="member_in" name="member_in"
					style="width: 100px; float: right; margin-right: 20px;" >초대</button>
				</div>
				<br><br>
				
			</div>

		</div>

		<script>
	
			
		
				// 선수관리 다이얼로그
			$(function() {

				// Get the modal
				var modal = document.getElementById('member_Modal');

				// Get the button that opens the modal
				var btn = document.getElementById("member");

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
				
				var teamNumber =$("#clubId").val();
				$.ajax({
					url:"/semi/club_info_member?teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						console.log(data);
						
						var $userListTable = $("#userListTable tbody");
						
						$userListTable.html('');
						
						$.each(data,function(index,value){
							var $tr = $('<tr>');
							
							var $pfName	= $("<td  style='text-align:center'>").text(value.pfName);
							var $pfEmail = $("<td style='text-align:center'>").text(value.pfEmail);
							var $checkbox = $("<input type='checkbox' value="+value.pfId+" id='teamcheck' name='teamcheck'>");
						
							$tr.append($pfEmail);
							$tr.append($pfName);
							$tr.append($checkbox);
							
							
							$userListTable.append($tr);
						});
						
						
						
						
					},
					error: function(err){
						console.log("실패");
					}
				
			});
				//초대한 선수 목록 띄우기
				$.ajax({
					url:"/semi/invite_member_list?teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						console.log(data);
						
						var $inviteListTable = $("#inviteListTable tbody");
						
						$inviteListTable.html('');
						
						$.each(data,function(index,value){
							var $tr = $('<tr>');
							
							var $pfName	= $("<td  style='text-align:center'>").text(value.pfName);
							var $pfEmail = $("<td style='text-align:center'>").text(value.pfEmail);
							var $pfCancle = $("<button style='text-align:center' class='w3-btn w3-round' id='membercancle'>X</button>")
							var $pfhidden = $("<input type='hidden' id='hiiden_value' value="+value.pfId+">");
							
							$tr.append($pfEmail);
							$tr.append($pfName);
							$tr.append($pfCancle);
							$tr.append($pfhidden);
							
							$inviteListTable.append($tr);
						});
						 $("#inviteListTable tr ").click(function(){
							console.log("취소버튼 클릭");
	
							var tr = $(this);
							var td = tr.children();
							var hidden_pfId = tr.children('#hiiden_value').val();
							
							console.log("hidden : " + hidden_pfId);
							
							if(confirm("초대를 취소하시겠습니까?")){
								
							}
						}) 
						
					},
					error: function(err){
						console.log("실패");
					}
				
			});
				
			/* $("#member_out").click(function(){
				var checkbox_all_value = "";
				
				$("input[name=teamcheck]:checked").each(function(){
					var test = $(this)val();
					checkbox_all_value += test;
					
				});
				console.log(checkbox_all_value);
			}); */
			
			
			// 멤버 초대하기
		 	$("#member_in").click(function(){
		 		var checkbox_all_value = "";
		 		$("input[name=member_check]:checked").each(function(){
					var test = $(this).val();
					checkbox_all_value += test+"/";
					
				}); 
		 		console.log("체크된 값들 : "+checkbox_all_value);
		 		
		 		$.ajax({
					url:"/semi/club_invite?checkbox_all_value="+checkbox_all_value+"&teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						alert(data);
				
						
						
	
					},
					error: function(err){
						console.log("실패");
					}
				
			}); 
		 		
			});
			// 멤버 추방하기
			 $("#member_out").click(function(){
				 var confirm_ok = confirm("체크한 선수를 추방하시겠습니까?");
				 if(confirm_ok){
		 		var checkbox_all_value = "";
		 		$("input[name=teamcheck]:checked").each(function(){
					var test = $(this).val();
					checkbox_all_value += test+"/";
					
				}); 
		 		console.log("체크된 값들 : "+checkbox_all_value);
		 		
		 		$.ajax({
					url:"/semi/member_remvoe?checkbox_all_value="+checkbox_all_value+"&teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						alert(data);
						
						
	
					},
					error: function(err){
						console.log("실패");
					}
				
			}); 
		 		$.ajax({
					url:"/semi/club_info_member?teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						console.log(data);
						
						var $userListTable = $("#userListTable tbody");
						
						$userListTable.html('');
						
						$.each(data,function(index,value){
							var $tr = $('<tr>');
							
							var $pfName	= $("<td  style='text-align:center'>").text(value.pfName);
							var $pfEmail = $("<td style='text-align:center'>").text(value.pfEmail);
							var $checkbox = $("<input type='checkbox' value="+value.pfId+" id='teamcheck' name='teamcheck'>");
						
							$tr.append($pfEmail);
							$tr.append($pfName);
							$tr.append($checkbox);
							
							
							$userListTable.append($tr);
						});
						
						
						
						
					},
					error: function(err){
						console.log("실패");
					}
				
			});
		 		
				var club_member_size = document.getElementById("club_member_size");
				var club_member = $('#club_member_size');
				console.log(club_member);
				var team_count = 0;
		 		$.ajax({
					url:"/semi/club_info_member?teamNumber="+teamNumber,
					type:"get",
					success:function(data){
						console.log(data);
						
						var $club_info_table_member = $("#club_info_table_member tbody");
						
						$club_info_table_member.html('');
						
						$.each(data,function(index,value){
							team_count++;
							var $tr = $('<tr>');
							
							var $pfName	= $("<td  style='text-align:center'>").text(value.pfName);
							var $prAssist = $("<td style='text-align:center'>").text(value.prAssist);
							var $prGoal = $("<td style='text-align:center'>").text(value.prGoal);
						
							
							$tr.append($pfName);
							$tr.append($prAssist);
							$tr.append($prGoal);
							
							
							$club_info_table_member.append($tr);
					
							club_member.attr('html',team_count);
							$('#club_member_size').text("구단 인원 : "+team_count + " 명");
						});
						
						
					},
					error: function(err){
						console.log("실패");
					}
				
			});
				 }
		 		
			}); 
			
			
			
			
			//유저 검색 기능
			var oldVal;
				$("#search_member").on("propertychange change keyup paste input", function(){
					var currentVal = $(this).val();
					if(currentVal == oldVal){
						return;
					}
					oldVal = currentVal;
					console.log(oldVal);
					
					$.ajax({
						url:"/semi/club_search_member?oldVal="+oldVal,
						type:"get",
						success:function(data){
							console.log(data);
							
							var $searchListTable = $("#searchListTable tbody");
							
							$searchListTable.html('');
							
							$.each(data,function(index,value){
								var $tr = $('<tr>');
								
								var $pfName	= $("<td  style='text-align:center'>").text(value.pfName);
								var $pfEmail = $("<td style='text-align:center'>").text(value.pfEmail);
								var $checkbox = $("<input type='checkbox' value="+value.pfId+" id='member_check' name='member_check'>");
							
								$tr.append($pfEmail);
								$tr.append($pfName);
								$tr.append($checkbox);
								
								
								$searchListTable.append($tr);
							});
							
							
							
							
						},
						error: function(err){
							console.log("실패");
						}
					
				});
			
				});
			})
			
				
		</script>
		
		
				
</body>
</html>