<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
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
			</span> <span class="nav-item"> <a class="nav-link" href="#"
				id="pagesDropdown" role="button" style="margin-top: -120px;"> <img
					class="sidebar-image" src="/semi/resources/image/chu/league_un.png"
					width="40px" style="margin-left: 52px;">
					<p class="sidebar-text">리그 관리</p>
			</a>
				<div class="dropdown-menu" ></div> <br>
			</span> <span class="nav-item"> <a class="nav-link" href="#"
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
            <div id="content-wrapper">

                <div class="container-fluid">


            <p style="font-size: 25px; font-weight: bold;">
                추방 회원 관리
            </p>
            <hr>

            <div class="card mb-3" style="margin-top: 20px;">
              <div class="card-header" style="font-size: 20px; font-weight: bold;">
               등록하기</div>
               
                <div class="card-body">
                  <div class="selectBox02">
                    
                    <div style="background:whitesmoke; height: 60px; align-content: center;">                  
                      <label for="search" class="screen_out" style="margin-top: 20px; margin-left: 25px; margin-right:10px;  font-weight:600;">회원 ID 조회</label>
                      <select id="search">
                          <option>전체</option>
                          <option>구단회원</option>
                          <option>일반회원</option>/option>
                    
                      </select>
                      <input type=text placeholder="검색하기" style="margin-left: 10px;">
                      <button class="btn-search" type="button" style="background: rgb(5, 5, 71); color:white; border-radius: 5px;">
                          <i class="fas fa-search"></i>
                          </button>
                          <button class="btn-search" type="button" style="background: rgb(5, 5, 71); color:white; border-radius: 5px;">
                            <i class="fas fa-check"></i>
                            </button>
                        </div><br>

                        <div style="background:whitesmoke; height: 60px; align-content: center;">
                          <label for="search" class="screen_out" style="margin-top: 20px; margin-left: 25px; margin-right:10px;  font-weight:600;">제한 사유</label>
                          <input type="radio" value="추방 사유1">  추방 사유1
                          <input type="radio" value="추방 사유2" style="margin-left: 20px;">  추방 사유2
                          <input type="radio" value="추방 사유2" style="margin-left: 20px;">  추방 사유2
                          <input type="radio" value="추방 사유2" style="margin-left: 20px;">  추방 사유2
                        </div>   
                          
                        <br><br>
                        
                        <div align="center">
                       <button class="btn-submit" type="button" style="align-content: center;">등록</button>   
                      </div> <br><br>
                  
                </div>
                  </div>
                

            <!-- DataTables Example -->
          <div class="card mb-3" style="margin-top: 20px;">
            <div class="card-header" style="font-size: 20px; font-weight: bold;">
             추방 회원 리스트</div>
             
              <div class="card-body">
                <div class="selectBox02">
                    
                  <div style="background:whitesmoke; height: 60px; align-content: center;">                  
                    <label for="search" class="screen_out" style="margin-top: 20px; margin-left: 25px; margin-right:10px;  font-weight:600;">조회 조건</label>
                    <select id="search">
                        <option>추방 사유1</option>
                        <option>추방 사유2</option>
                        <option>추방 사유3</option>
                        <option>추방 사유4</option>
                    </select>
                    <input type=text placeholder="검색하기" style="margin-left: 10px;">
                    <button class="btn-search" type="button" style="background: rgb(5, 5, 71); color:white; border-radius: 5px;">
                        <i class="fas fa-search"></i>
                        </button>
                      </div>

                    <br><br>
                    <button class="btn-rejoin" type="button" style="width: 280px; height: 40px; border:1px solid rgb(214, 213, 213);border-radius: 5px; background:white">선택건 해제하기</button>
                    <br><br>
                    <table class="table" summary="목록">

                      <caption>
                
                      
                      </caption>
                      
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
                      
                      <th scope="col" class="ft"><input type="checkbox" id="check_all" /></th>
                      
                      <th scope="col">회원 ID</th>
                      
                                        <th scope="col">구단</th>
                      
                                        <th scope="col">등록일자</th>
                      
                                        <th scope="col" class="lt">등록사유</th>
                                      
                      
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