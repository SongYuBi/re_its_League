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
		<div class="head">
			<img src="${ applicationScope.contextPath }/resources/image/logo_jess.png">
		</div>
		<div class="header">${ sessionScope.loginUser.pfName }님 반갑습니다.</div>
		<div class="leftCol"></div>
		<div class	="rightCol"></div>
		<div class="midTop">
		<form id="joinForm" action="${ applicationScope.contextPath }/insertReferee.pf" method="post">
			<div class="referee_div">
				<p class="referee_p"><br>이름 : <input type="text" id="" name="refName" value="${ sessionScope.loginUser.pfName }">
					<input type="hidden" name="pfId" value=${ sessionScope.loginUser.pfId }>
				</p>
			</div>
			<div class="referee_div">
				<p class="referee_p">주소 : <br><input type="text" name="refAdd" value="${ sessionScope.loginUser.pfAddress }"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">연락처 : <br><input type="text" name="refPhone" value="${ sessionScope.loginUser.pfPhone }"></p>
			</div>
			<div class="referee_div">
				<p class="referee_p">주민등록번호 : <br><input type="text" name="refNumber" value="${ sessionScope.loginUser.pfNumber }"></p>
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
			
			var name = $('input[name=refName]').val();
			var address = $('input[name=refAdd]').val();
			var phone = $('input[name=refPhone]').val();
			var number = $('input[name=refNumber]').val();
			var job = $('input[name=refJob]').val();
			var account = $('input[name=refAccount]').val();
			var license = $('select[name=refLicense]').val();
			var getLicense = $('input[name=refGetLicense]').val();
			var endLicense = $('input[name=refEndLicense]').val();
			var rating = $('select[name=refRating]').val();
			
			var check = "true";
			
			if(name == "") {
				alert("이름을 입력해주세요");
				check ="false";
			}
			
			if(address == "") {
				alert("주소를 입력해주세요");
				check ="false";
			}
			
			if(phone == "") {
				alert("전화번호를 입력해주세요");
				check ="false";
			} 
			
			if(number == "") {
				alert("주민등록번호를 입력해주세요");
				check ="false";
			} 
			
			if(job == "") {
				alert("직업을 입력해주세요");
				check ="false";
			} 
			
			if(account == "") {
				alert("계좌번호를 입력해주세요");
				check ="false";
			} 
			if(getLicense == "") {
				alert("자격증 취득일을 입력해주세요");
				check ="false";
			} 
			if(endLicense == "") {
				alert("자격증 만료일 입력해주세요");
				check ="false";
			}
					
			if(check == "true") {			
				$("#joinForm").submit();
			} 
				
		};
		
		
	</script>
</body>
</html>