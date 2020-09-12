<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
---- Include the above in your HEAD tag --------

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 -->
 <style>
/*  tr:nth-child(even){
 	background-color: #f2f2f2;
 } */
 /* .table table-bordered {
  border-collapse: collapse;
  width: 100%;
}
  */
  .table table-bordered th{
  	text-align:center;
  }
 	#table-head{
 		background-color: #111B39;
 		color:white;
 		border-left:none;
 	}
 	tr:nth-child{
 		text-align:center;
 	}
	#default-div {
		display:grid;
		grid-template-columns: 1fr 3fr 1fr;
		grid-gap :10px;
		height:100%
		
	}
	td{
		style="border-left:none;"
	}
	
	@media (max-width: 100px){
		#default-div {
			display: block;
		}
	}
	
	
	.box1 { background: black;}
	.box2 { background: red;}
	.box3 { background: green;}
</style>
 </head>
<body>
	
	<jsp:include page="../../common/sideBar.jsp"/>
	
	<div id="default-div">
	<div>
		<!-- <h1>영역1</h1> -->
	</div>
	<div class="container-my">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>스케쥴</h2></div>
                    <!-- <div class="col-sm-4">
                        <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New</button>
                    </div>	 -->
                </div>
            </div>
            <table class="table table-bordered" margin="auto"; text-align="center";>
                <thead>
                    <tr id="table-head">
                        <th>리그</th>
                        <th>팀</th>
                        <th>지역</th>
                        <th>구장명</th>
                       	<th>날짜</th>
                       	 <th>심판</th>
                    </tr>
                </thead>
                <tbody>
                
                	<!--  아직데이터 없어서 데이터 들어올것들	 -->
                 	<c:forEach var="" items="">
						<tr>
							
							<td><c:out value=""/>ㄲ</td>
							<td><c:out value=""/>ㄷ</td>
							<td><c:out value=""/>ㅇ</td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
						</tr>                 
                 	</c:forEach>
                 	
                </tbody>
            </table>
        </div>
     </div>
    
    </div> 
</body>
</html>