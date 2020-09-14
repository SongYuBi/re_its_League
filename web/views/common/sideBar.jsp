<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- <link rel="stylesheet" href="/bootstrap-3.3.2-dist/css/sidebar.css"> -->
    <!-- <script src="/bootstrap-3.3.2-dist/js/sidebar.js"></script> -->
    <!-- <link rel="stylesheet" href="/bootstrap-3.3.2-dist/rotating-css-card-master/rotating-css-card-master/css/rotating-card.css"> -->
    <!-- <link rel="stylesheet" href="bootstrap-3.3.2-dist/css/Technology.css"> -->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/sideBar.css">
    <script src="${ pageContext.request.contextPath }/resources/js/sideBar.js"></script>
    
<!------ Include the above in your HEAD tag ---------->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
</head>
<style>
	#open {
	display: none;
	position: fixed;
	left: 50%;
	top: 50%;
	z-index: 100;
	padding: 52px 60px 60px;
	width: 820px;
	height: 500px;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	background: #fff;
	/* margin-top: 10%; */
}

.close {
	color: black;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.back {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 99;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
}
</style>
<body>


	
    <div id="wrapper">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="${ pageContext.request.contextPath }/views/referee/main/refereeMain.jsp">
                        it`league
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/comman/intro.jsp">소개</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/leagueMain.lg">리그</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/club/club_Main.jsp">구단</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/club/club_apply.jsp">구단 신청</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/stadium/stadium_search.jsp">구장 정보</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/event/eventBoard.jsp">이벤트</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/notice/noticeList.jsp">공지 사항</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/board/freeBoard.jsp">자유게시판</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/qna/qnaList.jsp">QnA</a>
                </li>
                <c:if test="${ !empty sessionScope.loginUser }">
	                <li>
	                    <a href="${pageContext.request.contextPath }/views/user/referee/referee_insert_form.jsp">심판 지원</a>
	                </li>
                </c:if>
                <c:if test="${ empty sessionScope.loginUser }">
	                <li>
	                    <a id="myModalbtn">심판 지원</a>
	                </li>
                </c:if>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->
		<div id="open" class="openModal">
			<div class="open_back">
				<span class="close">&times;</span>
				<div><h1>회원 가입 후 심판 지원이 가능합니다!</h1></div>
			</div>
		</div>
		<div class="back"></div>
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
        </div>
        </div>
        
        <script>
        	$(document).ready(function(){
        		$("#myModalbtn").on("click", function(){
        			$("#open").show();
        			$(".back").show();
        		});
        		
        		$(".close").on("click", function(){
        			var url = ""
        			$("#open").hide();
        			$(".back").hide();
        			console.log("뭔데 시펄")
        		});
        	});
        </script>
    </body>
</html>
        