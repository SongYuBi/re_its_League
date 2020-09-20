<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.ArrayList, com.kh.semi.exile.model.vo.Exile_vo,com.kh.semi.user.model.vo.Profile_vo" %> 

<%  
	ArrayList <Exile_vo> list = (ArrayList<Exile_vo>) request.getAttribute("list");
	ArrayList <Profile_vo> list2 = (ArrayList<Profile_vo>) request.getAttribute("list2");
	Exile_vo loginUser = (Exile_vo)session.getAttribute("loginUser");
%> 

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
.btn {
	background: navy;
	color: white;
	width: 100px;
}
</style>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"></jsp:include> 
</head>

<body>
            <div id="content-wrapper" style="margin-top:30px; margin-left:30px">

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
                    
                    <div style="height: 60px; align-content: center;background:whitesmoke;">                  
                      <label for="search" class="screen_out" style="margin-top: 15px; margin-left: 25px; margin-right:10px;  font-weight:600; font-size:20px;">1. 회원 ID 조회</label>
                        </div>
                        <hr>
                         <div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
								 <th scope="col" class="ft"><input type="checkbox" id="check_all" /></th>
									<th>가입일자</th>
									<th>이메일</th>
									<th>이름</th>
									<th>등급</th>
								</tr>
							</thead>
							<tbody>
								<% for(Profile_vo p : list2) { %>
								<tr>
								<td><input type="checkbox" id="check_one" /></td>
							    	<td><%= p.getPfDate() %></td>
									<td><%= p.getPfEmail() %></td>
									<td><%= p.getPfName() %></td>
									<td><%= p.getPfGrade() %></td>
								</tr>
								<%}%> 
								</tbody>
						</table>
						<hr>
                        <div style="background:whitesmoke; height: 60px; align-content: center;">
                          <label for="search" class="screen_out" style="margin-top: 15px; margin-left: 25px; margin-right:10px;  font-weight:600; font-size:20px;">2. 제한 사유 선택</label>
                          <input type="radio" value="추방 사유1" style="margin-left:30px;">  폭력
                          <input type="radio" value="추방 사유2" style="margin-left: 20px;">  욕설
                          <input type="radio" value="추방 사유2" style="margin-left: 20px;">  시설물 훼손
                          <input type="radio" value="추방 사유2" style="margin-left: 20px;">  기타
                        </div>   
                          
                        <br><br>
                        
                        <div align="center">
                       <button class="btn" type="button" style="align-content: center;">등록</button>   
                      </div> <br><br>
                  
                </div>
                  </div>
                

            <!-- DataTables Example -->
          <div class="card mb-3" style="margin-top: 20px;">
            <div class="card-header" style="font-size: 20px; font-weight: bold;">
             추방 회원 리스트</div>
            
              <div class="card-body">
                <div class="selectBox02">
                    <hr>
                  <div style="height: 60px; align-content: center;">                  
                    <label for="search" class="screen_out" style="margin-top: 20px; margin-left: 25px; margin-right:10px;  font-weight:600;">2. 조회 조건 선택</label>
                    <select id="search">
                        <option>폭력</option>
                        <option>욕설</option>
                        <option>시설물 훼손</option>
                        <option>기타</option>
                    </select>
                    <input type=text placeholder="검색하기" style="margin-left: 10px;">
                    <button class="btn-search" type="button" style="background: rgb(5, 5, 71); color:white; border-radius: 5px;">
                        <i class="fas fa-search"></i>
                        </button>
                      </div>

                    <br><br>
                    <button class="btn-rejoin" type="button" style="width: 280px; height: 40px; border:1px solid rgb(214, 213, 213);border-radius: 5px; background:white">선택건 해제하기</button>
                    <br><br>
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


    <!-- Custom scripts for all pages-->
    <script src="/semi/resources/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="/semi/resources/js/datatables-demo.js"></script>
</body>
</html>