<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"/>
    
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<title>Insert title here</title>
<style>
	.button {
	 
	  border: none;
	  color: white;
	  padding: 10px 30px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 6px ;
	  transition-duration: 0.4s;
	  cursor: pointer;
	  border-radius:8px;
	 align:right;
	  margin-right:30px;
	
	}
	.button5 {
  background-color: white;
  color: black;
  border: 2.5px solid #111B39;
	}
	
	.button5:hover {
	  background-color: #111B39;
	  color: white;
	}

	 .outer{
	width: 1100px;
	
	margin-top:50px;
	margin-left:auto;
	margin-right:auto;
	
	}/* 
	.head{
		margin:50px;
	} */
	/* .guest{
		word-break:break-all;
	} */
	#changeInfo{
		float:left;
	}
	#btn{
		width:80px;
		height:35px;
		color:white;
		align:center;
		margin-left:auto;
		margin-right:30px;
		text-align:center;
		font-weight:medium;
		
	}
	.table-head{
		background:#111B39;
		color:white;
	}
	 h2{
	margin:100px;
	
	}
	table{
		width:700px;
		height:30px;
		
	}
	#listArea{
		width:100%;
		border-collapse: collapse;
		font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		
	}
	#listArea td, #listArea th{
		border-bottom:1px solid #ddd;
		 padding: 8px;
		 
	}
	#listArea th{
		padding-top: 12px;
		padding-bottom: 12px;
		text-align:left;
		backgound-color:111B39;
		color:white;
		
	}
	.btns {
   position:static;
   margin-left:1400px;
   width:300px;
}
.loginBtns {
   float:left;
}
.menu{
  float:left;
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

	}.btn{
		align:right;
		padding:800px;
	}
	#guest{
	
		margin-left:1400px;
	}
	#infoNlogout{
		margin-left:1500px;
	}
	.common-header{
		margin-bottom:50px;
	}
	 
	
</style>
	
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
		
		<jsp:include
		page="${ application.getContextPath() }/views/user/comman/login.jsp"/>
		
		
		  <div class=common-header>
		
		<div id="logo" align="center">
				 <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px" style="cursor: pointer" onclick="reHome();">
			</div>
			
		
		<div  class="head" id="headWrapper">

				<div class="btns" style="font-size:20px; color:gray; font-weight:600px;">
				<c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo"  style="font-size:20px; color:gray; font-weight:600px;" >
					<li class="lil"  style="font-size:20px; color:gray; font-weight:600px;"><div id="myBtn">로그인</div></li>
					<li class="lil" style="font-size:20px; color:gray; font-weight:600px;">또는</li>
					<li class="lil"  ><div><a style="font-size:20px; color:gray; font-weight:600px;" href="${ application.contextPath }/semi/views/user/login/insert_member.jsp">회원가입</a></div></li>
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
			
			
			
	<hr style="height: 3px; background: black;">
		
		
		
		
		
		
		
		<div class="outer">
<!-- 		<h2 align="center">QnA</h2> -->
	
	<div class="outer">
		<br>
			<form action="${ applicationScope.contextPath }/insert.qna" method="post">
		<div class="table-area">
		
		
		<br>
			<div class="buttonboxes" align="center">
	  	 			<button name="qnaCate" id="qnaCate" type="button" class="button button5" value="Q1" style="text-align:center">매치취소</button>
	  	 			<button name="qnaCate" id="qnaCate" type="button" class="button button5" value="Q2">매치진행</button>
	  	 			<button name="qnaCate" id="qnaCate" type="button" class="button button5" value="Q3">서비스</button>
	  	 			<button name="qnaCate" id="qnaCate" type="button" class="button button5" value="Q4">매칭신청</button>
	  	 			<button name="qnaCate" id="qnaCate" type="button" class="button button5" value="Q5">구장관련</button>
	  	 			<input type="hidden" id="defaultValue" name="defaultValue" value="Q2">
	  	 		</div>
	  	 		<br>
	  	 		
	  	 	<!-- table의 id값은 listArea -->
			<table align="center" id="listArea">
			
			<thead>
				<tr class="table-head">
					<th width="50px">글번호</th>
					<th width="300px">글제목</th>
					<th width="100px">조회수</th>
					<th width="100px">작성일</th>
				</tr>
				</thead>
				<tbody>
				</tbody>
				</table>
		</div>
			<br>
		 <div class="button">
		 	<button id="submitBotton" type="button" class="button button5" onclick="writingForm();" align="right">작성하기</button>
		 </div>
	</form>
	
	</div>
	</div>
	
	<footer>
      <div id="footer" align="center">
         <img src="/semi/resources/image/chu/footer.png" width="1100px" height="280px">
       </div>
    </footer>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script>
	 
		function reHome(){
	   		location.href = "${applicationScope.contextPath}/index.jsp";
	   		
	   	}
	 	
	 	//이거는 jquery 버튼 onclick 함수호출해서 이어지게 하는거 	
	 	function writingForm(){
	 		
	 		window.confirm("작성하시겠습니까?");
	 		//페이지이동~
	 		location.href = "${applicationScope.contextPath}/views/user/qna/writingForm.jsp";
	 		
	 	};
	 	
	 	//jsp페이지 위에서아래로
	 	//페이지가 뜨자마자 실행하는 함수 , onloadFunction 
	 	$(function(){
	 		
		 	var qnaCate =$("#defaultValue").val();
		 	
		 	$.ajax({
 				//절대경로로 설정을 함 
 				url:"/semi/qnaCate",
 				//변수명으로 넣어 키값을 가져옴 	
 				data:{ qnaCate:qnaCate },
 				
 				type:"get",
 				
 				success: function(data){
 					
 					console.log(data);
 					
 					
 					//success data는 나중에 서블릿애서 조회한후에 값은json을 넘기고 view뿌려줌
 					//이거는 값을 뿌려주는거여서 tobody를 이용해 담는거 , 영역설정
 					var $tableBody = $("#listArea tbody");
 					
 					//이게 누적되는거를 막아줌 
 					 $tableBody.html(''); 
 				 	
 					$.each(data, function(index, value){
 						
 						var $tr =$("<tr>");
 						var $bno = $("<td>").text(value.bNo);
 						var $bTitle = $("<td>").text(value.bTitle);
 						var $bCount = $("<td>").text(value.bCount);
 						var $bDate = $("<td>").text(value.bDate);
 						//??
 						//아ㄷ이디값을 ㅈ써줘야한다 와따 어려워 
 						//value값을 넣어주기위해 그리고 숨기기	
 						var $hidden = $("<input type='hidden' id='qnaBno' value="+value.bNo+">");
 						
 						$tr.append($bno);
 						$tr.append($bTitle);
 						$tr.append($bCount);
 						$tr.append($bDate);
 						$tr.append($hidden);
 						
 						$tableBody.append($tr);
 						
 					});
 					//아약스롤통해서 불러와서 써지는거 
 					//움...ㅅ대상이없어 , 
 					//뭐
 					$("#listArea tr").click(function(){
 			 			console.log("dfsdfsd");
 			 			
 			 			var tr = $(this);
 			 			var button = tr.children("#qnaBno").val();
 			 			
 			 			console.log(button);
 			 			
 			 			//이거를 눌렀을때 location을 줘야함
 			 			location.href = "/semi/selectOne.qna?button="+button;
 			 			
 			 		});
 					
 				},
 				error:function(err){
 					console.log("떙");
 					
 				}
 				
 			});
			
	 	});
	 	
	 	
	 	//이 버튼을 눌렀을때 
	 	$(".button").click(function(){
	 		console.log($(this).val());	

	 		//선택되는 행의 값을 가져온거를 qnaCate라는 변수에 넣어줌 
 			var qnaCate = $(this).val();
 			
 			$.ajax({
 				//절대경로로 설정을 함 
 				url:"/semi/qnaCate",
 				//변수명으로 넣어 키값을 가져옴 	
 				data:{ qnaCate:qnaCate },
 				
 				type:"get",
 				
 				success: function(data){
 					
 					console.log(data);
 					
 					
 					//success data는 나중에 서블릿애서 조회한후에 값은json을 넘기고 view뿌려줌
 					//이거는 값을 뿌려주는거여서 tobody를 이용해 담는거 , 영역설정
 					var $tableBody = $("#listArea tbody");
 					
 					//이게 누적되는거를 막아줌 
 					 $tableBody.html(''); 
 				 	
 					$.each(data, function(index, value){
 						
 						var $tr =$("<tr>");
 						var $bno = $("<td>").text(value.bNo);
 						var $bTitle = $("<td>").text(value.bTitle);
 						var $bCount = $("<td>").text(value.bCount);
 						var $bDate = $("<td>").text(value.bDate);
 						//??
 						//아ㄷ이디값을 ㅈ써줘야한다 와따 어려워 
 						//value값을 넣어주기위해 그리고 숨기기	
 						var $hidden = $("<input type='hidden' id='qnaBno' value="+value.bNo+">");
 						
 						$tr.append($bno);
 						$tr.append($bTitle);
 						$tr.append($bCount);
 						$tr.append($bDate);
 						$tr.append($hidden);
 						
 						$tableBody.append($tr);
 						
 					});
 					//아약스롤통해서 불러와서 써지는거 
 					//움...ㅅ대상이없어 , 
 					//뭐
 					$("#listArea tr").click(function(){
 			 			console.log("dfsdfsd");
 			 			
 			 			var tr = $(this);
 			 			var button = tr.children("#qnaBno").val();
 			 			
 			 			console.log(button);
 			 			
 			 			//이거를 눌렀을때 location을 줘야함
 			 			location.href = "/semi/selectOne.qna?button="+button;
 			 			
 			 		});
 					
 				},
 				error:function(err){
 					console.log("떙");
 					
 				}
 				
 			});
 
	 	});
	 		
	 		$(function(){
	 			
	 			$("#listArea tr").click(function(){
		 			console.log("dfsdfsd");
		 			
		 			var tr = $(this);
		 			var button = tr.children("#qnaBno").val();
		 			
		 			console.log(button);
		 			
		 			
		 		});
	 			
	 			
	 		});
	 		
	 
	 	
	 </script>
	 
</body>
</html>











