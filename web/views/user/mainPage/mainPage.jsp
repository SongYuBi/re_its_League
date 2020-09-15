<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/userDefaultLayout.css">
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>Insert title here</title>

<style type="text/css">
 

.wBtn {
	position: relative;
}

.wBtn button {
	position: absolute;
	z-index: 10;
	top: 50%;
	transform: translateY(-50%);
	width: 71px;
	height: 71px;
	border-radius: 100%;
	border: none;
	background: transparent;
}

.wBtn button:before {
	font-family: "xeicon";
	color: #000;
	font-size: 30px;
}

.wBtn button.slick-prev {
	left: -250px;
	font-size: 0;
	color: transparent;
}

.wBtn button.slick-prev:before {
	content: "\e906";
}

.wBtn button.slick-next {
	right: -70px;
	font-size: 0;
	color: transparent;
}

.wBtn button.slick-next:before {
	content: "\e907";
}

*:focus {
	outline: none;
}

.datediv {
	background-color: white;
}

.datediv:hover {
	cursor: pointer;
}

.datedivB {
	background-color: #3534A5;
	border: none;
	color: white;
}

.wdiv {
	height: 120px !important;
	margin: 34px;
	width: 300px;
}

select {
	width: 100px;
	font-size: 20px !important;
	height: 40px;
	padding: 0 0 0 10px;
	margin: 0 !important;
}

h3 {
	font-size: 2em !important;
}

tr {
	height: 100px;
}

th {
	font-size: 2em;
	text-align: center !important;
}
 .toplo{
 	list-style:none;
    margin:0;
    padding:0;
 }
 ul li{
 	float: right;
 	margin : 2px;
 	}
 .lil,.banner{
 	cursor:pointer;
 	pont-size:20px;
 }
 .ta{
 	border-bottom:1px solid black;
 }

</style>

</head>
<body>

	<!-- 로그인 아이디 또는 비밀번호가 틀렸을때 나타나는 다이얼로그 박스 -->
	<c:if test="${ !empty requestScope.login }">

	<!-- The Modal -->
    <div id="myModal_login" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>    
        <br>
        <br>                                                           
        	<h4> ${login }</h4>
	
	</div>

      </div>
 
</c:if>




	<jsp:include
		page="${ application.contextPath }/views/common/sideBar.jsp"/>
		
	<jsp:include
		page="${ application.contextPath }/views/user/comman/login.jsp"/>
		
	<div class="wrapper">
		<div class="head">
			<div align="right">
			<c:if test="${ empty sessionScope.loginUser }">
				<ul class="toplo">
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div id="myBtn">로그인</div></li>
					<li style="font-size: 18px;">또는</li>
					<li class="lil" style="color: #4169E1; font-size: 20px;"><div><a href="${ application.contextPath }/semi/views/user/login/insert_member.jsp">회원가입</a></div></li>

				</ul>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
			<div id="userInfo">
				<label><c:out value="${sessionScope.loginUser.pfName }" />
					님의 방문을 환영합니다.</label>
				<div class="btn" align="right">
					<div id="changeInfo" onclick="updateMember();">정보수정</div>
					<div id="logoutBtn" onclick="logout();">로그아웃</div>
				</div>
			</div>
		</c:if>
				<div align="center">
					<img src="resources/image/chu/logo.png" style="cursor: pointer" onclick="reHome();">
				</div>
			</div>
		</div>
		<div class="header">
			<div class="visual" align="center">
				<div>
					<img src="resources/image/sj/mainImage1.jpg" class="banner">
				</div>
				<div>
					<img src="resources/image/sj/mainImage2.jpg" class="banner">
				</div>
				<div>
					<img src="resources/image/sj/mainImage3.jpg" class="banner">
				</div>
			</div>
		</div>
		<div class="leftCol"></div>
		<div class="rightCol"></div>
		<div class="midTop">
			<div class="responsive wBtn">
				<div align="center" class="datediv wdiv datedivB" onclick="chioe1(this);">
					<h3>22</h3><span>화</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>23</h3><span>수</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>24</h3><span>목</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>25</h3><span>금</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>26</h3><span style="color: blue;">토</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>27</h3><span style="color: red;">일</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>28</h3><span>월</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>29</h3><span>화</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>30</h3><span>수</span>
				</div>
				<div align="center" class="datediv wdiv" onclick="chioe1(this);">
					<h3>1</h3><span>목</span>
				</div>
			</div>
			<div class="container-my">
				<div class="table-wrapper">
					<div class="table-title"></div>

					<!-- table div -->
					<div style="margin-top: 70px;">
						<select id="selectArea" onchange="selectAreaF(this);">
							<option value="S1">서울</option>
							<option value="GG1">경기</option>
							<option value="I1">인천</option>
						</select>

						<!-- 1 -->
						<div class="hidediv">
							<table class="table table-bordered ta tb1"style="margin-top: 40px;" align="center">
								<thead>
									<tr>
										<th style="padding: 10px 10px;"><p>시간</p></th>
										<th style="padding: 10px 10px;"><p>리그</p></th>
										<th style="padding: 0 0 30px 0;"><span>팀1</span> vs <span>팀2</span></th>
										<th style="padding: 10px 10px;"><p>경기장<p></th>
									</tr>
								</thead>
								<tbody id="matchList" align="center" style="font-size:20px; font-weight:450;">
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer" align="center">
			<img src="resources/image/chu/footer.png">
		</div>
	</div>

	<!-- slider banner -->
	<script type="text/javascript">
		$(".visual").slick({
			slidesToShow : 1, // 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,
			arrows : false,
			autoplay : true,
			autoplaySpeed : 3000,
			infinite : true,
			speed : 1000,
			pauseOnHover : true,
			responsive : [ { /* 반응형웹*/
				breakpoint : 960, /*  기준화면사이즈 */
				settings : {
					slidesToShow : 2
				}
			/*  사이즈에 적용될 설정 */
			}, { /* 반응형웹*/
				breakpoint : 768, /*  기준화면사이즈 */
				settings : {
					slidesToShow : 1
				}
			/*  사이즈에 적용될 설정 */
			} ]
		});
		
	</script>

	<!-- 날짜 -->
	<script type="text/javascript">
		$('.slider-single').slick({
			slidesToShow : 1,
			slidesToScroll : 1,
			arrows : true,
			fade : false,
			adaptiveHeight : true,
			infinite : false,
			useTransform : true,
			speed : 400,
			cssEase : 'cubic-bezier(0.77, 0, 0.18, 1)',
		});

		$('.responsive').slick({
			infinite : false,
			speed : 500,
			slidesToShow : 5,
			slidesToScroll : 5,
			responsive : [ {
				breakpoint : 1024,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1,
					infinite : true,
				}
			}, {
				breakpoint : 600,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			}, {
				breakpoint : 480,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			}
			]
		});

		$(".datediv").click(function() {
			$(this).siblings().removeClass("datedivB");
			$(this).addClass("datedivB");

			if ($(this).is(".datedivB") == "true") {

			}
		});
		
		
	</script>

  <script type="text/javascript">

      $(function(){
    	  var day = $(".datedivB").children("h3").text();
		  var date = new Date();
		  var year = date.getFullYear();
		  var month = date.getMonth() + 1;
		  if(month < 10) {
	            month = '0' + month;
	         }
	         if(day < 10) {
	            
	            day = "0"  + day;
	         }
	         if(day == 1) {
	            month = month*1 + 1;
	         month +="";
	            
	         }
	         var fullDate = year + month + day;
	         console.log(fullDate);
	         
	          $.ajax({
	            url : "${applicationScope.contextPath}/selectMain.lg",
	            data : {fullDate:fullDate},
	            type : "get",
	            success : function(data) {
	               $tbody = $("table tbody");
	               
	               $tbody.html("");
	               
	               for(var key in data){
	            	   $tr = $("<tr>");
	            	   $mDateTd = $("<td>").text(data[key].MATCH_DATE);
	            	   $mLeagueTd = $("<td>").text(data[key].LG_NAME);
	            	   $mClubNameTd = $("<td>").text(data[key].CLUB_FID + " VS " + data[key].CLUB_SID);
	            	   $mStadiumTd = $("<td>").text(data[key].STD_FID + ", " + data[key].STD_SID);
	            	   
	            	   
	            	   $tr.append($mDateTd);
	            	   $tr.append($mLeagueTd);
	            	   $tr.append($mClubNameTd);
	            	   $tr.append($mStadiumTd);
	            	   
	            	   $tbody.append($tr);
	            	   
	               }
	               
	            },
	            error : function(err){
	               console.log("메인페이지 리그조회실패!");
	            }
	            
	         });  
      });
      
      //날짜선택 function
      function chioe1(val) {
         var day = $(val).children("h3").text();
         var date = new Date();
         var year = date.getFullYear();
         var month = date.getMonth() + 1;
         if(month < 10) {
            month = '0' + month;
         }
         if(day < 10) {
            
            day = "0"  + day;
         }
         if(day == 1) {
            month = month*1 + 1;
         month +="";
            
         }
         var fullDate = year + month + day;
         console.log(fullDate);

          $.ajax({
            url : "${applicationScope.contextPath}/selectMain.lg",
            data : {fullDate:fullDate},
            type : "get",
            success : function(data) {
               $tbody = $("table tbody");
               
               $tbody.html("");
               
               for(var key in data){
            	   $tr = $("<tr>");
            	   $mDateTd = $("<td>").text(data[key].MATCH_DATE);
            	   $mLeagueTd = $("<td>").text(data[key].LG_NAME);
            	   $mClubNameTd = $("<td>").text(data[key].CLUB_FID + " VS " + data[key].CLUB_SID);
            	   $mStadiumTd = $("<td>").text(data[key].STD_FID + ", " + data[key].STD_SID);
            	   
            	   $tr.append($mDateTd);
            	   $tr.append($mLeagueTd);
            	   $tr.append($mClubNameTd);
            	   $tr.append($mStadiumTd);
            	   
            	   $tbody.append($tr);
            	   
               }
               
            },
            error : function(err){
               console.log("메인페이지 리그조회실패!");
            }
            
         });  
       
      };
      

      
      
      /* 다이얼로그 박스 함수  */
      
      
	$(function (){

		// Get the modal
	    var modal = document.getElementById('myModal_login');

	    // Get the button that opens the modal
	    var btn = document.getElementById("myBtn");

	    // Get the <span> element that closes the modal
	    var span = document.getElementsByClassName("close")[0];                                          

	    // When the user clicks on the button, open the modal 
	   
	        modal.style.display = "block";
	 

	    // When the user clicks on <span> (x), close the modal
	    span.onclick = function() {
	        modal.style.display = "none";
	        location.href="${ application.contextPath }/semi/index.jsp";

	    }

	    // When the user clicks anywhere outside of the modal, close it
	    window.onclick = function(event) {
	        if (event.target == modal) {
	            modal.style.display = "none";
	        }
	    }
	})

   </script>
   
   		<!-- SELECT -->
      <script type="text/javascript">
   	function selectAreaF(val){
   		var selectArea = $(val).find(":selected").val();
   		
   		var day = $(".datedivB").children("h3").text();
   		 var date = new Date();
    	 var year = date.getFullYear();
    	 var month = date.getMonth() + 1;
    	 if(month < 10) {
   	     month = '0' + month;
   			  }
         if(day < 10) {
        
   		     day = "0"  + day;
  	 	  }
   		  if(day == 1) {
   		     month = month*1 + 1;
    		 month +="";
    	    	
  			   }
  		   var fullDate = year + month + day;
    	   console.log(fullDate);
   		
   		
   		$.ajax({
   			url : "${applicationScope.contextPath}/selectArea.lg",
   			data : {selectArea : selectArea, fullDate : fullDate},
   			type: "get",
   			success : function(data){
   				$tbody = $("table tbody");
                
                $tbody.html("");
                
                for(var key in data){
             	   $tr = $("<tr>");
             	   $mDateTd = $("<td>").text(data[key].MATCH_DATE);
             	   $mLeagueTd = $("<td>").text(data[key].LG_NAME);
             	   $mClubNameTd = $("<td>").text(data[key].CLUB_FID + " VS " + data[key].CLUB_SID);
             	   $mStadiumTd = $("<td>").text(data[key].STD_FID + ", " + data[key].STD_SID);
             	   
             	   $tr.append($mDateTd);
             	   $tr.append($mLeagueTd);
             	   $tr.append($mClubNameTd);
             	  $tr.append($mStadiumTd);
             	   
             	   
             	   $tbody.append($tr);
             	   
                }
                
                
   			},
   			error : function(err) {
   				console.log("지역조회실패!");
   			}
   			
   		});
   	}
   
   </script>
   <script type="text/javascript">
   	function reHome(){
   		location.href = "${applicationScope.contextPath}/index.jsp";
   		
   	}
   </script>

</body>
</html>