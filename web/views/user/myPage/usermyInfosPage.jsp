    <jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"/>
    
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.hi {
		float:left;
		
	}
	
	#pfName{
		border:none;
	}
	input{
		border: 2px solid lightgrey;
		height:40px;
		width:150px;
	}
</style>
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	
	
	<div class="container">
		<div class="inner">
		
			<div class="hi">
				<h4>안녕하세요 </h4>
			</div>
			<div class="who">
			<input value="<c:out value="${ requestScope.pv.pfName }"/>" id="pfName">
			</div>
						<br>
					 	<br>
			<div>
			
				<form action="${ applicationScope.contextPath }/update.myInfos" method="post" id="joinForm">
					
					 <table>
					 
					 	
					 	<tr>
					 	<td>아이디</td>
					 	<td><input type="text" maxlength="15" name="userId" id="userId" value="<c:out value="${ requestScope.pv.pfId }"/>" readonly></td>
					 	</tr>
					 	
					 	
					 
					 	<tr>
					 	<td>전화번</td>
					 	<td>
						 	<input type="text" maxlength="3" name="tel1" size="5" >-
						 	<input type="text" maxlength="3" name="tel2" size="5" >-
						 	<input type="text" maxlength="3" name="tel3" size="5" >
					 	</td>
					 	</tr>
					 </table>
				
				</form>
			
			
			</div>
		</div>
	</div>
</body>
</html>


























