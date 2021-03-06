<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script>
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
   </script>
   <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
 
<title>Insert title here</title>
<style>
#default-div {
	display: grid;
	grid-template-columns: 1fr 3fr 1fr;
	grid-gap: 10px;
	height: 100%
}
 
@media ( max-width : 100px) {
	#default-div {
		display: block;
	}
}

<
style>#headWrapper {
	width: 100%;
}

#bar {
	margin-left: 10px;
	margin-right: 10px;
}

.btns {
	position: static;
	margin-left: 1400px;
	width: 300px;
}

.loginBtns {
	float: left;
}

#footer {
	width: 100%;
	height: 500px;
	background-color: #111B39;
}

.maintext {
	float: left;
}

.wrap {
	display: inline-block;
}

select {
	width: 200px;
	padding: .8em .5em;
	border: 1px solid #999;
	font-family: inherit;
	margin-top: 10px;
}

.wrap {
	position: static;
}

.checkbox-container {
	float: left;
}
</style>
</head>

<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="../../common/sideBar.jsp"></jsp:include>
	<h1 align="center"></h1>
	<div id="default-div">
		<div class="box1">
			<h2></h2>
		</div>
		<div class="box2">
			<body>
				<div class="menu" align="center"
					style="font-weight: 900; font-size: 50px; margin: 0 auto; margin-top: 40px">자유게시판</div>
				<br clear="both">
				
				<hr width="1440px"
					style="margin-top: 19px; height: 1px; background: gray;">
					
				<div class="container" style="width: 1440px;" align="center">
					<table class="table table-hover" id="listArea">

						<tr>
							<th style="width: 200px;">글번호</th>
							<th style="width: 800px;">제목</th>
							<th style="width: 200px;">작성자</th>
							<th style="width: 300px;">날짜</th>
						</tr>
						<c:forEach var="b" items="${ requestScope.list }">
							<tr>
							<input type="hidden" value="<c:out value="${ b.bid }"/>"> 
								<td><c:out value="${ b.bNo }" /></td>
								<td><c:out value="${ b.bTitle }" /></td>
								<td><c:out value="${ b.pfName }" /></td>
								<td><c:out value="${ b.bDate }" /></td>
							</tr>
						</c:forEach>


					</table>

					<hr style="margin-top: -15px;">
					<a class="btn btn-default pull-right" href="${pageContext.request.contextPath }/views/user/board/freeBoardWritingForm.jsp">글쓰기</a>


	<div class="pagination" align="center">
         <button onclick="location.href='${applicationScope.contextPath}/selectList.bo?currentPage=1'"><<</button>
         
         <c:if test="${ requestScope.pi.currentPage <= 1 }">
            <button disabled><</button>
         </c:if>
         <c:if test="${ requestScope.pi.currentPage > 1 }">
            <button onclick="location.href='${applicationScope.contextPath}/selectList.bo?currentPage=<c:out value="${ requestScope.pi.currentPage - 1 }"/>'"><</button>
         </c:if>
         
         <c:forEach var="p" begin="${ requestScope.pi.startPage }" end="${ requestScope.pi.endPage }" step="1">
            <c:if test="${ requestScope.pi.currentPage eq p }">
               <button disabled><c:out value="${ p }"/></button>
            </c:if>
            <c:if test="${ requestScope.pi.currentPage ne p }">
               <button onclick="location.href='${applicationScope.contextPath}/selectList.bo?currentPage=<c:out value="${ p }"/>'"><c:out value="${ p }"/></button>
            </c:if>
         </c:forEach>
         
         
         
         <c:if test="${ requestScope.pi.currentPage >= requestScope.pi.maxPage }">
            <button disabled>></button>
         </c:if>
         <c:if test="${ requestScope.pi.currentPage < requestScope.pi.maxPage }">
            <button onclick="location.href='${applicationScope.contextPath}/selectList.bo?currentPage=<c:out value="${ requestScope.pi.currentPage + 1 }"/>'">></button>
         </c:if>
         
         <button onclick="location.href='${applicationScope.contextPath}/selectList.bo?currentPage=<c:out value="${ requestScope.pi.maxPage }"/>'">>></button>
      </div>
					<!-- <div class="text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div> -->
				</div>
			</body>
			<br> <br> <br>
			<footer>
			<div id="footer" align="center">
				<img src="/semi/resources/image/chu/footer.png" width="1500px"
					height="500px">
			</div>
			</footer>
		</div>
		<div class="box3">
			<h3>
				<br>
			</h3>
		</div>
	</div>
<script>
$("#listArea td").mouseenter(function(){
			$(this).parent().css({"background":"darkgrey","cursor":"pointer"});	
		}).mouseout(function(){
			$(this).parent().css({"background":"white"});
		}).click(function(){
			var num = $(this).parent().children("input").val();
			console.log(num);
			
         location.href="${applicationScope.contextPath}/selectOne.bo?num=" + num;
      });
</script>
</body>
</html>