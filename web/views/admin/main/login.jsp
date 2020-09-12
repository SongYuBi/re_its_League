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

    <title>SB Admin - Login</title>

    <!-- Bootstrap core CSS-->
    <link href="/semi/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/semi/resources/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/semi/resources/css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg" style="background: rgb(0, 0, 63);">

    <div class="container" align="center" style="position: absolute; top:50%; left:50%;margin:-150px 0px 100px -600px; ">
      <div class="card card-login mx-10 mt-10" >
      <img src="/semi/resources/image/chu/logo.png" style="width: 170px; margin-left: 124px; margin-top: 15px;">
        <div class="card-header" style="font-weight: 600;">관리자 계정 로그인하기</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                <label for="inputEmail" style="margin-left: -140px;">이메일</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword" style="margin-left: -132px;">비밀번호</label>
              </div>
            </div>
           
            <a class="btn btn-primary btn-block" href="index.html">Login</a>
          </form>
       
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/semi/resources/js/jquery.min.js"></script>
    <script src="/semi/resources/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/semi/resources/js/jquery.easing.min.js"></script>

  </body>

</html>
