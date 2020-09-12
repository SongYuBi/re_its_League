<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeMain.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/noticeDefault.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<style>
/* 	.header {
		grid-area: header;
		background-color: LightSeaGreen;
	}

	.leftCol {
		grid-area: leftCol;
		background-color: orange;
	}

	.rightCol {
		grid-area: rightCol;
		background-color: lightblue;
	}

	.midTop {
		grid-area: midTop;
		background-color: lightgrey;
	}

	.midBottom {
		grid-area: midBottom;
		background-color: pink;
	}

	.footer {
		grid-area: footer;
		background-color: lightgreen;
	}

	.wrapper {
		display: grid;
		grid-template-columns: 1fr 4fr 4fr 1fr;
	    grid-template-rows: 50px 100px 100px 30px; 
		grid-auto-rows: minmax(100px, auto);
		grid-template-areas: "header header header header"
			"leftCol midTop midTop rightCol"
			"leftCol midBottom midBottom rightCol" "footer footer footer footer";
		grid-gap: 5px;
	}
     .outer {
		width:800px;
		height:500px;
		background:white;
		color:darkblue;
		margin-top:50px;
		margin-left:auto;
		margin-right:auto;
	}
	
 */
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

	<jsp:include page="../../common/sideBar.jsp"></jsp:include>
	
	<div class="outer">
	
	
	
	<div class="logo" align="center">
		<img alt="" src="../../../resources/image/logo_jess.png" style="width:20%">
	</div>

	
	<div class="wrapper">
		<div class="head">
		<div align="center"></div>
		<div align="right">
			<span></span>
			<span></span>
			<span></span>
		</div> 
		</div>
		<div class="header"></div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midtop">
		<div class="scontA">
			<div class="bbsTopArea"></div>
		<br>
		<br>
		<br>
		<br>
		<h2 id="container_title">공지사항<span class="sound_only"> 목록</span></h2>
	

		<!-- 게시판 목록 시작 { -->
		<div id="bo_list" style="width:100%">

	    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
    	<div class="bo_fx">
        	<div id="bo_list_total">
            	<span>Total nnnnn건</span>
            	1 페이지
        	</div>

		<!-- 게시판 검색 시작 { -->
		<fieldset id="bo_sch">
			<form name="fsearch" method="get">
    		<input type="hidden" name="bo_table" value="3010">
    		<input type="hidden" name="sca" value="">
    		<input type="hidden" name="sop" value="and">
    		<label for="sfl" class="sound_only">검색대상</label>
    		<select name="sfl" id="sfl">
        		<option value="wr_subject">제목</option>
        		<option value="wr_content">내용</option>
        		<option value="wr_subject||wr_content">제목+내용</option>
    		</select>
    		<label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
    		<input type="text" name="stx" value="" required="" id="stx" class="frm_input required" size="15" maxlength="20">
    		<input type="submit" value="검색" class="btn_search">
    		</form>
		</fieldset>
		<!-- } 게시판 검색 끝 -->


    	</div>
 	   <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    	<form name="fboardlist" id="fboardlist" action="" onsubmit="" method="post">
    	<input type="hidden" name="bo_table" value="3010">
    	<input type="hidden" name="sfl" value="">
    	<input type="hidden" name="stx" value="">
    	<input type="hidden" name="spt" value="">
    	<input type="hidden" name="sca" value="">
    	<input type="hidden" name="sst" value="wr_datetime desc">
    	<input type="hidden" name="sod" value="">
    	<input type="hidden" name="page" value="1">
    	<input type="hidden" name="sw" value="">

    	<div class="tbl_head01 tbl_wrap">
    	    <table>
			<colgroup>
				<col width="8%">
				<col width="">
				<col width="10%">
				<col width="12%">
				<col width="8%">
			</colgroup>
    	    <caption>공지사항 목록</caption>
    	    <thead>
    	    	<tr>
            		<th scope="col">번호</th>
                	<th scope="col">제목</th>
            		<th scope="col"><a href="">날짜</a></th>
            		<th scope="col"><a href="">조회</a></th>
            	</tr>
        	</thead>
        	<tbody>
            	<tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="../notice/noticeDetail.jsp">SEMI PROJECT에 대하여...</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 2</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 3</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 4</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 5</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 6</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 7</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 8</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 9</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
                <tr class="bo_notice" bgcolor="#ffffff" onmouseover="this.style.backgroundColor=&#39;#fafafa&#39;" onmouseout="this.style.backgroundColor=&#39;#ffffff&#39;" style="background-color: rgb(255, 255, 255);"> 
            		<td class="td_num td_noti"><strong>공지</strong></td>
                    <td class="td_subject"><a href="">공지 내용 10</a></td>
            		<td class="td_datetime">날짜</td>
            		<td class="td_num">조회수</td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
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
	</div>
	
</div>
</body>
</html>