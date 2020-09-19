<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.hi h4{
		color:darkgray;
		
	}
	.who h3{
			font-weight:bolder;
	}

  .input-form{
  	border:2px solid lightgrey;
    height:45px;
  	width:400px;
  	border-radius:5px 5px;
  		
  }
  .male{
  	float:left;
  	margin-left:5px;
  }
  #pfName-head{
  	float:left;
  	border:0px;
  	width:98px;
  }
  .name-tag{
  	float:left;

  	
  }
  #pfPwd {
  	margin-left:14px;
  }
  .pf-num{
  	float:left;
  }
 #pfGender{
 	margin-left:14px;
 }
 input{
 	height:45px;
 	width:200px;
 	font-size:30pt;
 	border:2px solid  #111B39;
 	border-radius: 8px;
 	font-family:sans-serif;
 	padding:8px;
 }
 .pf-address{
 	width:400px;
 }
 #pfName-head{
 	width:108px;
 }
 .inner{
 	align:center;
 }

</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="container">


	 <div class="inner" width="">
	 
	 
	 <div class="hi">
		 <h4 >안녕하세요!</h4>
	 </div>
	 
	
	
	 <div class="who" >
		 
		 <h1><input value="<c:out value='${ requestScope.pv.pfName }'/>" id="pfName-head" name="pfName"><p>님!</p></h1>
	 <br>
	 
	 <div class="input-tag" >
	
	<form action="${ applicationScope.contextPath }/updatemyInfos.me" method="post" id="formId">
	
	<table class="info-table">
	
		<input type="hidden" value="<c:out value='${ requestScope.pv.pfId }'/>"  name="pfId">
		
		 <div class="name-tag">
			<label for="name">이름</label>
		<div class="input-value">
			<input value="<c:out value="${ requestScope.pv.pfName}"/>" readonly id="pfName" name="pfName">
		</div>
		</div>
	
			<label for="name">비밀번호</label>
		<div class="input-value">
			<input  type="password" value="<c:out value="${ requestScope.pv.pfPwd}"/>" readonly id="pfPwd" name="password">
		</div>
	

	   
			<br>
		
		<div class="pf-num">
			<label for="name">주민등록번호</label>
		<div class="input-value">
			<input value="<c:out value='${requestScope.pv.pfNumber}'/>" readonly id="pfNumber" name="pfNumber">
		</div>
		</div>
	
		<div class="show-gender">
		<label for="name">성별</label>
		<div class="input-value">
			<input value="<c:out value="${ requestScope.pv.pfGender}"/>" readonly id="pfGender" name="pfGender" readonly>
		</div>
		</div>
		<br>
		
		
		<div class="pf-address">
		
			<label for="name">주소</label>
		<div class="input-value">
			<input value="<c:out value="${ requestScope.pv.pfAddress}"/>" readonly id="pfAddress" name="pfAddress">
		</div>
		</div>
	
		
		

	<br> 

			<label for="name">핸드폰</label>
		<div class="input-value">
		<!-- 서블릿의 넘긴 키값을 가져오는거  -->
			<input value="<c:out value='${ requestScope.pv.pfPhone }'/>" readonly id="phone" name="pfPhone">
		</div>		 
	
		<br>
	
			<label for="name">이메일</label>
		<div class="input-value">
			<input value="<c:out value="${ requestScope.pv.pfEmail}"/>" readonly id="pfAddress" name="pfEmail">
		</div>
	
	
	
	<br>
	</table>
	</form>
	</div>
	

	<br>
	 
	 </div>
	 
	 
	 </div>
	

	
	<br>
	<button type="button" class="btn btn-primary" id="goEdit" >수정하기</button>	 
	<button type="button"  class="btn btn-primary" id="goCancel">취소하기</button>
	<button type="button"  class="btn btn-primary" id="goShow" onclick="signUp();">확인하기</button>
	 </div>
	
	
</div>
<script>

	$(function(){
		
		//최소하기 , 보여주기 버튼 처음부터 숨김으로 가는거 
		$("#goCancel").hide();
		$("#goShow").hide();
		
		$(".gender").hide();
		
		
		//수정하기버튼 눌렀을때 수정하기 버튼은 사라지고
		//취소하기 , 확인하기 버튼은 보여주게하는거 
		$("#goEdit").click(function(){
			$(this).hide();
			$("#goCancel").show();
			$("#goShow").show();
			$("#phone").attr("readonly", false);
			$("#pfNumber").attr("readonly", false);
			$("#pfAddress").attr("readonly",false); 
			//readonly는 false로 해제시키는거 , true는 설
			//attr은 2개의 인자를 쓰면 속성값을 요소에 부여하는거 
			/* $("#pfGender").hide(); */
			
		/* 	$(".gender").show();
			 */
			
			
		});
			
			
		//취소하기 버튼 눌렀을때 취소하기랑 보여지기는 사라지구 
		//수정하기 버튼은 보여지는거 
		$("#goCancel").click(function(){
			$(this).hide();
			$("#goEdit").show();
			$("#goShow").hide();
			
		
		});
		
		//이제 확인하기 버튼을 눌렀을때 폼태그에 id를 부여한 #formId를 가지고 그 action의 맵핑주소값으로 전송시킴! 
		$("#goShow").click(function(){
			$("#formId").submit();
		});
			
	});
	
</script>
<script>
			function signUp(){
				
				if(window.confirm("등록하시겠습니까?")){
				 	alert("등록되었습니다.");
				}
			}

</script>

</body>
</html>