
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="container">

	<form action="">

	 <div class="inner" width="">
	 
	 
	 <div class="hi">
		 <h4 >안녕하세요!</h4>
	 </div>
	 <div class="who" >
		 <h3 >최명수 심판님!</h3>
	 <br>
	 
	 <div class="input-tag" >
	
	    <div class="input-form">
		<label for="name">연락처</label>
		
		<div class="input-value">
		<span><c:out/></span>
		</div>		
		
	</div>
	
	<br>
	<div class="input-form">
		<label for="name">주민등록번호</label>
		<div class="input-value">
		<span><c:out/></span>
		</div>
	</div>
	<br>
	<br>
	<div class="input-form">
		<label for="name">주소</label>
		<div class="input-value">
		<span><c:out/></span>
		</div>
	</div>
	<br>
	<br>
	<div class="input-form">
		<label for="name">계좌</label>
		<div class="input-value">
		<span><c:out/></span>
		</div>
	</div>
	<br>
	<br>
	<div class="input-form">
		<label for="name">직업</label>
		<div class="input-value">
		<span><c:out/></span>
		</div>
	</div>
	<br>
	<br>
	<div class="input-form">
		<label for="name">급수</label>
		<div class="input-value">
		<span><c:out/></span>
		</div>
	</div>
	<br>
	<br>
	<div class="input-form">
		<label for="name">차량유무</label>
		<div class="input-value">
		<span><c:out/></span>
		</div>
	</div>

	 
	 
	 </div>
	 
	 
	 </div>
	 <br>
	<br>
	<button type="button" class="btn btn-primary">수정하기</button>	 
	 </div>
	
	</form>
	
	
</div>

</body>
</html>