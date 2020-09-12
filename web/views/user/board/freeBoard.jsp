<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#default-div {
	display: grid;
	grid-template-columns: 1fr 3fr 1fr;
	grid-gap: 10px;
	height: 100% 
}

@media ( max-width : 100px) {
	#default-div {
		display: block;
	}
}

<
style>#headWrapper {
	width: 100%;
}

#bar {
	margin-left: 10px;
	margin-right: 10px;
}

.btns {
	position: static;
	margin-left: 1400px;
	width: 300px;
}

.loginBtns {
	float: left;
}

#footer {
	width: 100%;
	height: 500px;
	background-color: #111B39;
}

.maintext {
	float: left;
}

.wrap {
	display: inline-block;
}

select {
	width: 200px;
	padding: .8em .5em;
	border: 1px solid #999;
	font-family: inherit;
	margin-top: 10px;
}
.wrap {

position:static;
}
.checkbox-container{
float:left;
}
</style>
</head>
<header> 
<br>
<br>
<div id="headWrapper" align="center">
	<div id="logo">
		<img src="/semi/resources/image/chu/logo.png" width="400px"
			height="150px">
	</div>
	<div class="btns"
		style="font-size: 20px; color: gray; font-weight: 600;">
		<div class="loginBtns" id="loginBtn" onclick="login();">
			<label>로그인 </label>
		</div>
		<div class="loginBtns" id="bar">
			<label>|</label>
		</div>
		<div class="loginBtns" id="memberJoinBtn" onclick="memberJoin();">
			<label> 회원가입</label>
		</div>
	</div>
</div>
<br clear="both">
</header>

<hr style="height: 3px; background: black;">
<body>
	<jsp:include page="../../common/sideBar.jsp"></jsp:include>
	<h1 align="center"></h1>
	<div id="default-div">
		<div class="box1">
			<h2></h2>
		</div>
		<div class="box2">
			<body>
				<div class="menu" align="center"
					style="font-weight: 900; font-size: 50px; margin: 0 auto; margin-top: 40px">자유게시판</div>
				<br clear="both">

			

				<div class="wrap" style="margin-left:1100px;">
					<div class="checkbox-container" style="margin-top:7px;">
						<input type="checkbox" id="a"> <label for="a"
							style="font-size: 20px;">공지 숨기기</label>
					</div>
					<select style="margin-left:20px;">
						<option>10개씩 보기</option>
						<option>15개씩 보기</option>
						<option>20개씩 보기</option>
					</select>
				</div>
				<br clear="both">
				<hr width="1440px"
					style="margin-top: 19px; height: 1px; background: gray;">
				<div class="container" style="width:1440px;" align="center">
					<table class="table table-hover">
						<thead>
							<tr>
								<th style="width:200px;">글번호</th>
								<th style="width:800px;">제목</th>
								<th style="width:200px;">작성자</th>
								<th style="width:300px;">날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>00003</td>
								<td>다들취준이신가요?</td>
								<td>인생이쓰다</td>
								<td>2020.09.05</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>00002</td>
								<td>가입인사입니다.</td>
								<td>와이시리어스</td>
								<td>2020.09.05</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>00001</td>
								<td>가입인사입니다.</td>
								<td>인생이쓰다</td>
								<td>2020.09.05</td>
							</tr>
						</tbody>
					</table>
				
				
					<hr style="margin-top:-15px;">
					<a class="btn btn-default pull-right" href="post00001.html" >글쓰기</a>

					<div class="text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>
			</body>
			<br> <br> <br>
			<footer>
			<div id="footer" align="center">
				<img src="/semi/resources/image/chu/footer.png" width="1500px"
					height="500px">
			</div>
			</footer>
		</div>
		<div class="box3">
			<h3>
				<br>
			</h3>
		</div>
	</div>

</body>
</html>