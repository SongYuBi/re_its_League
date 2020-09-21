<%@page import="com.kh.semi.referee.model.vo.Referee_vo"%>
<%@page import="java.util.ArrayList"%>
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
	background:#212529;
}
	
</style>
</head>
<body>
	<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include>
	<div class="wrapper_admin" style="margin-top:-200px;">
		<div class="header" style="height:38%">
			<h1 style="color: #b1adad;
			    margin-top: revert;
			    margin-left: 30px;">심판 지원자 목록</h1>
		</div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop" style="margin-top:-100px;">
		<form action="${applicationScope.contextPath}/insertProfile.rf" method="post">
		<div class="table_area">
			<div class="matchDate"></div>
				<div>
					<table class="table table-striped custab">
						<thead>
							<tr>
								<th class="myTh">선택</th>
								<th class="myTh">이름</th>
								<th class="myTh">주소</th>
								<th class="myTh"></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="ref" items="${ requestScope.list }">
							<tr>
								<td><input type="checkBox" id="referee_check" name="check" value="${ref.refId }"></td>
								<td><c:out value="${ ref.refName }"></c:out></td>
								<td><c:out value="${ ref.refAddress }"></c:out></td>
								<td><input type="hidden" id="referee_check" name="pfId" value="${ref.pfId }"></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="applyBtn">
						<button type="submit" name="sts" value="Y">승인</button>
						<button type="submit" name="sts" value="N">취소</button>
					</div>
				</div>
			</div>
		</form>
		<div class="midBottom"></div>
		<div class="footer"></div>
	</div>
	</div>
	<script>
		function deleteApplyRef(){
			location.href="${ pageContext.request.contextPath }/selectApply.rf"
		};
	</script>
</body>
</html>