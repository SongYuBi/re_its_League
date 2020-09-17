<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark static-top"
		style="background: skyblue;"> <a class="navbar-brand mr-1"
		href="index.html"> <img src="/semi/resources/image/chu/logo.png"
		width="200px" height="75px" style="margin-left: 10px;">
	</a> <!-- Navbar Search -->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search for..."
				aria-label="Search" aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-primary" type="button">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
	</form>

	<!-- Navbar -->
	<ul class="navbar-nav ml-auto ml-md-0">

		<li class="nav-item dropdown no-arrow"><a class="nav-link"
			href="#" id="userDropdown" role="button"> <i
				class="fa fa-user-circle fa-fw"></i>
		</a></li>
	</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<div class="sidebar" style="max-width: 150px;">
			<span class="nav-item active"> <a class="nav-link"
				href="index.html"> <img class="sidebar-image"
					src="/semi/resources/image/chu/home_un.png" width="60px"
					style="margin-top: -10px;">
					<p class="sidebar-text">HOME</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="../league/LeagueManagement.jsp"
				id="pagesDropdown" role="button" style="margin-top: -120px;"> <img
					class="sidebar-image" src="/semi/resources/image/chu/league_un.png"
					width="40px" style="margin-left: 52px;">
					<p class="sidebar-text">리그 관리</p>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown"></div> <br>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -90px; margin-left: -22px;"> <img
					class="sidebar-image"
					src="/semi/resources/image/chu/referee_un.png" width="60px">
					<p class="sidebar-text">심판 관리</p>
			</a>
			</span> <span class="nav-item dropdown"> <a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" style="margin-top: -70px;"> <img
					class="sidebar-image" src="/semi/resources/image/chu/user_un.png"
					width="60px">
					<p class="sidebar-text">회원 관리</p>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown"
					x-placement="bottom-start"
					style="position: absolute; width: 50px; will-change: transform; rop; 0 px; left; 0 px; margin-top: -20px; transform: translate3d(0px, 63px, 0px);">
					<a class="dropdown-item" href="/semi/views/admin/member/user.jsp">회원관리</a>
					<a class="dropdown-item" href="/semi/views/admin/member/exile.jsp">추방
						관리</a> <a class="dropdown-item"
						href="/semi/views/admin/member/withdraw.jsp">탈퇴 관리</a>
				</div>

			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -70px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/add_user_un.png" width="60px">
					<p class="sidebar-text" style="letter-spacing: -2px;">가입승인 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -65px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/board_un.png" width="45px"
					style="margin-left: 50px;">
					<p class="sidebar-text">게시판 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -55px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/ground_un.png" width="60px"
					style="margin-left: 43px;">
					<p class="sidebar-text">구장 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -72px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/profit_un.png" width="60px"
					style="margin-left: 42px;">
					<p class="sidebar-text">매출 관리</p>
			</a>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				style="margin-top: -55px;"> <img class="sidebar-image"
					src="/semi/resources/image/chu/my account_un.png" width="60px"
					style="margin-left: 43px;">
					<p class="sidebar-text">My Account</p>
			</a>
			</span>
		</div>
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
							<table class="table table-bordered" id="dataTable" width="100%"
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

						<table class="table table-bordered" summary="목록">
							<colgroup>
								<col width="10%" />
								<col width="20%" />
								<col width="20%" />
								<col width="20%" />
								<col width="20%" />
								<col width="*" />
							</colgroup>

							<thead>
								<tr>
									<th scope="col" class="ft"><input type="checkbox"
										id="check_all" /></th>
									<th scope="col">회원 ID</th>
									<th scope="col">회원 탈퇴일</th>
									<th scope="col">구분</th>
									<th scope="col" class="lt">탈퇴사유</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<th><input type="checkbox" id="check_one"></th>
									<th>mkchu125</th>
									<th>최강도봉</th>
									<th>20.09.08</th>
									<th>폭력</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
  <!-- Bootstrap core JavaScript-->
    <script src="/semi/resources/js/jquery.min.js"></script>
    <script src="/semi/resources/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/semi/resources/js/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="/semi/resources/js/jquery.dataTables.js"></script>
    <script src="/semi/resources/js/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/semi/resources/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/semi/resources/js/datatables-demo.js"></script>
</body>
</html>