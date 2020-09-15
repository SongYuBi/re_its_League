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
     <input type="text-area" style="width:1400px; height:200px;">
     <button type="submit" style="width: 150px; height:200px;">댓글 달기</button>
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

</body>
</html>
    <!--  <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click",function(e){
                e.preventDefault();
                fn_openBoardList();
            })
            $("#modify").on("click",function(e){
                e.preventDefault();
                fn_openBoardModify();
            })
        })
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do'/>");
            comSubmit.submit();
        }
        function fn_openBoardModify(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardModify.do'/>");
            comSubmit.addParam("IDX",idx);
            comSubmit.submit();
        }
    </script>  -->
