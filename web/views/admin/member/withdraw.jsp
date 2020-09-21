<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "java.util.ArrayList, com.kh.semi.exile.model.vo.Exile_vo"%> 

<%  
	ArrayList <Exile_vo> list = (ArrayList<Exile_vo>) request.getAttribute("list");
	Exile_vo loginUser = (Exile_vo)session.getAttribute("loginUser");
%> 


<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap core CSS-->
<link href="/semi/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="/semi/resources/css/all.min.css" rel="stylesheet"
	type="text/css">
<!-- Page level plugin CSS-->
<link href="/semi/resources/css/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="/semi/resources/css/sb-admin.css" rel="stylesheet">
<style>
#wrapper ul {
	
}

.sidebar navbar-nav {
	width: 150px;
}

.sidebar .nav-link {
	min-width: 150px;
	min-height: 200px;
	margin-top: 30px;
	margin-left: -20px;
}

.sidebar .sidebar-image {
	margin-left: 45px;
	margin-top: 30px;
	align-content: center;
}

.sidebar-text {
	margin-left: -50px;
	margin-top: 10px;
	text-align: center;
}

.period {
	background: white;
	border-radius: 5px;
}

.text {
	font-size: 14px;
}

.stitle {
	font-weight: 600;
}
</style>
<title>SB Admin - Dashboard</title>

<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include> 
</head>


		<div id="content-wrapper">

			<div class="container-fluid">


				<p style="font-size: 25px; font-weight: bold;">탈퇴 회원 관리</p>
				<hr>
				<div class="card mb-3" style="margin-top: 20px;">
					<div class="card-header"
						style="font-size: 20px; font-weight: bold;">탈퇴 회원 관리 검색</div>

					<div class="card-body">
						<h6>- 회원 탈퇴 내역을 조회할 수 있는 검색 영역입니다.</h6>
						<br>

						<div class="table-responsive">
							<table class="table table" id="dataTable" width="100%"
								cellspacing="0">
								<tbody>
									<tr>
										<td>아이디</td>
										<td><label><input type="text"></label></td>
									</tr>
									<tr>
										<td>탈퇴 유형</td>
										<td><label> <select
												style="width: 180px; height: 30px;">
													<option>자유 탈퇴</option>
													<option>강제 탈퇴</option>
											</select>
										</label></td>
									</tr>
									<tr>
										<td>기간</td>
										<td>
											<button class="period" type="button">오늘</button>
											<button class="period" type="button">3일</button>
											<button class="period" type="button">7일</button>
											<button class="period" type="button">1개월</button>
											<button class="period" type="button">3개월</button>
											<button class="period" type="button">1년</button> <label><input
												type="date" style="margin-left: 10px; margin-right: 10px;">
												~</label> <label><input type="date"
												style="margin-left: 10px;"></label>
										</td>
									</tr>
									<tr>
										<td>탈퇴 사유</td>
										<td><label> <select
												style="width: 180px; height: 30px;">
													<option>탈퇴 사유1</option>
													<option>탈퇴 사유2</option>
													<option>탈퇴 사유3</option>
													<option>탈퇴 사유4</option>
											</select>
										</label></td>
									</tr>
								</tbody>
							</table>
						</div>
						<br>

						<h5 style="font-weight: 600;">탈퇴 유형</h5>
						<br>
						<li class="stitle">일반 탈퇴</li>
						<p class="text">회원이 직접 [회원정보 수정]화면에서 [회원 탈퇴]를 선택하여 처리된 자동 탈퇴
							회원을 말합니다.</p>
						<li class="stitle">강제 탈퇴</li>
						<p class="text">운영방침에 따라 운영자가 강제탈퇴처리한 회원으로 [고객관리>회원관리>회원정보 조회]
							페이지에서 삭제처리한 탈퇴회원을 말합니다.</p>
						<li class="stitle">탈퇴 신청</li>
						<p class="text">운영방침에 따라 운영자가 강제탈퇴처리한 회원으로 [고객관리>회원관리>회원정보 조회]
							페이지에서 삭제처리한 탈퇴회원을 말합니다.</p>

					</div>
				</div>

				<div class="card mb-3">
					<div class="card-header"
						style="font-size: 20px; font-weight: bold;">탈퇴 회원 관리 검색</div>

					<div class="card-body">
						<div style="background: gray">
							<label for="search"
								style="margin-top: 10px; margin-left: 25px; margin-right: 10px; font-weight: 600;">선택
								회원</label>
							<button type="button">탈퇴</button>
						</div>
						  <table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">

                      <thead>
                      
                      <tr>
                      
                      <th scope="col" class="ft"><input type="checkbox" id="check_all" /></th>
                      
                      <th scope="col">회원 ID</th>
                      
                                        <th scope="col">구단</th>
                      
                                        <th scope="col">등록일자</th>
                      
                                        <th scope="col" class="lt">등록사유</th>
                                      
                      
                      </tr>
                      
                      </thead>
                      <tbody>
								<% for(Exile_vo p : list) { %>
								<tr>
									<td><input type="checkbox" id="check_one" /></td>
							    	<td><%= p.getPfEmail() %></td>
									<td><%= p.getClub_name() %></td>
									<td><%= p.getExileDate() %></td>
									<td><%= p.getExileReason() %></td>
								</tr>
								<%}%> 
								</tbody>
                      
	                      </table>
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