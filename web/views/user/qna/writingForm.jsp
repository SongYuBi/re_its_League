
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	
	.area-box{
		
		width:1000px;
		height:400px;
	}
	.area-box input{
		border:3px solid lightgrey;
		 box-shadow:0 1px 2px #5e5d5d;
	}
	.area-box textarea{
		border:3px solid lightgrey;
	}
	.writing-Area{
		padding:80px;
		align:center;
		border: 2px solid lightgrey;
		margin-left:auto;
		margin-right:auto;
	}
	.outer{
		margin-left:90px;
		margin-right:90px;
	}
	
	#box1{
		text-align:center;
		 width:700px;
		 height:50px;
		 font-size:20px;
		 font-weight:bold;
		 border:2px solid lightgrey;
		 font-family: 'Gothic A1', sans-serif;
		 letter-spacing:5px;
		 box-shadow:0 1px 2px #5e5d5d;
	
	}table{
	border-collapse:seperate;
	border-spacing: 0 10px;
	}
	.footer { 
  width: 130%; 
     height: 100px;  
    background-color:#111B39; }
	
</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="outer">
	
	
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>

	  
	  
	  <div class="midTop">
	  	<br>
	  	 		<h2 font-weight="bold">QnA</h2>
	  	 
	  	 <div class="tableArea" align="center">
	  	 <br>
				 <div class="text-area">
	  	 	<form action="${ applicationScope.contextPath }" method="post">
				<table class="area-box">
					<tr>
						<tr></tr>
						<td colspan="6"><input type="text" size="" style="width:1071px; height:50px;" name="title" ></td>
						 <br>
					</tr>
			
					<tr>
						<tr></tr>
						<td colspan="3">
							<textarea rows="15" cols="150" name="content" style="resize:none;"></textarea>
						</td>
					</tr>
				</table>
				</div>
					<br>
				<div align="center">
					<button type="button" class="btn btn-secondary">취소하기</button>
					<button type="button" class="btn btn-secondary">등록하기</button>
				</div>	  	 	
	  	 	</form>
	  	 </div>
	  </div>
	 	 <br>		
	 	 <br>
	 <div class="footer">
	 	<img alt="" src="../../../resources/image/footer_jess.png" style="width:100%">
	 </div>
	</div>
</body>
</html>




















