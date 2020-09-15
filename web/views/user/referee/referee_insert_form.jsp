<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../../resources/css/refereeInsertDefaultLayout.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
	<div class="wrapper">
		<div class="header">로고</div>
		<div class="leftCol"></div>
		<div class	="rightCol"></div>
		<div class="midTop">
		<form id="joinForm" action="${ applicationScope.contextPath }/insertReferee.pf" method="post">
			<div class="referee_div">
				<p class="referee_p">이름 : <br><input type="text" name="refName">
					<input type="hidden" name="pfId" value=${ sessionScope.loginUser.pfId }>
				</p>
			</div>
			<div class="referee_div">
				<p class="referee_p">주소 : <br><input type="text" name="refAdd"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">연락처 : <br><input type="text" name="refPhone"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">주민등록번호 : <br><input type="text" name="refNumber"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">현재 직업 : <br><input type="text" name="refJob"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">차량 유무 : <br><input type="text" name="refCar"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">계좌 번호 : <br><input type="text" name="refAccount"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">자격증 유무 : 
					<br>
					<select name="refLicense">
						<option value="Y">유</option>
						<option value="N">무</option>
					</select>
				</p>
			</div>
			<div class="referee_div">
				<p class="referee_p">자격증 취득일자 : <br><input type="date" name="refGetLicense"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">자격증 만료일 : <br><input type="date" name="refEndLicense"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">자격증 급수 : 
					<br>
					<select name="refRating">
						<option value="R1">R1</option>
						<option value="R2">R2</option>
						<option value="R3">R3</option>
						<option value="R4">R4</option>
						<option value="R5">R5</option>
					</select>
				</p>
			</div>
		</form>
				<button id="joinBtn" onclick="insert_ref()">지원하기</button>
				<button id="goMain" onclick="goMain()">취소하기</button>
		</div>
		<div class="midBottom"></div>
		<div class="footer"></div>
	</div>
	
	<script>
		function goMain() {
			location.href = "${applicationScope.contextPath}/index.jsp";
			console.log("취소하기")
		};
		
		function insert_ref() {
			$("#joinForm").submit();
		};
	</script>
</body>
</html>