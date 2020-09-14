<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css">
 
<style>
	#default-div {
		display:grid;
		grid-template-columns: 1fr 3fr 1fr;
		grid-gap :10px;
		height:100%
		 
	}
	
	@media (max-width: 100px){
		#default-div {
			display: block;
		}
	}
   #headWrapper {
      width:100%;
   }
#bar {
  margin-left:10px;
  margin-right:10px;
}
.btns {
   position:static;
   margin-left:1400px;
   width:300px;
}
.loginBtns {
   float:left;
}
.menu{
  float:left;
}
#logo {
  margin: 0 auto;
  padding:0;
}
.eventtext{
  width:70%;
  height:190px;

}
#img1{
   width: 1440px;
   height: 650px;
}
.maintext {
   float:left;
}
#announce {
   background-color:#13264B;
   color: white;
   border-radius: 100px;
   
}
.nav {
   display:inline-block;

}
#footer {
   width: 100%;
   height: 500px;
   background-color:#111B39;
}
.btn {
	background:navy;
	color:white;
	width:100px;
}
	
</style>
</head>
<header>
      <br><br>
      <div id="headWrapper" align="center">
         <div id="logo">
            <img  src="/semi/resources/image/chu/logo.png" width="400px" height="150px">  
         </div>     
          <div class="btns" style="font-size:20px; color: gray; font-weight: 600;">
            <div class= "loginBtns" id="loginBtn" onclick="login();"><label>로그인 </label> </div>
            <div class= "loginBtns" id="bar"><label>|</label></div>
            <div class= "loginBtns" id="memberJoinBtn" onclick="memberJoin();"><label> 회원가입</label> </div>
         </div>
      </div>
      <br clear="both"> 
    </header>
    
    <br><br>

    <hr style="height: 3px; background: black;">
<body>
	<jsp:include page="../../common/sideBar.jsp"></jsp:include>
	<div id="default-div">
		<div class="box1">
		
		</div>
		<div class="box2">
		 <br><br><br>
	<div align="center">

		<div class="row">

			<form id="insertForm" method="post" action="${ applicationScope.contextPath }/insert2.bo">

				<table class="table table-striped"

					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th 
								style="background-color: #eeeeee; text-align: center; height:60px; font-size: 25px;">자유 게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="title" style="width:100%; height: 40px; font-size: 20px;" maxlength="50"/></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="width:100%; height: 650px; font-size: 20px;"></textarea></td>

						</tr>

					</tbody>

				</table>	
                <br>
                <br>
                <div align="center">
					<button type="button" class="btn" onclick="goBack();">취소하기</button>
					<button type="button" class="btn" onclick="submitForm();" >등록하기</button>
				</div>	  
			</form>
 
		</div>

	</div>
		
		
		
    </body>
    <br><br><br>
    <footer>
      <div id="footer" align="center">
         <img src="/semi/resources/image/chu/footer.png" width="1500px" height="500px">
       </div>
    </footer>
		</div>
		<div class="box3">
			
		</div>
	</div>
	<script>
	function submitForm(){
 		$("#insertForm").submit();
		}
	function goBack(){
		location.href="javascript:history.back()"
		}
	</script>
</body>
</html>