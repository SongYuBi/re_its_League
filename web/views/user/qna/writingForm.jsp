
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
.button {
	 
	  border: none;
	  color: white;
	  padding: 10px 30px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 6px ;
	  transition-duration: 0.4s;
	  cursor: pointer;
	  border-radius:8px;
	 align:right;
	  margin-right:15px;
	
	}
	.button5 {
  background-color: white;
  color: black;
  border: 2.5px solid #111B39;
}

.button5:hover {
  background-color: #111B39;
  color: white;
}
	
	.area-box{
		
		width:1000px;
		height:400px;
	}
	/* .area-box input{
		border:3px solid lightgrey;
		 box-shadow:0 1px 2px #5e5d5d;
	}
	.area-box textarea{
		border:3px solid lightgrey;
	} */
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
    background-color:#111B39;
     }
    .tableArea{
    	width:100%;
    }
   	select{
   	 	width:130px;
   	 	padding: .8em .5em;
   	 	border:2px solid #111B39;
   	 	font-family:inherit;
   	 	border-radius:8px;
   	 	
   	}
   	
   	input{
   	border:2px solid #111B39;
   	border-radius:3px;
   	}
   	textarea{
   			border:2px solid #111B39;
   			margin-top:30px;
   	}
   	table, title, textarea{
   		padding: 5px;
   	}
   	table{
   		border-spacing: 15px;
   	}
   	textarea{
   		padding:-5px;
   		margin-top:15px;
   	}
   	.data-box tr{
   		line-height:30px;
     	}
  
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
	  	 		<h2 font-weight="bold" align="center">QnA</h2>
	  	 
	  	 <div class="tableArea" align="center">
	  	 <br>
				 <div class="text-area">
	  	 	<form action="/semi/insert.qna" method="post">
				<table class="area-box">
				
				<div class="select-box">
					<tr>
						<td>
							<select name="category">
								<option value="Q1">매치취소</option>
								<option value="Q2">매치진행</option>
								<option value="Q3">서비스</option>
								<option value="Q4">매칭신청</option>
								<option value="Q5">구장관련</option>
							</select>
						</td>
					
					</tr>
					</div>
				<br>
				
				 <div class="data-box">
					<tr>
						
						<td  id="div-box" colspan="6"><input type="text" size="" style="width:1071px; height:50px;" name="title" ></td>
						 <br>
					</tr>
			
					<tr>
						
						<td id="div-box" colspan="3">
							<textarea rows="15" cols="150" name="content" style="resize:none;"></textarea>
						</td>
					</tr>
					</div>
				</table>
				</div>
					<br>
				<div align="center">
					<button type="rset" class="button button5">취소하기</button>
					<button type="submit" class="button button5" onclick="signUp();">등록하기</button>
				</div>	  	 	
	  	 	</form>
	  	 </div>
	  	  <br>
	 <div class="footer">
	 	<img alt="" src="../../../resources/image/footer_jess.png" style="width:100%">
	 </div>
	  </div>
	 	 <br>		
	 	 <br>
	</div>
</body>
<script>
	function signUp(){
		window.confirm("등록되었습니다.");
	}
</script>
</html>




















