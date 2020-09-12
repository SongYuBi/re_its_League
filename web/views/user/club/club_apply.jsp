<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	#div_1{
		width:400px;
		height:600px;
	
	}
	.header{
   grid-area: header;
   background-color: LightSeaGreen ;
 }
  
 .leftCol{
   grid-area: leftCol;
   background-color: orange;
 }
  
 .rightCol{
   grid-area: rightCol;
   background-color: lightblue;
 }
  
  .midTop{
   grid-area: midTop;
 
   text-align:center;
   margin: 0 auto;
 }
  
 .midBottom{
   grid-area: midBottom;
  
   text-align:center;
   
 }
 #club_apply{
 	width:400px;
 }
  
 .footer{
   grid-area: footer;
   background-color: lightgreen;
 }
 .wrapper {
  display: grid;
  grid-template-columns: 1fr 4fr 4fr 1fr;
  /* grid-template-rows: 50px 100px 100px 30px; */
  grid-auto-rows: minmax(100px, auto);
  grid-template-areas:
  "header header header header"
  "leftCol midTop midTop rightCol"
  "leftCol midBottom midBottom rightCol"
  "footer footer footer footer";
  grid-gap: 5px;
 }
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="wrapper">
	  <div class="header">Header</div>
	  <div class="leftCol">LeftCol</div>
	  <div class="rightCol">이런곳에 수정ㅎ면되</div>
	  <div class="midTop">
	  <h2>구단 신청 페이지</h2>
	  <div id="div_1">
<label style="float:left;">구단명</label>
<input type="text" id="club_name" name="club_name" class="w3-input w3-border w3-border-black">
<br>
<label style="float:left;">지역 선택</label>
<select name="fruit" class="w3-input w3-border">
	<option value="defualt" selected="selected" >지역을 선택해주세요.</option>
	<option value="서울">서울</option>
	<option value="인천">인천</option>
	<option value="대구">대구</option>
</select>
<br>
<label style="float:left;">소개 멘트</label><br><br>
<textarea cols="52" rows="10" placeholder="구단을 소개하는 멘트를 입력해주세요." style="resize:none;"></textarea>
	</div>
	  </div>
	  <div class="midBottom"><button class="w3-btn w3-red" id="club_apply">구단 신청</button></div>
	  <div class="footer">Footer</div>
	</div>
</body>
</html>