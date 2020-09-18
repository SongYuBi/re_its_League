<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeMain.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeDefault.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<style>
	.outer {
		width:800px;
		height:500px;
		background:white;
		color:black;
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
	}
	table {
		border:1px solid white;
	}
	.table-area {
		width:450px;
		height:350px;
		margin:0 auto;
	}
</style>
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
		
	<%-- <c:if test="${ !empty sessionScope.loginUser and sessionScope.loginUser.userId.equals('admin') }"> --%>
		<div class="outer">
			<br>
			<div class="logo" align="center">
			<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
			</div>
		
		
			<h2 align="center">공지 사항 작성</h2>
			<div class="table-area">
				<form action="${ applicationScope.contextPath }/insert.no" method="post">
					<table align="center">
						<tr>
							<td>제목</td>
							<td colspan="3"><input type="text" size="50" name="title"></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>
								<input type="hidden" value="<c:out value="${ sessionScope.loginUser.uno }"/>" name="uno">
								<input type="text" name="writer" value="<c:out value="${ sessionScope.loginUser.nickName }"/>" readonly>
							</td>
							<td>작성일</td>
							<td><input type="date" name="date"></td>
						</tr>
						<tr>
							<td>내용</td>
						</tr>
						<tr>
							<td colspan="4">
								<textarea name="content" cols="60" rows="15" style="resize:none;"></textarea>
							</td>
						</tr>
					</table>
					<br>
					<div align="center">
						<button type="reset">취소하기</button>
						<button type="submit">등록하기</button>
					</div>
				</form>
			</div>
		</div>
		
		
		
	<%-- </c:if> --%>
	<%-- <c:if test="${ empty sessionScope.loginUser or !sessionScope.loginUser.userId.equals('admin') }">
		<c:set var="message" value="잘못된 경로로 접근하셨습니다." scope="request"/>
		<jsp:forward page="../common/errorPage.jsp"/>
	</c:if> --%>
</body>
</html>




























