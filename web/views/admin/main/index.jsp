<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Bootstrap core CSS-->
<link href="/semi/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="/semi/resources/css/all.min.css" rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="/semi/resources/css/dataTables.bootstrap4.css" rel="stylesheet">
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

p {
	font-size: 20px;
	margin-left: 5px;
}
</style>

</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark static-top"
		style="background: skyblue;">

		<a class="navbar-brand mr-1" href="index.html"> <img
			src="/semi/resources/image/chu/logo.png" width="200px" height="75px"
			style="margin-left: 10px;">
		</a>

		<!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i></i>
					</button>
				</div>
			</div>
		</form>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">

			<li class="nav-item dropdown no-arrow"><a class="nav-link"
				href="#" id="userDropdown" role="button"> <i
					class="fas fa-user-circle fa-fw"></i>
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
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				id="pagesDropdown" role="button" style="margin-top: -120px;"> <img
					class="sidebar-image" src="/semi/resources/image/chu/league_un.png"
					width="40px" style="margin-left: 52px;">
					<p class="sidebar-text">리그 관리</p>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown"></div> <br>
			</span> <span class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/views/admin/referee/adminRefereeMain.jsp"
				style="margin-top: -90px; margin-left: -22px;"> <img
					class="sidebar-image"
					src="/semi/resources/image/chu/referee_un.png" width="60px">
					<p class="sidebar-text">심판 관리</p>
			</a>
			</span> 
			
			<span class="nav-item dropdown"> 
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-top: -70px;"> 
			<img class="sidebar-image" src="/semi/resources/image/chu/user_un.png" width="60px">
					<p class="sidebar-text">회원 관리</p>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown" x-placement="bottom-start" style="position:absolute; width:50px;
			will-change: transform; rop; 0px; left; 0px; margin-top:-20px; transform: translate3d(0px, 63px, 0px);">
				<a class="dropdown-item" href="/semi/views/admin/member/user.jsp">회원관리</a>
				<a class="dropdown-item" href="/semi/views/admin/member/exile.jsp">추방 관리</a>
				<a class="dropdown-item" href="/semi/views/admin/member/withdraw.jsp">탈퇴 관리</a>
				</div>
			</span> 
			
			<span class="nav-item"> 
			<a class="nav-link" href="#" style="margin-top: -70px;"> 
			<img class="sidebar-image" src="/semi/resources/image/chu/add_user_un.png" width="60px">
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

		<div id="content-wrapper" style="margin-left: 30px; margin-top: 15px;">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">About Match</a></li>
					<li class="breadcrumb-item active">Overview</li>
				</ol>

				<!-- Icon Cards-->
				<div class="row">
					<div class="col-xl-4 col-sm-8 mb-4">
						<div class="card text-white bg-primary o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon"></div>
								<div class="mr-5">경기 완료 리그 경기</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">10</span> <span class="float-right">

							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-4 col-sm-8 mb-4">
						<div class="card text-white bg-warning o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon"></div>
								<div class="mr-5">경기 중 리그 경기</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">30</span> <span class="float-right">

							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-4 col-sm-8 mb-4">
						<div class="card text-white bg-success o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon"></div>
								<div class="mr-5">경기 예정 리그 경기</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">15</span> <span class="float-right">

							</span>
							</a>
						</div>
					</div>
				</div>


				<!-- Area Chart Example-->
				<div class="card mb-4" style="margin-left: 0px; max-width: 100%;">
					<div class="card-header" style="max-width: 100%">
						<i class="fa fa-chart-area"></i> 광고 매출 수익
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="30"></canvas>
					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
				</div>
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">About League</a></li>
					<li class="breadcrumb-item active">Overview</li>
				</ol>

				<!-- Icon Cards-->
				<div class="row">
					<div class="col-xl-6 col-sm-12 mb-6">
						<div class="card text-white bg-primary o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon"></div>
								<div class="mr-5">경기 완료 리그 경기</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">10</span> <span class="float-right">

							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-6 col-sm-12 mb-6">
						<div class="card text-white bg-warning o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon"></div>
								<div class="mr-5">경기 중 리그 경기</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#">
								<span class="float-left">30</span> <span class="float-right">

							</span>
							</a>
						</div>
					</div>

				</div>

				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> 
				<i class="fas fa-angle-up"></i>
				</a>

				<!-- Logout Modal-->
				<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Ready to
									Leave?</h5>
								<button class="close" type="button" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="modal-body">Select "Logout" below if you are
								ready to end your current session.</div>
							<div class="modal-footer">
								<button class="btn btn-secondary" type="button"
									data-dismiss="modal">Cancel</button>
								<a class="btn btn-primary" href="login.html">Logout</a>
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
				<script src="/semi/resources/js/Chart.min.js"></script>
				<script src="/semi/resources/js/jquery.dataTables.js"></script>
				<script src="/semi/resources/js/dataTables.bootstrap4.js"></script>

				<!-- Custom scripts for all pages-->
				<script src="/semi/resources/js/sb-admin.min.js"></script>

				<!-- Demo scripts for this page-->
				<script src="/semi/resources/js/datatables-demo.js"></script>
				<script src="/semi/resources/js/chart-area-demo.js"></script>
</body>

</html>
