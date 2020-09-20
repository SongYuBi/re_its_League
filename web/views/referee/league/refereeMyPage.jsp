<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
	
<title>Insert title here</title>
</head>
<style>
.header {
	background-color: white;
}

.line_myPage {
	border-top: 5px solid #eee;
}

.line_myPage_double {
	border-top: 25px solid #eee;
}

.first_form > div {
	margin:10px;
}

.first_form > div > p{
	font-weight:600;
	
}

input.underline {
	border-left-width:0;
	border-right-width:0;
	border-top-width:0;
	border-bottom-width:1;
	width:35%;
}
</style>
<body>
	<jsp:include
		page="/views/referee/common/sideBar.jsp"></jsp:include>

	<div class="wrapper_admin">
		<div class="header">
			<h2>
				안녕하세요<br>
				<span style="font-weight: 700;">최명수</span>심판님
			</h2>
		</div>

		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
			<hr class="line_myPage">
			<form class="first_form">
				<div>
					<p>연락처</p>
				</div>
				<div>
					<input class="underline" type="text">
				</div>
				<div>
					<p>주민등록번호</p>
				</div>
				<div>
					<input class="underline" type="text">
				</div>
				<div>
					<p>주소</p>
				</div>
				<div>
					<input class="underline" type="text">
				</div>
				<div>
					<p>계좌</p>
				</div>
				<div>
					<input class="underline" type="text">
				</div>
				<hr class="line_myPage_double">
				<div>
					<p>직업</p>
					<input class="underline" type="text">
				</div>
				<div>
					<p>급수</p>
					<input class="underline" type="text">
				</div>
				<div>
					<p>차량유무</p>
					<input class="underline" type="text">
				</div>
			</form>

		</div>
		<div class="midBottom"></div>
		<div class="footer"></div>
	</div>
</body>
</html>