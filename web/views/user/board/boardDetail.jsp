<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
th {
	font-weight:600;
} 
.btn {
	background:navy;
	color:white;
	width:100px;
}
</style>
</head>

<jsp:include page="${ application.getContextPath() }/views/user/board/header.jsp"></jsp:include>
<jsp:include page="${ application.getContextPath() }/views/common/sideBar2.jsp"></jsp:include>
<h1 align="center"></h1>
	<div id="default-div">
		<div class="box1">
			<h2></h2>
		</div>
		<div class="box2"  align="center">
			<body>
			<div class="menu" align="center"
					style="font-weight: 900; font-size: 50px; margin: 0 auto; margin-top: 40px">상세보기</div><br><br><br>
    <table class="table table">
        <tbody style="font-size:20px;">
            <tr>
                <th>제목</th>
                <td><c:out value="${requestScope.board.bTitle }" /></td>
                <th>조회수</th>
                <td><c:out value="${ requestScope.board.bCount }" /></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><c:out value="${ requestScope.board.bWriter }" /></td>
                <th>작성시간</th>
                <td><c:out value="${ requestScope.board.bDate }" /></td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3" style="height:300px;"
                  ><c:out value="${ requestScope.board.bContent }" />
                </td>
            </tr>
        </tbody>
          </table>
   <br><br>
    <a href="javascript:history.back()" id="list" class="btn btn-secondary">목록으로</a>
    <c:if test="${ !empty sessionScope.loginUser} }"> 
    <a href="#" id="modify" class="btn btn-secondary">수정하기</a>
    </c:if>
      </table>
     <br><br><br>
     
     <label class="comment">
     <input type="text-area" id="commentDetail" style="width:1400px; height:200px;">
     <button type="submit" id="commentBtn" style="width: 150px; height:200px;">댓글 달기</button>
     </label> 
      
      
      
      <br> <br> <br>
			<footer>
			<div id="footer" align="center">
				<img src="/semi/resources/image/chu/footer.png" width="1500px"
					height="500px">
			</div>
			</footer>
			<br><br><br>
		</div>
		<div class="box3">
			<h3>
				<br>
			</h3>
		</div>
	</div>
<script>
$(document).ready(function(){
	
	$("#sendButton").click(function(){
		// jQuery의 사용자가 아래서 입력한 데이터를 받아오는 방식
		// javascript는 document.getElementById 이렇게 접근했었음
		HttpSession session = request.getSession(); 
		Profile_vo loginUser = (Profile_vo) session.getAttribute("loginUser");
		var params = "name=" + loginUser
				+ "&content=" + $("#commentDetail").val()
				+ "&boardNum=${dto.boardNum}";
		
		$.ajax({
			//민경 아약스 써야대??
			type:"POST", // input값 보내는거니깐 post형태로 보내기 
			url:"<%=cp%>/comm/created2.action",   
			data:params,
			success:function(args){
				
				// 결과 데이터는 이미 표로 가공된 상태로 올 것임 (commentList.jsp로부터)
				$("#listData").html(args);
									
				//ajax부분만 바뀌기 때문에, 사용자가 댓글 [등록하기] 누르고 나면 
				//입력창에 입력값이 그대로 남아있음 =>  초기화 시켜주는 작업 필요
				$("#name").val("");
				$("#content").val("");
				$("#name").focus; // 다 지우고 name에다가 커서 갖다놓기					
			},
			
			beforeSend:showRequest, // 보내기전에 실행
			
			error:function(e) {
				alert(e.responseText); // 갔다와서 에러가 나면 알람을 띄워라 
			}
			
		});
		
	});
	
});

function showRequest() {
	
	// 사용자가 입력한 데이터 가져와라
	// 공백 없앤 상태로 변수에 다시 넣어줌 
	var name = $.trim($("#name").val());
	var content = $.trim($("#content").val());
	
	if(!name) {
		alert("\n이름을 입력하세요!");
		$("#name").focus;
		return false;
	}
	
	if (!content) {
		alert("\n내용을 입력하세요!");
		$("#content").focus;
		return false;
	}
	
	if (!content.length > 200) {
		alert("\n내용을 200자까지만 입력 가능합니다!");
		$("#content").focus;
		return false;
	}
	
	// true가 돌아가야만, 서버로 값을 보냄
	return true;
}	
</script>
</body>
</html>
 
