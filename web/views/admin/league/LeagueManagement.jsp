<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	.line1{
		margin-top: 200px;	
	}
</style>
</head>
<body>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include>
	<div style="width:80%; height:100px;">	
		<div style="border-bottom:1px solid black; margin-top:50px; padding:20px; margin-left:50px;">	
		<h2 style="margin-left:50px;font-size">리그관리</h2>
		</div>
		<div>
			<div style="width:48%; float:left;margin-right:40px;" class="optionlist line1">리그개설</div>
			<div style="width:48%; float:left;margin-right:0;" class="optionlist line1">준비중 리그</div>
			<div style="width:48%; float:left;margin-right:40px;" class="optionlist">리그 검색</div>
			<div style="width:48%; float:left;margin-right:0;" class="optionlist">진행중 리그</div>
		</div>
	</div>
</body>
</html>