<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/views/referee/common/adminSideBar.jsp"></jsp:include>
	<div class="wrapper" style="margin-left:225px">
	<div class="header"><h1>심판 메인 페이지</h1></div>
	<div class="leftCol"></div>
	<div class="rightCol"></div>
	<div class="midTop"></div>
	<div class="midBottom"></div>
	<div class="footer"></div>
	</div>
</body>
</html>