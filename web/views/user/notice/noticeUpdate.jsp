<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.outer{
		width:800px;
		height:500px;
		background:white;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	table {
		border:1px solid white;
	}

	.table-area {
		width:450px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>
	
	
	<%-- <c:if test="${ !empty sessionScope.loginUser and sessionScope.loginUser.userId.equals('admin') }"> --%>
	<div class="outer">
		<br>
		<h2 align="center">공지 사항 수정</h2>
		<div class="table-area">
			<form id="updateForm" method="post">
				<table>
					<tr>
						<td>제목 </td>
						<td colspan="3">
							<input type="text" size="50" name="title" value="<c:out value="${ requestScope.notice.nTitle }"/>">
							<input type="hidden" name="nno" value="<c:out value="${ requestScope.notice.nno }"/>">
						</td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" value="<c:out value="${ requestScope.notice.nickName }"/>" name="nickName" readonly>
						</td>
						<td>작성일</td>
						<td><input type="date" name="date" value="<c:out value="${ requestScope.notice.nDate }"/>"></td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" style="resize:none;"><c:out value="${ requestScope.notice.nContent }"/></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button onclick="complet();">작성완료</button>
					<button onclick="deleteNotice();">삭제하기</button>
				</div>
				<script>
					function complet(){
						$("#updateForm").attr("action","${ applicationScope.contextPath }/update.no");
						
					}
					
					function deleteNotice(){
						$("#updateForm").attr("action","${ applicationScope.contextPath }/delete.no");
					}
				
				</script>
			</form>
			
		</div>
	</div>
	<%-- </c:if> --%>
	<%-- <c:if test="${ empty sessionScope.loginUser or !sessionScope.loginUser.userId.equals('admin') }">
		<c:set var="msg" value="잘못된 경로로 접근하셨습니다." scope="request"/>
		<jsp:forward page="../common/errorPage.jsp"/>
	</c:if> --%>
</body>
</html>