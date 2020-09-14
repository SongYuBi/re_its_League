<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

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
					
				<button onclick="location.href='${applicationScope.contextPath}/views/user/event/thumbnailInsertForm.jsp'">작성하기</button>			
						 
			 
			 
			 
			 
			 
			 
			 
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