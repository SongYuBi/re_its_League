<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.league-div{
		width:90%;
		height:700px;
		background:#F8F8F8;
		margin:0 auto;
		
		border:1px solid #2965FF; 	
	}
	
	.league-text1, .league-text2{
		display:block;
		float:left;
		font-size:40px;
		list-style:none;
		margin-top: 20px;
	}
	.insertInput{
		width:332px;	
	}
	select{
		width:332px;
		margin:10px;
		height:60px;
	}
	.nameTag{
		display:inline-block;
		width:280px;
	
		margin :10px;
	}
</style>
</head>
<body>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"/>

	<div style="width:100%;">
		<h1 style="margin-top:70px; margin-left:120px; font-weight:600; font-size:50px; margin-bottom:25px;">리그개설</h1>
		<hr style="width:1600px; border-bottom:1px solid black; margin-left:70px;">
		
		<!-- 리그입력  div-->
		<div class="league-div"> 
		<form action="" method="post">
			<div>						
               	<ul class="league-text1" style="margin-left:40px;">
               		<li class="liline"><span class="nameTag">리그명 :</span> <input  type="text" class="insertInput" id="leagueName" name="leagueName"></li>
               		<li class="liline"><span class="nameTag">주관 :</span> <input type="text" class="insertInput" id="lgHost" name="lgHost"></li>
               		<li class="liline"><span class="nameTag">심판1 : </span><select name="firstRef" id="firstRef" style="margin-left:11px;"></select></li>
               		<li class="liline"><span class="nameTag">심판2 : </span><select name="secondRef" id="secondRef" style="margin-left:11px;"></select></li>
               		<li class="liline"><span class="nameTag">심판3 : </span><select name="thirdRef" id="thirdRef" style="margin-left:11px;"></select></li>
               		<li class="liline"><span class="nameTag">최소 인원 수 : </span><input type="number" min="4" max="10" class="insertInput" id="minPlayer" name="minPlayer" style="margin-left:11px;"></li>
               		<li class="liline"><span class="nameTag">교체선수 : </span><input type="number" min="1" max="5" class="insertInput" id="subPlayer" name="subPlayer" style="margin-left:11px;"></li>
               	</ul>
               	<ul class="league-text2" style="margin-left:40px;">
               		<li class="liline"><span class="nameTag">리그 시작일 : </span><input type="date" id="startDate" name="startDate"></li>
               		<li class="liline"><span class="nameTag">리그 종료일 : </span><input type="date" id="endDate" name="endDate"></li>
               		<li class="liline"><span class="nameTag">경기장 : </span><select id="stadium" name="stadium"></select></li>
               		<li class="liline"><span class="nameTag">총원 : </span><input type="number"  min ="8" max="10" class="insertInput" id="player" name="player"></li>
               		<li class="liline"><span class="nameTag">선발 인원 수 : </span><input type="number" min="4" max="6" class="insertInput" id="playerNum" name="playerNum"></li>
               		<li class="liline"><span class="nameTag">지역 선택 :</span><select id="area" name="area"></select></li>
               	</ul>
            	</div>
            </form>
			</div>
			
		</div>
	</div>	
</body>
</html>