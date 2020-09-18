<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/adminDefaultLayout.css">
<title>Insert title here</title>
</head>
<style>
	.container{
		margin:0px;
		
		
		
	}
	.outer{
		margin:0px;
		
	}
	.inner{
		margin:80px;
	}
	div{
		display:inline-block;
		
	}
	table{
		border: 2px solid darkgrey;
	}
	
</style>
<body>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include>

	<div class="container">
		<div class="outer">
		
			<div class="inner">
			
			<div class="signinUpMatch">
				<h3>신청접수중인 리그</h3>
				<table class="signUPList">
					<tr>
						<th> </th>
						<th width="100px;">리그</th>
						<th width="100px;">지역</th>
						<th width="300px;">기간</th>
						<th width="100px;">상세보기</th>
					</tr>
					
					<c:forEach var="n" items="">
						<tr>
						<input type="checkbox" name="ch" id="ch">
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
						
						</tr>
					</c:forEach>
					
					
				</table>
				
			</div>
			
			<div class="finishedSignUpMatch">
				<h3>신청완료 리그</h3>
			</div>
			
			</div>
		
		</div>
	
	</div>
	
</body>
</html>