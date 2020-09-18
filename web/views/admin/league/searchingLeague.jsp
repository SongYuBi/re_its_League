<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	div .searching .selectLg{
		display:inline-block;
	}
	
	
	.container{
		margin:100px;
		width:1000px;
		height:900px;
		
		
	}
	.outer{
		margin:100px;
		
	}
	.inner{
		margin:80px;
	}
	#datepicker{
		border:2px solid darkgrey;
		height:30px;
  		width:150px;
  		border-radius:5px 5px;
	}
	p{
		font-weight:medium;
		font-size:20px;
	}
	hr{
		border:2px solid darkgrey;
	}
	.checkboxes{
		display:inline-block;
	}
	.searching input{
		width:300px;
		height:32px;
	}
	.searching{
		display:inline-block;
	}
	table{
		border:1px solid grey;
		background-color:lightgrey;
	}
	table th{
		background:black;
		color:white;
		font-size: 20px;
	}
	table td{
		font-size:13px;
	}
	
	

</style>
</head>
<body>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include>

	<div class="container">
	
	<div class="outer">
	
		<div class="inner">
		
		<h2>리그관리</h2>
		
			<hr>
			<br>

		<p>기간 설정 : <input type="text" id="datepicker"></p>
		
		<div class="checkboxes" >
		<form action="">
			<input type="checkbox" id="finshedMatch" name="MM" value="matching" onclick="oneCheck(this)">
				<label for="finshed">정상처리된 경기</label>
			<br>
			<input type="checkbox" id="unfinshedMatch" name="MM" value="notmatching" onclick="oneCheck(this)">
				<label for="unfinshed">비정상처리된 경기</label>
			<br>
			</div>
			
		</form>
		<br>
		<form action="">
			<div class="searching">
				<input type="text" >
				<button type="button" class="btn btn-secondary" >검색하기</button>
			</div>
			
		</form>
		
		<div class="selectLg">
		<form action="">
			<select name="league" id="leagueSelect" placeholder="리그선택">
				<option	value="A리그">A리그</option>
				<option	value="B리그">B리그</option>
				<option	value="C리그">C리그</option>
				<option	value="D리그">D리그</option>
			</select>
		</form>
		</div>
		<br>
		 <div id="listMatch-container">
		 <table id="listMatch">
		 	<tr>
		 	<th width="300px">팀1</th>
		 	<th width="300px">팀2</th>
		 	<th width="300px">리그</th>
		 	<th width="300px">경기날짜</th>
		 	<th width="300px">심판</th>
		 	</tr>
		 	
		 	<!-- 넘어오는 리스트의 개수만큼 forEach를 반복해서 추가 -->
		 	<c:forEach var="n" items="">
		 		<tr>
		 			<td><c:out value=""/>밀워키</td>
		 			<td><c:out value=""/>뉴올리언스</td>
		 			<td><c:out value=""/>4차전</td>
		 			<td><c:out value=""/>9월27일</td>
		 			<td><c:out value=""/>박재서</td>
		 		</tr>
		 		<tr>
		 			<td><c:out value=""/>밀워키</td>
		 			<td><c:out value=""/>뉴올리언스</td>
		 			<td><c:out value=""/>4차전</td>
		 			<td><c:out value=""/>9월27일</td>
		 			<td><c:out value=""/>박재서</td>
		 		</tr>
		 		<tr>
		 			<td><c:out value=""/>밀워키</td>
		 			<td><c:out value=""/>뉴올리언스</td>
		 			<td><c:out value=""/>4차전</td>
		 			<td><c:out value=""/>9월27일</td>
		 			<td><c:out value=""/>박재서</td>
		 		</tr>
		 	</c:forEach>
		</table>
			
		 </div>
			
			
			</div>
		</div>
	</div>


	
			
	
</body>
<script>
	$(function(){
		$("#datepicker").datepicker();
	});
	
	function oneCheck(a){
		
		var one = document.getElementsByName("MM");
		
		console.log(one);
		
		/* console.log(one);
		console.log(two); */
		for(var i = 0; i < one.length; i++){
			if(one[i] != a){
				one[i].checked=false;
			}
		}
		
	};
	$(function(){
		$("#leagueSelect option:selected").val();
		
	});
	
	$(function(){
		
		$("#listMatch td").mouseenter(function(){
			$(this).parent().css({"background":"darkgrey","cursor":"pointer"});
		}).mouseout(function(){
			$(this).parent().css({"background":"white"});
		}).click(function(){
			var num = $(this).parent().children().eq(0).text();
			console.log(num)
		});
	});
	
  </script>
</html>








