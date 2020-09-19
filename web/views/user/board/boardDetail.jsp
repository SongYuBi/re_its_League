<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
th {
	font-weight: 600;
}

.btn {
	background: navy;
	color: white;
	width: 100px;
}
</style>
</head>

<jsp:include
	page="${ application.getContextPath() }/views/user/board/header.jsp"></jsp:include>
<jsp:include
	page="${ application.getContextPath() }/views/common/sideBar2.jsp"></jsp:include>
<h1 align="center"></h1>
<div id="default-div">
	<div class="box1">
		<h2></h2>
	</div>
	<div class="box2" align="center">
		<body>
			<div class="menu" align="center"
				style="font-weight: 900; font-size: 50px; margin: 0 auto; margin-top: 40px">상세보기</div>
			<br>
			<br>
			<br>
			<table class="table table">
				<tbody style="font-size: 20px;">
					<tr>
						<th>제목</th>
						<td><c:out value="${requestScope.board.bTitle }" /></td>
						<th>조회수</th>
						<td><c:out value="${ requestScope.board.bCount }" /></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><c:out value="${ requestScope.board.pfName }" /></td>
						<th>작성시간</th>
						<td><c:out value="${ requestScope.board.bDate }" /></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3" style="height: 300px;"><c:out
								value="${ requestScope.board.bContent }" /></td>
					</tr>
				</tbody>
			</table>
			<br>
			<br>
			<a href="javascript:history.back()" id="list"
				class="btn btn-secondary">목록으로</a>
				<c:set var ="loginName" value="${sessionScope.loginUser.pfId}"/>
				<c:set var ="writerName" value="${requestScope.board.bWriter}"/>
				<c:if test= "${loginName eq writerName }">
				<c:set 	var="title" value="${requestScope.board.bTitle }"/>
				<a href="${applicationScope.contextPath}/views/user/board/freeBoardModifyForm.jsp?title=${requestScope.board.bTitle}&content=${requestScope.board.bContent}&bid=${requestScope.board.bid}" id="modify" class="btn btn-secondary">수정하기</a>
			 </c:if>
			</table>
			<br>
			<br>
			<br>
			<div class="reply-area">
				<div class="reply-write-area">
					<table align="center" style="font-size: 20px;">
						<tr>
							<td style="width: 120px;">댓글 작성</td>
							<td><textarea rows="7" cols="120" id="replyContent"
									style="height: 150px; width: 1200px;"></textarea></td>
							<td><button id="addReply"
									style="width: 150px; height: 150px; margin-left: 20px;">댓글
									등록</button></td>
						</tr>
					</table>
				</div>
				<div id="replySelectArea">
					<table id="replySelectTable" align="center" style="margin-top:20px; margin-left:10%; width:1500px; height:100px; font-size:20px;">
						<tbody>
							<c:forEach var="b" items="${ requestScope.list }">
								<tr>
									<input type="hidden" value="<c:out value="${ b.bid }"/>">
									<td style="width:50px; font-weight:bolder;"><c:out value="${ b.ref_Bid }" /></td>
									<td style="width:1100px;"><c:out value="${ b.bContent }" /></td>
									<td><c:out value="${ b.bDate }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>




			<br>
			<br>
			<br>
			<footer>
			<div id="footer" align="center">
				<img src="/semi/resources/image/chu/footer.png" width="1500px"
					height="500px">
			</div>
			</footer>
			<br>
			<br>
			<br>
	</div>
	<div class="box3">
		<h3>
			<br>
		</h3>
	</div>
</div>

<script>
	window.onload=function(){
    var bid = '<c:out value="${requestScope.board.bNo}"/>';
    console.log(bid);
    
    $.ajax({
       url: "${applicationScope.contextPath}/selectReplyList.bo",
       data: {bid: bid},
       type: "post",
       success: function(data) {
          
          var $replySelectTable = $("#replySelectTable tbody");
          $replySelectTable.html('');
          
          for(var key in data) {
             var $tr = $("<tr>");
             var $writerTd = $("<td>").text(data[key].pfName).css("width", "100px");
             var $contentTd = $("<td>").text(data[key].bContent).css("width", "400px");
             var $dateTd = $("<td>").text(data[key].bDate).css("width", "200px");
             
             $tr.append($writerTd);
             $tr.append($contentTd);
             $tr.append($dateTd);
             
             $replySelectTable.append($tr);
          }
       },
       error: function(err) {
          console.log("댓글 불러오기 실패!");
       }
    })
 };
     
	
     
      $("#addReply").click(function(){
         var writer = '<c:out value="${sessionScope.loginUser.pfId}"/>';
         var bid = '<c:out value="${requestScope.board.bNo}"/>';
         var content = $("#replyContent").val();
         
         console.log(writer);
         console.log(bid);
         console.log(content);
         
            $.ajax({
            url: "${applicationScope.contextPath}/insertReply.bo",
            data: {writer: writer, content: content, bid: bid},
            type: "post",
            success: function(data) {
               
               var $replySelectTable = $("#replySelectTable tbody");
               $replySelectTable.html('');
               
               for(var key in data) {
                  var $tr = $("<tr>");
                  var $writerTd = $("<td>").text(data[key].pfName).css("width", "100px");
                  var $contentTd = $("<td>").text(data[key].bContent).css("width", "400px");
                  var $dateTd = $("<td>").text(data[key].bDate).css("width", "200px");
                  
                  $tr.append($writerTd);
                  $tr.append($contentTd);
                  $tr.append($dateTd);
                  
                  $replySelectTable.append($tr);
               }
            },
            error: function(err) {
               console.log("댓글 작성 실패!");
            }
         })
      });
   </script>
</body>
</html>

