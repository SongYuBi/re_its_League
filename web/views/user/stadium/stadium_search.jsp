<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=w6kzmhaipj"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" 	href="${ pageContext.request.contextPath }/resources/css/noticeMain.css">
<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/noticeStyle.css">
<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/noticeDefault.css">
<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<style>
body {
	font-family: 'NotoKrR', '나눔 고딕', NotoKrR Gothic, "맑은 고딕", Malgun Gothic,
		'돋움', dotum, Helvetica, sans-serif;
}

.outer {
	margin: 0 0 15px 0;
	margin-top: 0px;
	margin-right: 90px;
	margin-bottom: 15px;
	margin-left: 90px;
	border-bottom: 1px solid #969696;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: rgb(150, 150, 150);
}

table {
	border: 1px solid white;
	text-align: center;
}

.table-area {
	width: 650px;
	height: 350px;
	margin: 0 auto;
}

.search-area {
	width: 650px;
	margin: 0 auto;
}
</style>
</head>
<body>

	<jsp:include
		page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>

	<div class="outer">
		<div class="logo" align="center">
			<img alt="" src="../../../resources/image/logo_jess.png" style="width: 20%">
		</div>
		<br>
		<br>
		
		<div id="map" align="center" style="width:800px;height:400px;margin:auto;"></div>
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=w6kzmhaipj&callback=initMap"></script>
		<script>
			var mapOptions = {
   				center: new naver.maps.LatLng(37.3595704, 127.105399),
    			zoom: 10
				};

			var map = new naver.maps.Map('map', mapOptions);
		</script>




		<div class="scontA">
			<br>
			<h2 id="container_title">
				구장 리스트<span class="sound_only"> 목록</span>
			</h2>

			<div id="bo_list" style="width: 100%">
				<div class="tbl_head01 tbl_wrap">
					<table id="listArea">
						<thead>
							<tr>
								<th>지역</th>
								<th>구장명</th>
								<th>상세주소</th>
								<th>전화번호</th>
								<th>상세보기</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="s" items="${ requestScope.list }">
								<tr>
									<input type="hidden" value="<c:out value="${ s.stdId }"/>">
									<td><c:out value="${ s.stdName }" /></td>
									<td><c:out value="${ s.stdAddress }" /></td>
									<td><c:out value="${ s.stdPhone }" /></td>
									<td>상세보기</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
<%-- 	<div class="pagination" align="center">
        <button onclick="location.href='${applicationScope.contextPath}/noticeList.no?currentPage=1'"><<</button>
         
        <c:if test="${ requestScope.pi.currentPage <= 1 }">
        <button disabled><</button>
        </c:if>
        <c:if test="${ requestScope.pi.currentPage > 1 }">
        	<button onclick="location.href='${applicationScope.contextPath}/noticeList.no?currentPage=<c:out value="${ requestScope.pi.currentPage - 1 }"/>'"><</button>
        </c:if>
         
        <c:forEach var="p" begin="${ requestScope.pi.startPage }" end="${ requestScope.pi.endPage }" step="1">
        	<c:if test="${ requestScope.pi.currentPage eq p }">
            	<button disabled><c:out value="${ p }"/></button>
            </c:if>
            <c:if test="${ requestScope.pi.currentPage ne p }">
               <button onclick="location.href='${applicationScope.contextPath}/noticeList.no?currentPage=<c:out value="${ p }"/>'"><c:out value="${ p }"/></button>
            </c:if>
         </c:forEach>
         
         
         
         <c:if test="${ requestScope.pi.currentPage >= requestScope.pi.maxPage }">
            <button disabled>></button>
         </c:if>
         <c:if test="${ requestScope.pi.currentPage < requestScope.pi.maxPage }">
            <button onclick="location.href='${applicationScope.contextPath}/noticeList.no?currentPage=<c:out value="${ requestScope.pi.currentPage + 1 }"/>'">></button>
         </c:if>
         
         <button onclick="location.href='${applicationScope.contextPath}/noticeList.no?currentPage=<c:out value="${ requestScope.pi.maxPage }"/>'">>></button>
    	 </div>
    	 
    	 --%>
    </div>

	<script>
		$(function() {
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"black"});
			}).click(function(){
				var num = $(this).parent().children().eq(0).text();
				
				console.log(num);
				
				location.href = "${applicationScope.contextPath}/SelectOne.no?num=" + num;
			});
		});
	</script>
</body>
</html>