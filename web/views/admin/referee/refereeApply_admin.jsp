<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<title>심판 관리 페이지</title>
<style>
	.header {
		place-self:center;
	}
	
</style>
</head>
<body>
	<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include>
	<div class="wrapper_admin">
		<div class="header">
			<h1>심판 관리 페이지</h1>
		</div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
		<div class="table_area">
				<div class="matchDate"></div>
				<div>
					<table class="table table-striped custab">
						<thead>
							<tr>
								<th class="myTh">선택</th>
								<th class="myTh">이름</th>
								<th class="myTh">주소</th>
							</tr>
						</thead>
						<tr>
							<td><input type="checkbox" id="referee_check"/></td>
							<td>홍길동</td>
							<td>용인</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="referee_check"/></td>
							<td>홍길동</td>
							<td>용인</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="referee_check"/></td>
							<td>홍길동</td>
							<td>용인</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="referee_check"/></td>
							<td>홍길동</td>
							<td>용인</td>
						</tr>
					</table>

				</div>
			
		</div>
		<div class="midBottom"></div>
		<div class="footer"></div>
	</div>
</body>
</html>