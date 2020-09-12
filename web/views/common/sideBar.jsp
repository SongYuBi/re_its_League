<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <a href="${pageContext.request.contextPath }/views/user/league/leagueMainPage.jsp">리그</a>
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
                <li>
                    <a href="${pageContext.request.contextPath }/views/user/referee/referee_insert_form.jsp">심판 지원</a>
                </li>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
        </div>