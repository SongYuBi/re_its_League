<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
    <script src="${ pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/adminSideBar.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="${ pageContext.request.contextPath }/resources/css/adminSidebar.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	


</head>
<body>
<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper">
    <!-- Navigation -->


    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${ pageContext.request.contextPath }/views/admin/main/admin_Main.jsp">
                <img src="${ pageContext.request.contextPath }/resources/image/logo_jess.png" alt="LOGO" width="200" height="50">
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
                </a>
            </li>            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">심판1 <b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-fw fa-user"></i> Edit Profile</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-cog"></i> Change Password</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-fw fa-power-off"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="../main/refereeMain.jsp" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-home"></i> 심판 메인  </a>
                </li>
                <li>
                    <a href="../league/refereeGameEvalution.jsp" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fas fa-edit"></i>  경기평가 관리<!-- <i class="fa fa-fw fa-angle-down pull-right"> --></i></a>
                </li>
                <li>
                    <a href="../league/refereeSchedule.jsp">
                    	<i class="fa fa-fw fas fa-table"></i> 스케줄 관리
                    </a>
                </li>
                <li>
                    <a href="../league/refereeMyPage.jsp"><i class="fa fa-fw fas fa-user"></i> 마이페이지</a>
                </li>
	            
            </ul>
        </div>
        <!-- /.navbar-collapse --
    </nav>

    <!-- <div id="page-wrapper">
        <div class="container-fluid">
            Page Heading
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <h1></h1>
                </div>
            </div>
            /.row
        </div>
        /.container-fluid
    </div> -->
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
</body>
</html>
