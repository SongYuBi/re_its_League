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
	butto{
		margin : 200px;
	}
	.optionlist{
		font-size:40px;
		height:200px;
		text-align:center;
	}
	
	
	.optionlist:hover{
		cursor:pointer;
		font-weight:700;
	}
	.line1{
		margin-top: 200px;	
	}
</style>
</head>
<body>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"/>
	<div style="width:80%; height:100px;">	
		<div style="border-bottom:1px solid black; margin-top:50px; padding:20px; margin-left:50px;">	
		<h2 style="margin-left:50px;font-size:50px; font-weight:600">리그관리</h2>
		</div>
		<div>
			<div style="width:48%; float:left;margin-right:40px;" class="optionlist line1" onclick="insertLeague();">리그개설</div>
			<div style="width:48%; float:left;margin-right:0;" class="optionlist line1">준비중 리그</div>
			<div style="width:48%; float:left;margin-right:40px; margin-top:100px;" class="optionlist" onclick="searchingLeague();">리그 검색</div>
			<div style="width:48%; float:left;margin-right:0; margin-top:100px;" class="optionlist">진행중 리그</div>
		</div>
	</div>
	
	<script type="text/javascript">
	
		function insertLeague() {
			location.href="leagueInsert.jsp";
		}
		function searchingLeague(){
			location.href="searchingLeague.jsp";
			
		}
	</script>
</body>
</html>