<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#default-div {
		display:grid;
		grid-template-columns: 1fr 3fr 1fr;
		grid-gap :10px;
		height:100%
		
	}
	
	@media (max-width: 100px){
		#default-div {
			display: block;
		}
	}
	

	
	.box1 { background: black;}
	.box2 { background: red;}
	.box3 { background: green;}
</style>
</head>
<body>
	
	<jsp:include page="/views/referee/common/adminSideBar.jsp"></jsp:include>
	
	<h1 align="center">defaultJsp</h1>
	<div id="default-div">
		<div class="box1">
			<h2>여백 1<br> 여긴 배너넣으면될거같슴돠</h2>
		</div>
		<div class="box2">
			<h2>여기에 작성하심됩니다.</h2>
		</div>
		<div class="box3">
			<h3>여백 3 <br> 여긴 배너넣으면될거같슴돠</h3>
		</div>
	</div>
	
</body>
</html>