<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
   .league-div{
      width:90%;
      height:700px;
      background:#F8F8F8;
      margin:0 auto;
      
      border:1px solid #2965FF;    
   }
   
   .league-text1, .league-text2{
      display:block;
      float:left;
      font-size:40px;
      list-style:none;
      margin-top: 20px;
   }
   .insertInput{
      width:332px;   
   }
   select{
      width:332px;
      margin:10px;
      height:60px;
   }
   .nameTag{
      display:inline-block;
      width:280px;
   
      margin :10px;
   }
   
  #submitBtn{
 	float:right;
 	margin-right:87px;
 	margin-top:30px;
 	width:150px;
 	font-size:25px;
 	border-radius : 10px;
 	color:black;
 	background:#F8F8F8;
  }
  #submitBtn:hover{
  	cursor:pointer;
  	width:160px;
  	font-size:27px;
  	font-weight:600;
  	background:black;
  	color:white;
  }
</style>
</head>
<body>
<jsp:include page="${ application.contextPath }/views/admin/main/sideBar.jsp"/>

   <div style="width:100%;">
      <h1 style="margin-top:70px; margin-left:120px; font-weight:600; font-size:50px; margin-bottom:25px;">리그개설</h1>
      <hr style="width:1600px; border-bottom:1px solid black; margin-left:70px;">
      
      <!-- 리그입력  div-->
      <div class="league-div"> 
      <form action="${applicationScope.contextPath }/insertLeague.lg" method="post" id="leagueForm">
      
         <div>                  
                  <ul class="league-text1" style="margin-left:40px;">
                     <li class="liline"><span class="nameTag">리그명 :</span> <input  type="text" class="insertInput" id="leagueName" name="leagueName"></li>
                     <li class="liline"><span class="nameTag">주관 :</span> <input type="text" class="insertInput" id="lgHost" name="lgHost"></li>
                     <li class="liline"><span class="nameTag">심판1 : </span><select name="firstRef" id="firstRef" style="margin-left:11px;"><option>선택</option></select></li>
                     <li class="liline"><span class="nameTag">심판2 : </span><select name="secondRef" id="secondRef" style="margin-left:11px;"><option>선택</option></select></li>
                     <li class="liline"><span class="nameTag">심판3 : </span><select name="thirdRef" id="thirdRef" style="margin-left:11px;"><option>선택</option></select></li>
                     <li class="liline"><span class="nameTag">최소 인원 수 : </span><input type="number" min="4" max="10" class="insertInput" id="minPlayer" name="minPlayer" style="margin-left:11px;"></li>
                     <li class="liline"><span class="nameTag">교체선수 : </span><input type="number" min="1" max="5" class="insertInput" id="subPlayer" name="subPlayer" style="margin-left:11px;"></li>
                     <li class="liline"><span class="nameTag">상품 : </span><input type="text"class="insertInput" id="reward" name="reward" style="margin-left:11px;"></li>
                  </ul>
                  <ul class="league-text2" style="margin-left:40px;">
                     <li class="liline"><span class="nameTag">리그 넘버 : </span><input type="text" id="leagueId" name="leagueId" class="insertInput"></li>
                     <li class="liline"><span class="nameTag">리그 시작일 : </span><input type="date" id="startDate" name="startDate"></li>
                     <li class="liline"><span class="nameTag">리그 종료일 : </span><input type="date" id="endDate" name="endDate"></li>
                     <li class="liline"><span class="nameTag">지역 선택 :</span><select id="area" name="area"><option>선택</option></select></li>
                     <li class="liline"><span class="nameTag">총원 : </span><input type="number"  min ="8" max="10" class="insertInput" id="maxPlayer" name="maxPlayer"></li>
                     <li class="liline"><span class="nameTag">선발 인원 수 : </span><input type="number" min="4" max="6" class="insertInput" id="player" name="player"></li>
                     <li class="liline"><span class="nameTag">경기장[1] : </span><select id="stadiumf" name="stadiumf"><option>선택</option></select></li>
                     <li class="liline"><span class="nameTag">경기장[2] : </span><select id="stadiums" name="stadiums"><option>선택</option></select></li>
                  </ul>
               </div>
            </form>
         </div>
         
               <button type="submit" onclick="goSubmit();" id="submitBtn">작성</button>
      </div>
      
      
      <script type="text/javascript">
      	function goSubmit() {
      		$("#leagueForm").submit();
      	}
      
      </script>
      <!-- 첫 번쨰 심판 select -->
      <script type="text/javascript">
      
          $("#firstRef").on({"mouseenter": function(){
             $.ajax({
                url:"${applicationScope.contextPath}/selectRefereeFirst.lg",
                type:"get",
                success:function(data){
                   console.log(data);      
                   
                   $selectRef = $("#firstRef");
                   $selectRef.html("");
                   $select = $("<option>").text("선택");
                   $selectRef.append($select);
                   for(key in data) {
                      $refereeName = $("<option>").text(data[key].refName).val(data[key].refId);
                      $selectRef.append($refereeName);
                   }
                   
                },
                error:function(err){
                   console.log("첫 번째 심판 조회실패!");
                }
             });
             
          }, "click" : function(){
             $("#firstRef").off("mouseenter");
          }});
      
      </script>
      
      <!-- 두 번째 심판 -->
      <script type="text/javascript">
          $("#secondRef").on({"mouseenter" : function(){
            console.log("mouseenter 실행");
            $.ajax({
               url:"${applicationScope.contextPath}/selectRefereeFirst.lg",
               type:"get",
               success: function(data){
                  //console.log(data);
                  
                  $selectRef = $("#secondRef");
                  $selectRef.html("");
                  $select = $("<option>").text("선택");
                   $selectRef.append($select);
                  for(key in data) {
                     if(data[key].refId != $("#firstRef").val()){
                     $refereeName = $("<option>").text(data[key].refName).val(data[key].refId);
                      $selectRef.append($refereeName);
                     }else {
                        
                     }
                  }
                  
                  
               },
               error:function(err){
                  console.log("두 번쨰 심판 조회 실패!");
               }
               
            });
         }, "click" : function(){
            console.log("click 실행");
            if($("#firstRef").val() === "선택"){
               alert("첫 번째 심판을 선택 해 주세요")
               $("#secondRef").mouseenter(function(){
                  $.ajax({
                     url:"${applicationScope.contextPath}/selectRefereeFirst.lg",
                     type:"get",
                     success: function(data){
                        //console.log(data);
                        
                        $selectRef = $("#secondRef");
                        $selectRef.html("");
                        $select = $("<option>").text("선택");
                         $selectRef.append($select);
                        for(key in data) {
                           if(data[key].refId != $("#firstRef").val()){
                           $refereeName = $("<option>").text(data[key].refName).val(data[key].refId);
                            $selectRef.append($refereeName);
                           }else {
                              
                           }
                        }
                        
                        
                     },
                     error:function(err){
                        console.log("두 번쨰 심판 조회 실패!");
                     }
                     
                  });
               })
            }else{
               $("#secondRef").off("mouseenter");
               console.log("mouseenter 사라짐")
            }
         }}); 
         
         
         
      </script>
      
      
      <!-- 세 번쨰 심판 -->
      <script type="text/javascript">
         $("#thirdRef").on({"mouseenter" : function(){
            
            $.ajax({
               url:"${applicationScope.contextPath}/selectRefereeFirst.lg",
               type:"get",
               success: function(data){
                  //console.log(data);
                  
                  $selectRef = $("#thirdRef");
                  $selectRef.html("");
                  $select = $("<option>").text("선택");
                   $selectRef.append($select);
                  for(key in data) {
                     if(data[key].refId != $("#firstRef").val()){
                        if(data[key].refId !=$("#secondRef").val()){
                           $refereeName = $("<option>").text(data[key].refName).val(data[key].refId);
                            $selectRef.append($refereeName);
                        }
                     }else {
                        
                     }
                  }
                  
                  
               },
               error:function(err){
                  console.log("세 번쨰 심판 조회 실패!");
               }
               
            });
            
            
         }, "click" : function(){
            if($("#firstRef").val() === '선택'){
               alert("첫 번째 심판을 선택 해 주세요")
               
            }else if($("#secondRef").val() === '선택'){
               alert("두 번째 심판을 선택 해 주세요")
               
               
               $.ajax({
                  url:"${applicationScope.contextPath}/selectRefereeFirst.lg",
                  type:"get",
                  success: function(data){
                     //console.log(data);
                     
                     $selectRef = $("#thirdRef");
                     $selectRef.html("");
                     $select = $("<option>").text("선택");
                      $selectRef.append($select);
                     for(key in data) {
                        if(data[key].refId != $("#firstRef").val()){
                           if(data[key].refId !=$("#secondRef").val()){
                              $refereeName = $("<option>").text(data[key].refName).val(data[key].refId);
                               $selectRef.append($refereeName);
                           }
                        }else {
                           
                        }
                     }
                     
                     
                  },
                  error:function(err){
                     console.log("세 번쨰 심판 조회 실패!");
                  }
                  
               });
               
            }else{
               $("#thirdRef").off("mouseenter");
            }
            
         }});
      
         
      </script>
      
      
      
      
      
      <!-- 지역선택 -->
      <script type="text/javascript">
      $("#area").on({"mouseenter" : function(){
         $.ajax({
            url:"${applicationScope.contextPath}/selectLeagueArea.lg",
            type:"get",
            success:function(data){
               console.log(data);
               
               $areaSelect = $("#area");
               $areaSelect.html("");
               $choice = $("<option>").text("선택");
               $areaSelect.append($choice);
               for(key in data) {
                  $areaOption = $("<option>").text(data[key].areaName).val(data[key].areaCode);
                  $areaSelect.append($areaOption);
                  
               }
               
            },
            error: function(err){
               console.log("지역 조회 실패!")
            }
            
         });
         
      }, "click" : function(){
         $("#area").off("mouseenter");
      }});
      
      </script>
      
      
      
      <!--경기장선택  -->
      <script type="text/javascript">
      
         $("#stadiumf").on({"mouseenter":function(){
            
         var areaCode = $("#area").children(":selected").val();
         console.log(areaCode);
            $.ajax({
               
               url:"${applicationScope.contextPath}/selectStadium.lg",
               data:{areaCode:areaCode},
               type:"get",
               success:function(data){
                  console.log(data);
                  
                  $select = $("#stadiumf");
                  $select.html("");
                  $choice = $("<option>").text("선택");
                  $select.append($choice);
                  
                  if(data.length !== 0) {
                     
                     for(key in data){ 
                        $stadiumOption = $("<option>").text(data[key].stdName).val(data[key].stdId);
                        $select.append($stadiumOption);
                     
                     }
                  }else{
                     
                  }
               },
               error: function(err){
                  console.log("경기장 조회 실패!");
               }
               
            });
            
         }, "click" : function(){
            if($("#area").children(":selected").text() === "선택"){
               alert("지역을 선택해 주세요!");
            }else{
               $("#stadiumf").off("mouseenter");
            }
            
         }})
      
      </script>
      
      
      
      
      
      <!-- 두번 쨰 경기장 -->
      <script type="text/javascript">
      
      $("#stadiums").on({"mouseenter":function(){
         
         var areaCode = $("#area").children(":selected").val();
         console.log(areaCode);
            $.ajax({
               
               url:"${applicationScope.contextPath}/selectStadium.lg",
               data:{areaCode:areaCode},
               type:"get",
               success:function(data){
                  console.log(data);
                  
                  $select = $("#stadiums");
                  $select.html("");
                  $choice = $("<option>").text("선택");
                  $select.append($choice);
                  
                  if(data.length !== 0) {
                     
                     for(key in data){ 
                        if(data[key].stdName != $("#stadiumf").val()){
                        $stadiumOption = $("<option>").text(data[key].stdName).val(data[key].stdId);
                        $select.append($stadiumOption);
                        }else{
                           
                        }
                     }
                  }else{
                     
                  }
               },
               error: function(err){
                  console.log("경기장 조회 실패!");
               }
               
            });
            
         }, "click" : function(){
            if($("#area").children(":selected").text() === "선택"){
               alert("지역을 선택해 주세요!");
            }else if($("#stadiumf").val() ==='선택'){
               alert("첫 번째 구장을 선택해 주세요");
            }else{
               $("#stadiums").off("mouseenter");
            }
            
         }})
      </script>
</body>
</html>