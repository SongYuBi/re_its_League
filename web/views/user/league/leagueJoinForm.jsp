<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.lgBtn {
			background:#111B39;
			color:white;
			width:300px; 
	 		height:60px; 
	 		font-size:42px;
	 		border-radius:15px;
		}
	.refundtext{
		font-size:30px;
		padding:10px;
		float:left;
		margin-left:20px;
		margin-top:30px;
		font-weight:600;
	}	
	
	.lis{
	font-size:30px;
	}
	
	.textspan{
	
	}
	.selectSt{
		float:right;
	 	margin-top:75px;
	 	margin-right:100px; 
	 	width:250px; 
	 	height:40px; 
	 	font-size:20px; 
	 	text-align-last:center;
	 	box-shadow:0px 0px 4px 0px gray;
	 	border:1px solid white;
	}
	
	.league-name{
		font-weight:600;
		font-size:60px;
		margin-top:50px;
		display:block;
		float:left;
		margin-left:40px;
	}
	.league-text1, .league-text2{
		display:block;
		float:left;
		font-size:25px;
		list-style:none;
		margin-top: 20px;
	}
	.liline{
		border-bottom:2px double black;
		margin:20px;
		font-weight:550;
	}
	ul li span{
		margin:3px;
	}
	ol li span{
		margin:5px;
	}
	
</style>
</head>
<body>
	<jsp:include page="/views/common/sideBar.jsp"/>
	
	<div class="wrapper">
	<div class="head"><div align="right">
			<c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div id="myBtn">로그인</div></li>
					<li style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div><a href="${ application.contextPath }/semi/views/user/login/insert_member.jsp">회원가입</a></div></li>

				</ul>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
			<div id="userInfo">
				<label><c:out value="${sessionScope.loginUser.pfName }" />
					님의 방문을 환영합니다.</label>
				<div class="btn" align="right">
					<div id="changeInfo" onclick="updateMember();">정보수정</div>
					<div id="logoutBtn" onclick="logout();">로그아웃</div>
				</div>
			</div>
		</c:if>
				<div align="center">
					<img src="resources/image/chu/logo.png" style="cursor: pointer" onclick="reHome();">
				</div>
			</div>
	</div>
	  <div class="header" style="margin-top:100px;">
	  	<span style="font-size:40px; font-weight:bold;">리그신청</span>
	  </div>
	  
	  <div class="midTop">
	  	<div style="border:1px solid #2965FF;width:100%; background:#F8F8F8; height:200px;">
	  		<span class="league-name">${requestScope.list[0].leagueName }</span>
	  		<select class="selectSt" onchange="selectLeague(this);">
	  			<c:forEach var="list" items="${requestScope.list }">
	  				<option value="${list.leagueId }">${list.leagueId }</option>
	  			</c:forEach>
	  		</select>		
	  	</div>
	  	
	  	<div class="container-my">
        <div class="table-wrapper">
            <div class="table-title" style="border:1px solid #2965FF;width:100%; background:#F8F8F8; height:350px; margin-top:50px;">
               	<ul class="league-text1" style="margin-left:40px;">
               		<li class="liline">리그명 : <span>${requestScope.list[0].leagueName }</span></li>
               		<li class="liline">주관 : <span>${requestScope.list[0].leagueHost }</span></li>
               		<li class="liline">심판 : <span>${requestScope.list[0].leagueRefFid}, ${requestScope.list[0].leagueRefSid }, ${requestScope.list[0].leagueRefTid }</span></li>
               		<li class="liline">최소 인원 수 : <span>${requestScope.list[0].leagueMinplayer }</span></li>
               		<li class="liline">교체선수 : <span>${requestScope.list[0].leagueSubPlayer }</span></li>
               	</ul>
               	<ul class="league-text2" style="margin-left:40px;">
               		<li class="liline">리그 기간 : <span>${requestScope.list[0].leagueSDate }</span>&nbsp;~ &nbsp;<span>${requestScope.list[0].leagueEDate }</span></li>
               		<li class="liline">경기장 : <span>${requestScope.list[0].leagueStdFName }, ${requestScope.list[0].leagueStdSName }</span></li>
               		<li class="liline">총원 : <span>${requestScope.list[0].leagueMaxPlayer }</span></li>
               		<li class="liline">선발 인원 수 : <span>${requestScope.list[0].leaguePlayer }</span></li>
               	</ul>
            </div>
                
        </div>
     </div>
	  
	  </div>
	  <div class="midBottom">
	 	 <div style="border:1px solid #2965FF;width:100%; background:#F8F8F8; height:340px; margin-top:60px;">
	 	 	<p class="refundtext">환급 규정</p>
	 	 	<ol style="clear:both">
	 	 		<li class="lis"><span class="textspan">신청 후 일주일 이내 취소 시 : 전액환급</span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작일 30일 전 취소 시 : 80%</span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작일 14일 전 취소 시 : 50%</span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작일 7일 전 취소 시 : 20% </span></li>
	 	 		<li class="lis"><span class="textspan">리그 시작 후 : 환불불가</span></li>
	 	 	</ol>
	  	</div>
	  	<button class="lgBtn" style="margin-left:480px; margin-top:50px;" onclick="leagueApply();">리그신청</button>
	  	<c:if test="${sessionScope.loginUser.pfGrade  eq '구단주' }">
	  	</c:if>
	 	<c:if test="${sessionScope.loginUser.pfGrade ne '구단주' }">
	 	<div style="height:250px;">
	 		
	 	</div>
	 	</c:if>
	  </div>
	  <div class="footer" align="center" style="margin-top:20px; height:300px;">
	  	<img src="${applicationScope.contextPath }/resources/image/chu/footer.png" width=100%;>
	  </div>
	</div>
	
	
	
	
	<script type="text/javascript">
	
		function selectLeague(val) {
			console.log(val);
			var text = "";
			var txt = "";
			var i = $(val).children();
			console.log(i);
			for(var j = 0; j < i.length; j++) {
				
				if(i[j].selected){
					text = i[j].text;
					console.log("text  : "  + text);
					txt = text.split('(');
					console.log(txt);
				}
			}
			
			$.ajax({
				url : "${applicationScope.contextPath}/selectLeague.lg",
				data : {leagueName : txt[0]},
				type: "get",
				success : function(data) {
					console.log(data);
					var lgHost = data.lgHost;
					var lgMaxPlayer = data.lgMaxPlayer;
					var lgMinPlayer = data.lgMinPlayer;
					var lgName = data.lgName;
					var lgPlayer = data.lgPlayer;
					var lgSDate = data.lgSDate;
					var lgEDate = data.lgEDate;
					var lgSubPlayer =data.lgSubPlayer;
					
					var stadium = "";
					stadium = data.stdFName +", "+ data.stdSName;
			
					var referee = "";
					referee = data.refFid + ", " + data.refSid + ", " + data.refTid;
					$(".league-name").text(lgName);
					
					$(".league-text1").children().eq(0).children("span").text(lgName);
					$(".league-text1").children().eq(1).children("span").text(lgHost);
					$(".league-text1").children().eq(2).children("span").text(referee);
					$(".league-text1").children().eq(3).children("span").text(lgMinPlayer);
					$(".league-text1").children().eq(4).children("span").text(lgSubPlayer);
					$(".league-text2").children().eq(1).children("span").text(stadium);
					$(".league-text2").children().eq(2).children("span").text(lgMaxPlayer);
					$(".league-text2").children().eq(3).children("span").text(lgPlayer);
				},
				error : function(err) {
						console.log("리그정보조회실패!");
				}
				
			});	
			
		};
	</script>
	
	
	<script type="text/javascript">
		function leagueApply() {
			
			if(window.confirm("접수하시겠습니까?")){
				alert("접수되었습니다.");
				//console.log($(".selectSt").find(":selected").val());
				var lgName = $(".selectSt").find(":selected").val()
				location.href = "${applicationScope.contextPath}/leagueApply.lg?lgName="+lgName;
				
			}
			
		}
		
		function reHome(){
			
			location.href="${applicationScope.contextPath}/index.jsp";
		}
	</script>
</body>
</html>