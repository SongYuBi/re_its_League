<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	background-color: LightSeaGreen;
}

.leftCol {
	grid-area: leftCol;
	background-color: orange;
}

.rightCol {
	grid-area: rightCol;
}

.midTop {
	grid-area: midTop;
}

.img_back {
	width: 80%;
	height: 300px;
	background-image: url("club_info.png");
	background-repeat: no-repeat;
	back
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
	font-size: 200%;
	color: white;
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
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
	height: 40%;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.member_list {
	font-size: 150%;
}

.check_box_size {
	zoom: 1.5;
}

.list_margin {
	
}
</style>

</head>
<body>
	<jsp:include
		page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>

	<div class="wrapper">
		<div class="header">Header</div>
		<div class="leftCol">LeftCol</div>
		<div class="rightCol">이런곳에 수정ㅎ면되</div>
		<div class="midTop">
			<div class="img_back">
				<p class="team_name">${club_info.clubName }</p>

				<!-- 		<p class="font-white">공식 홈페이지 :</p> -->
				<!-- 		<p>온라인 샵 :</p> -->


			</div>
			<div style="position: relative;">

				<img
					src="${ application.getContextPath() }/resources/image/club/club_info.png">

				<div
					style="left: 100px; width: 450px; bottom: 0px; font-size: 1.8em; font-weight: bold; position: absolute;">

					원하는 적당한 위치를 지정하면 이 글이 그 위치에 나타남. 이미지 위에 겹쳐서 나타남.</div>

			</div>


			<p class="team_result">역대 전적</p>
			<p class="team_result_value">30전 12승 18패</p>
			<input type="hidden" id="clubId" value="${club_info.clubId }">
			<p class="team_result_value">구단 인원 : 6명</p>
			<p class="team_result_value">참가 중인 리그 : it's ManLeague busan</p>
			<br> <br>

			<h4>
				선수 리스트
				</h2>
				<table id="club_info_table_member" class="w3-table" border="1" width="300">
					<thaed>
					<tr bgcolor="lightgray" border="1" class="rank-shadow">
						<th width="100px">이름</th>
						<th width="200px">실력</th>
						<th width="100px">골</th>
					</tr>
					</thaed>
					<tbody>
						<tr>
							<td>박지성</td>
							<td>중</td>
							<td>12</td>
						</tr>
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
	// 기본 초기 화면에서 순위 테이블 불러오기
	var teamNumber =$("#clubId").val();
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
			<div class="footer">Footer</div>
		</div>


		<!-- The Modal -->
		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
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
				<div>
					<table id="userListTable">
						<thead>

						</thead>
						<tbody class="member_list">
							<!-- 임의 값 넣기 -->
							<tr>
								<td style="padding: 10px;">asada@naver.com</td>
								<td style="padding: 10px;">김*호</td>
								<td style="padding: 10px;"><input type="checkbox" id=""
									class="check_box_size"></td>
							</tr>
							<tr>
								<td style="padding: 10px;">asada@naver.com</td>
								<td style="padding: 10px;">김*호</td>
								<td style="padding: 10px;"><input type="checkbox" id=""
									class="check_box_size"></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>

				</div>
				<br> <br>
				<button class="w3-input w3-border" id="member_out" name="member_out"
					style="width: 100px; float: right" onclick="member_out();">방출</button>
			</div>

		</div>

		<script>
			$(function() {

				// Get the modal
				var modal = document.getElementById('myModal');

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

			})
		</script>
		
		
				
</body>
</html>