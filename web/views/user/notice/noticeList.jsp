<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeMain.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeDefault.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<style>
	body {
		font-family: 'NotoKrR', '나눔 고딕', NotoKrR Gothic, "맑은 고딕", Malgun Gothic, '돋움',dotum,Helvetica,sans-serif;
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
		border:1px solid white;
		text-align:center;
	}
	
	.table-area {
		width:650px;
		height:350px;
		margin:0 auto;
	}
	
	.search-area {
		width:650px;
		margin:0 auto;
	}
</style>
</head>
<body>

	<jsp:include page="${ application.getContextPath() }/views/common/sideBar.jsp"></jsp:include>
	
	<div class="outer">
		<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
		</div>
		
		<div class="scontA">
			<div class="bbsTopArea"></div>
		<br>
		
		<h2 id="container_title">공지사항<span class="sound_only"> 목록</span></h2>
	

		<!-- 게시판 목록 시작 { -->
		<div id="bo_list" style="width:100%">

	    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
    	<div class="bo_fx">
        	

		<!-- 게시판 검색 시작 { -->
		<fieldset id="bo_sch">
			<form name="fsearch" method="get">
    		<select name="sfl" id="sfl">
        		<option value="wr_subject">제목</option>
        		<option value="wr_content">내용</option>
        		<option value="wr_subject||wr_content">제목+내용</option>
    		</select>
    		<input type="text" name="stx" value="" required="" id="stx" class="frm_input required" size="15" maxlength="20">
    		<input type="submit" value="검색" class="btn_search">
    		<!-- <c:if test="${ !empty sessionScope.loginUser and sessionScope.loginUser.userId.equals('admin') }"> -->
				<button class="btn_search" onclick="location.href='../notice/noticeInsertForm.jsp'">작성하기</button>
			<!-- </c:if> -->
    		</form>
		</fieldset>
		<!-- } 게시판 검색 끝 -->


    	</div>
 	   <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    	<div class="tbl_head01 tbl_wrap">
    	    <table>
    	    <thead>
    	    	<tr>
            		<th scope="col">번호</th>
                	<th scope="col">제목</th>
                	<th scope="col">작성자</th>
            		<th scope="col"><a href="">날짜</a></th>
            		<th scope="col"><a href="">조회</a></th>
            	</tr>
        	</thead>
        	<tbody>
        	<c:forEach var="n" items="${ requestScope.list }">
            	<tr class="bo_notice" bgcolor="#ffffff" onmouseover="" onmouseout="" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong><c:out value="${ n.nno }"/></strong></td>
                    <td class="td_subject"><c:out value="${ n.title }"/></td>
                    <td class="td_writer"><c:out value="${ n.nickname }"/></td>
            		<td class="td_datetime"><c:out value="${ n.nCount }"/></td>
            		<td class="td_num"><c:out value="${ n.nDate }"/></td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="" onmouseout="" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 2</a></td>
                    <td class="td_writer">작성자</td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
           	</c:forEach>    
            </tbody>
        </table>
    </div>
</div>



<!-- 페이지 -->
<nav class="pg_wrap">
	<span class="pg">
		<span class="sound_only">열린</span>
		<strong class="pg_current">1</strong>
		<span class="sound_only">페이지</span>
		<a href="" class="pg_page">2<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">3<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">4<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">5<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">6<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">7<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">8<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">9<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page">10<span class="sound_only">페이지</span></a>
		<a href="" class="pg_page pg_next">다음</a>
		<a href="" class="pg_page pg_end">맨끝</a>
	</span>
</nav>


<!-- } 게시판 목록 끝 -->
    </div>
		
		<div class="midBottom"></div>
		<div class="footer"></div>
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
				
				location.href = "${applicationScope.contextPath}/selectOne.no?num=" + num;
			});
		});
	</script>
</body>
</html>