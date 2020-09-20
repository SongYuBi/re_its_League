<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link  rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeMain.css">
<link  rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeStyle.css">
<link  rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeDefault.css">
<meta charset="UTF-8">
<style>
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
		border:1px solid white;
	}

	.tableArea {
		width:450px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>
	
	<div class="outer">
	<div class="scontA">
		<div class="bbsTopArea"></div>

		<!-- 게시물 읽기 시작 { -->
		<h2 id="container_title">공지사항</h2>

		<article id="bo_v" style="width:100%">
    	<header>
        	<h1 id="bo_v_title"><c:out value="${ requestScope.board.bTitle }"/></h1>
    	</header>
		<hr class="bg2_1">
    	<section id="bo_v_info">
        	작성자 <strong><span class="sv_member"><c:out value="${ requestScope.board.pfName }"/></span></strong>
        	작성일 <strong><span><c:out value="${ requestScope.board.bDate }"/></span></strong>
        	조회<strong><span><c:out value="${ requestScope.board.bCount }"/></span></strong>
        	댓글<strong>nn건</strong>
    	</section>

    	<!-- } 게시물 상단 버튼 끝 -->
		<hr class="bg2_1">	
    	<section id="bo_v_atc">
        	<h2 id="bo_v_atc_title">본문</h2>
	        <div id="bo_v_img"></div>

      		<!-- 본문 내용 시작 { -->
	        <div id="bo_v_con">
				<table>
				 <tr>
						<td>제목 </td>
						<td colspan="3"><input type="text" size="50" name="title" value="<c:out value="${ requestScope.board.bTitle }"/>" readonly></td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" value="<c:out value="${ requestScope.board.pfName }"/>" name="writer" readonly>
						</td>
						<td>작성일</td>
						<td><input type="date" name="date" value="<c:out value="${ requestScope.board.bDate }"/>" readonly></td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" style="resize:none;" readonly><c:out value="${ requestScope.board.bContent }"/></textarea>
						</td>
					</tr>
				</table>
				<br>
			</div>
    	    <!-- } 본문 내용 끝 -->
    	</section>
 
    	<!-- 링크 버튼 시작 { -->
  	    <div id="bo_v_bot">
     		<ul class="bo_v_nb">
        	   <li><a href="" class="btn_b01">다음글</a></li>
        	</ul>
            <ul class="bo_v_com">
        	    <li><a href="${ applicationScope.contextPath }/selectNoticeForUpdate.no?num=<c:out value="${ requestScope.notice.nno }"/>" class="btn_b01">수정하기</a></li>
        	</ul>
        	<ul class="bo_v_com">
        		<li><a href="../notice\noticeList.jsp" class="btn_b01">목록</a></li>
        		<%-- <li>
        			<c:if test="${ !empty loginUser.userId and sessionScope.loginUser.userId.equals('admin') }">
						<button onclick="location.href='${ applicationScope.contextPath }/selectNoticeForUpdate.no?num=<c:out value="${ requestScope.notice.nno }"/>'">수정하기</button>
					</c:if>
				</li> --%>
        	</ul>
		</div>
   		<!-- } 링크 버튼 끝 -->

		</article>
		<!-- } 게시판 읽기 끝 -->

		<script>
			function board_move(href) {
    			window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
			}
		</script>


		<!-- } 게시글 읽기 끝 -->
	</div>
	</div>
</body>
</html>