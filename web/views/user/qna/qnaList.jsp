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
	.outer{
	width: 800px;
	height:500px;
	margin-top:20px;
	margin-left:auto;
	margin-right:auto;
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
	.button{
		text-align:right;
	}
	
</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
		
		
		<h2>QnA</h2>
	
	<div class="outer">
		<br>
			<form action="${ applicationScope.contextPath }/insert.qna" method="post">
		<div class="table-area">
		
		
		<br>
			<div class="buttonboxes" align="center">
	  	 			<button name="qnaCate" id="qnaCate1" type="button" class="btn btn-secondary" value="Q1" style="text-align:center">매치취소</button>
	  	 			<button name="qnaCate" id="qnaCate2" type="button" class="btn btn-secondary" value="Q2">매치진행</button>
	  	 			<button name="qnaCate" id="qnaCate3" type="button" class="btn btn-secondary" value="Q3">서비스</button>
	  	 			<button name="qnaCate" id="qnaCate4" type="button" class="btn btn-secondary" value="Q4">매칭신청</button>
	  	 			<button name="qnaCate" id="qnaCate5" type="button" class="btn btn-secondary" value="Q5">구장관련</button>
	  	 		</div>
	  	 		<br>
	  	 		
			<table align="center" id="listArea">
			
			<thead>
				<tr class="table-head">
					<th width="50px">글번호</th>
					<th width="300px">글제목</th>
					<th width="100px">조회수</th>
					<th width="100px">작성일</th>
				</tr>
				</thead>
			 <%-- 
				 <c:forEach var="q" items="${ requestScope.list }">
					<tr>
						<!--  -->
						<td><c:out value="${ q.bNo }"/></td>
						<td><c:out value="${ q.bTitle }"/></td>
						<td><c:out value="${ q.bCount }"/></td>
						<td><c:out value="${ q.bDate }"/></td>
					</tr>
				</c:forEach> 
			 --%>
			 
				<tbody>
				</tbody>
				</table>
		</div>
			<br>
		 <div class="button">
		 	<button id="submitBotton" type="button" class="btn btn-secondary" onclick="writingForm();">작성하기</button>
		 </div>
	</form>
	
	</div>
	
	 <script>
	 	
	 	
	 	function writingForm(){
	 		
	 		location.href = "${applicationScope.contextPath}/views/user/qna/writingForm.jsp";
	 	};
	 	
	 
	 	
	 	$(".btn").click(function(){
	 		console.log($(this).val());	
	 		

 			var qnaCate = $(this).val();
 			
 
 			$.ajax({
 				url:"/semi/qnaCate",
 				//변수명으로 들어가서 	키값	
 				data:{ qnaCate:qnaCate },
 				type:"get",
 				success: function(data){
 					
 					console.log(data);
 					
 					//success data는 나중에 서블릿애서 조회한후에 값은json을 넘기고 view뿌려줌
 					var $tableBody = $("#listArea tbody");
 					
 					$tableBody.html('');
 				 	
 					$.each(data, function(index, value){
 						
 						var $tr =$("<tr>");
 						var $bno = $("<td>").text(value.bNo);
 						var $bTitle = $("<td>").text(value.bTitle);
 						var $bCount = $("<td>").text(value.bCount);
 						var $bDate = $("<td>").text(value.bDate);
 						
 						$tr.append($bno);
 						$tr.append($bTitle);
 						$tr.append($bCount);
 						$tr.append($bDate);
 						
 						$tableBody.append($tr);
 						
 						
 					});
 			
 					
 					 
 					
 					
 					
 				},
 				error:function(err){
 					console.log("떙");
 					
 					
 				}
 				
 			});
 			
 
	 	});
	 	
	 	$(function(){
	 		$("#listArea tr").mouseenter(function(){
	 			$(this).parent().css({"background":"darkgrey","cursor":"pointer"});	
	 		}).mouseout(function(){
	 			$(this).parent().css({"background":"white"});
	 		}).click(function(){
	 			var num = $(this).parent().children().eq(0).text();
	 			console.log(num);
	 			
	 			//상세정보를 하기위해서 모든 행의 정보를 조회할 것
	 			//각각행의 식별은 PK 글번호 -> Server에 전달
	 			//url이용해서 쿼리스트링을 만들어서 전송 
	 			
	 			//url을 만들어서 요청
	 			//get방식적합 /SelectOne.no서블릿을 요청하면소 
	 			location.href = "${applicationScope.contextPath}/selectOne.qna?bno="+bno;
	 		//리스트에 보여진 게시물을 클릭했을때 url에 숫자가 나오면은 전송되는거를 확인/*  */
	 			
	 		});
	 	});
	 </script>
	 
	 
</body>
</html>











