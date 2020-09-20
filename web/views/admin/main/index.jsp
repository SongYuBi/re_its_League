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
p {
   font-size: 20px;
   margin-left: 5px;
}
</style>

</head>
      <jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include>

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

<!--             Bootstrap core JavaScript
             <script src="/semi/resources/js/jquery.min.js"></script>
            <script src="/semi/resources/js/bootstrap.bundle.min.js"></script>

            Core plugin JavaScript
            <script src="/semi/resources/js/jquery.easing.min.js"></script>

            Page level plugin JavaScript
            <script src="/semi/resources/js/Chart.min.js"></script>
            <script src="/semi/resources/js/jquery.dataTables.js"></script>
            <script src="/semi/resources/js/dataTables.bootstrap4.js"></script>

            Custom scripts for all pages
            <script src="/semi/resources/js/sb-admin.min.js"></script>

            Demo scripts for this page !-->
            <script src="/semi/resources/js/datatables-demo.js"></script>
            <script src="/semi/resources/js/chart-area-demo.js"></script>
            <script>
            $("#user").click(function(){
         
			         location.href="${applicationScope.contextPath}/selectAll";
			      });
            </script>
</body>

</html>