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
  .input-value{
  		border:2px solid lightgrey;
  		height:45px;
  		width:400px;
  		border-radius:5px 5px;
  }
  input{
  	border:0px;
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
		 <h3 >최명수 심판님!</h3>
	 <br>
	 
	 <div class="input-tag" >
	
	<form action="${ applicationScope.contextPath }/" method="post" id="formId">
	
	    <div class="input-form">
		<label for="name">연락처</label>
		
		<div class="input-value">
		<!-- 서블릿의 넘긴 키값을 가져오는거  -->
		
		<input value="<c:out value='${ requestScope.pv.pfPhone }'/>" readonly id="phone">
		</div>		 
		
	</div>
	
	<br>
	<div class="input-form">
		<label for="name">주민등록번호</label>
		<div class="input-value">
		<span><c:out value="${ requestScope.pv.pfNumber }"/></span>
		</div>
	</div>
	<br>
	<br>
	<div class="input-form">
		<label for="name">주소</label>
		<div class="input-value">
		<span><c:out value="${ requestScope.pv.pfAddress }"/></span>
		</div>
	</div>
	<br>
	<br>
	</form>
	</div>
	
	<br>
	<br>
	 
	 </div>
	 
	 
	 </div>
	

	 <br>
	<br>
	<button type="button" class="btn btn-primary" id="goEdit" >수정하기</button>	 
	<button type="button"  class="btn btn-primary" id="goCancel">취소하기</button>
	<button type="button"  class="btn btn-primary" id="goShow">확인하기</button>
	 </div>
	
	
</div>
<script>

	$(function(){
		
		$("#goCancel").hide();
		$("#goShow").hide();
		
		
		$("#goEdit").click(function(){
			$(this).hide();
			$("#goCancel").show();
			$("#goShow").show();
			$("#phone").attr("readonly", false);
		});
			
			
		$("#goCancel").click(function(){
			$(this).hide();
			$("#goEdit").show();
			$("#goShow").hide();
			
		
		});
		
		$("#goShow").click(function(){
			$("#formId").submit();
		});
			
	});
	
</script>

</body>
</html>