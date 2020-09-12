<jsp:directive.page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#check_box {
   width: 30px;
   height: 30px;
}

#agree {
   float: left;
}

#btn {
   width: 275px;
   height: 50px;
   color: white;
}

.header {
   grid-area: header;
   background-color: LightSeaGreen;
}

.leftCol {
   grid-area: leftCol;
   background-color: orange;
}

.rightCol {
   grid-area: rightCol;
   background-color: lightblue;
}

.midTop {
   grid-area: midTop;
   
   text-align:center;
      margin: 0 auto;
}

.midBottom {
   grid-area: midBottom;
   
   text-align:center;
      margin: 0 auto;
}

.footer {
   grid-area: footer;
   background-color: lightgreen;
}

.wrapper {
   display: grid;
   grid-template-columns: 1fr 4fr 4fr 1fr;
   /* grid-template-rows: 50px 100px 100px 30px; */
   grid-auto-rows: minmax(100px, auto);
   grid-template-areas: "header header header header"
      "leftCol midTop midTop rightCol"
      "leftCol midBottom midBottom rightCol" "footer footer footer footer";
   grid-gap: 5px;
}
</style>
</head>
<body>

	<jsp:include
		page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>

	<div class="wrapper">
		<div class="header">Header</div>
		<div class="leftCol">LeftCol</div>
		<div class="rightCol">이런곳에 수정ㅎ면되</div>
		<div class="midTop">
			

			<div style="text-align:center;">
				<input class="w3-check" id="check_box" type="checkbox" name="check_all" onclick="all_click();">
				<label>잇츠리그 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관,프로모션 정보 수신에 모두
					동의 합니다.</label>
			</div>
			<div>
				<input class="w3-check" style="float: left" id="check_box" name="check1"
					type="checkbox">
				<label id="agree">잇츠리그 이용약관 동의(필수)</label>
				<br>
				<br>
				<br>
				<textarea rows="5" cols="60" readonly>여러분 환영합니다.</textarea>
			</div>
			<div>
				<input class="w3-check" style="float: left" id="check_box" name="check2"
					type="checkbox">
				<label id="agree">개인정보 수집 및 이용 동의(필수)</label>
				<br>
				<br>
				<br>
				<textarea rows="5" cols="60" readonly>여러분 환영합니다.<br> </textarea>
			</div>
			<div>
				<input class="w3-check" style="float: left" id="check_box" name="check3"
					type="checkbox">
				<label id="agree">위치정보 이용약관 동의(필수)</label>
				<br>
				<br>
				<br>
				<textarea rows="5" cols="60" readonly>여러분 환영합니다.<br> </textarea>
			</div>
			<div>
				<input class="w3-check" style="float: left" id="check_box" name="check4"
					type="checkbox">
				<label id="agree">프로모션 정보 수신 동의(필수)</label>
				<br>
				<br>
				<br>
				<p>
					잇츠리그에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(앱 알림 또는 문자),<br> 이메일로 받아보실 수
					있습니다. 일부 서비스(별도 회원 체계로 운영하거나 잇츠리그<br> 가입 이후 추가 가입하여 이용하는 서비스
					등)의 경우, 개별 서비스에 대해 별도 수신<br> 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로
					안내하고 동의를 받습니다
				</p>
			</div>

		</div>
		<div class="midBottom">
			<div>
				<button class="w3-btn w3-gray" style="color: white;" id="btn" onclick="backpage();">취소</button>
				<button class="w3-btn w3-red" id="btn" onclick="nextpage();">확인</button>
			</div>
		</div>
		<div class="footer">Footer</div>
	</div>
	
<script type="text/javascript">
	function nextpage(){
		var check1 = 0;
		var check2 = 0;
		var check3 = 0;
		var check4 = 0;
		
		if($("input:checkbox[name=check1]").is(":checked") == true){
			check1 = 1;
		}
		if($("input:checkbox[name=check2]").is(":checked") == true){
			check2 = 1;
		}
		if($("input:checkbox[name=check3]").is(":checked") == true){
			check3 = 1;
		}
		if($("input:checkbox[name=check4]").is(":checked") == true){
			check4 = 1;
		}
		
		if((check1+check2+check3+check4) == 4){
			location.href = 'insert_member_view.jsp';
			check1= 0;
			check2= 0;
			check3= 0;
			check4= 0;
			
		}else{
			alert("모든 약관에 동의 해주세요.");
		}
		
	}
	
	function backpage(){
		location.href = '../mainPage/mainPage.jsp';
	}
	
	function all_click(){
		
		if($("input:checkbox[name=check4]").is(":checked") == true){
			$("input:checkbox[name=check1]").prop("checked",false);
			$("input:checkbox[name=check2]").prop("checked",false);
			$("input:checkbox[name=check3]").prop("checked",false);
			$("input:checkbox[name=check4]").prop("checked",false);
		}else{
			$("input:checkbox[name=check1]").prop("checked",true);
			$("input:checkbox[name=check2]").prop("checked",true);
			$("input:checkbox[name=check3]").prop("checked",true);
			$("input:checkbox[name=check4]").prop("checked",true);
		}
		
	}
	


</script>

</body>

</html>