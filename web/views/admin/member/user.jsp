<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import= "java.util.ArrayList, com.kh.semi.user.model.vo.Profile_vo" %> 

<%  
	ArrayList <Profile_vo> list = (ArrayList<Profile_vo>) request.getAttribute("list");
	Profile_vo loginUser = (Profile_vo)session.getAttribute("loginUser");
%> 

<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
p {
	font-size: 20px;
	margin-left: 5px;
}
.col-sm-12 col-md-6 {
	width:100%;
}

.dataTables_filter {
	
}
</style>
		<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include> 

</head>
	
<body>
		<div id="content-wrapper" aglin="center" style="margin-top:30px; margin-left:30px">
			<div class="container-fluid">

				<p style="font-size: 25px; font-weight: bold;">회원 관리</p>
				<hr>

				<!-- DataTables Example -->
				<div class="card mb-3" style="margin-top: 20px;">
					<div class="card-header">회원 현황</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="usertotal" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>신규 회원</th>
										<th>탈퇴 회원</th>
										<th>TOTAL</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><c:out value="${requestScope.list2[0]}" /></td>
										<td><c:out value="${requestScope.list2[1]}" /></td>
										<td><c:out value="${requestScope.list2[2]}" /></td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>


				<br>

<%-- <% if(loginUser == null || !loginUser.getPfId().equals(113)) {
		request.setAttribute("message","잘못된 경로로 접근하셨습니다.");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request,response);
	} else { %>  --%>

				<!-- 회원 목록 영역 -->

				<div class="card-header"
					style="border-inline: 10px solid white; border: 1px solid rgb(218, 217, 217); border-top-right-radius: 5px; border-top-left-radius: 5px;">
					회원 리스트</div>
				<div class="card-body" style="border: 1px solid rgb(218, 217, 217);">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>가입일자</th>
									<th>이메일</th>
									<th>이름</th>
									<th>등급</th>
								</tr>
							</thead>
							<tbody>
								<% for(Profile_vo p : list) { %>
								<tr>
							    	<td><%= p.getPfDate() %></td>
									<td><%= p.getPfEmail() %></td>
									<td><%= p.getPfName() %></td>
									<td><%= p.getPfGrade() %></td>
								</tr>
								<%}%> 
								</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- Page level plugin JavaScript-->
	<script src="/semi/resources/js/jquery.dataTables.js"></script>
	<script src="/semi/resources/js/dataTables.bootstrap4.js"></script>

	<!-- Demo scripts for this page-->
	<script src="/semi/resources/js/datatables-demo.js"></script>

</body>
</html>