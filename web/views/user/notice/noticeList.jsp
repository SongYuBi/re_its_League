<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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

		<div class="scontA">
			<br>
			<h2 id="container_title">
				공지사항<span class="sound_only"> 목록</span>
			</h2>

			<div id="bo_list" style="width: 100%">
				<div class="bo_fx">

					<fieldset id="bo_sch">
						<form name="fsearch" method="get">
							<select name="sfl" id="sfl">
								<option value="wr_subject">제목</option>
								<option value="wr_content">내용</option>
								<option value="wr_subject||wr_content">제목+내용</option>
							</select> <input type="text" name="stx" value="" required="" id="stx"
								class="frm_input required" size="15" maxlength="20"> <input
								type="submit" value="검색" class="btn_search">
							<c:if test="${ !empty sessionScope.loginUser }"> 
							<button class="btn_search" onclick="location.href='views/user/notice/noticeInsertForm.jsp'">작성하기</button>
							</c:if>
						</form>
					</fieldset>
				</div>

				<div class="tbl_head01 tbl_wrap">
					<table id="listArea">
						<thead>
							<tr>
								<th> </th>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="b" items="${ requestScope.list }">
								<tr>
									<td><input type="hidden" value="<c:out value='${ b.bid }'/>"></td>
									<td><c:out value="${ b.bNo }" /></td>
									<td><c:out value="${ b.bTitle }" /></td>
									<td><c:out value="${ b.pfName }" /></td>
									<td><c:out value="${ b.bDate }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div class="pagination" align="center">
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
    </div>



	<script>
		$(function() {
			 $("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"lightgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var num = $(this).parent().find("input").val();
				
				console.log(num);	
				
				location.href = "${applicationScope.contextPath}/selectNoticeOne.no?num=" + num;
			});
		}); 
	</script>
</body>
</html>