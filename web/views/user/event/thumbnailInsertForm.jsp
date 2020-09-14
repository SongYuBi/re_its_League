<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.outer {
		width:1000px;
		height:650px;
		background:black;
		color:white;
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
		
	}
	table {
		border:1px solid white;
	}
	.btn-area {
		width:150px;
		margin: 0 auto;
		}
	#titleImgArea {
		width: 350px;
		height:200px;
		border:2px dashed darkgray;
		text-align:center;
		display:table-cell;
		vertical-align:middle;
	}
	#titleImgArea:hover, #contentImgArea1:hover,
	#contentImgArea2:hover, #contentImgArea3:hover {
		cursor:pointer;
	}	
	#contentImgArea1, #contentImgArea2, #contentImgArea3 {
		width:150px;
		height:100px;
		border:2px dashed darkgray;
		text-align:center;
		display:table-cell;
		vertical-align:middle;
		
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
		<br>
		<h2 align="center">사진게시판 작성</h2>
		<form action="" method="">
			<div class="insert-area">
				<table align="center">
					<tr>
						<td width="100px">제목</td>
						<td colspan="3"><input type="text" size="45" name="title"></td>		
					</tr>
					<tr>
						<td>대표이미지</td>
						<td colspan="3">
							<div id="titleImagArea">
								<img id="titleImg" width="350" height="100">
							</div>
						</td>					
					</tr>
					<tr>
						<td>내용이미지</td>
						<td>
							<div id="contentImgArea1">
								<img id="contentImg1" width="120" height="100">
							</div>
						</td>	
						<td>
							<div id="contentImgArea2">
								<img id="contentImg2" width="120" height="100">
							</div>
						</td>	
						<td>
							<div id="contentImgArea3">
								<img id="contentImg3" width="120" height="100">
							</div>
						</td>	
					</tr>
					<tr>
						<td width="100px">사진 메모</td>
						<td colspan="3">
							<textarea name="content" rows="5" cols="50" style="resize:none;"></textarea>
						</td>
					</tr>
				</table>
			</div>
			<br>
			<div class="btn-area">
				<button type="reset">취소하기</button>
				<button type="submit">작성완료</button>
			</div>
		</form>
	</div>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="잘못된 경로로 접근하셨습니다." scope="request"/>
		<jsp:forward page="/views/common/errorPage.jsp"/>
	</c:if>
	

</body>
</html>