<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>선수 관리</title>
<style>
	.member_list{
		font-size: 150%;
		
	}
	.check_box_size{
		zoom: 1.5;
	}
	.list_margin{
	
	}
	

</style>
</head>
<body>
	<h2>선수 관리</h2>
	<div style="float:left;">
		<input type="text" id="search_member" name="search_member" class="w3-input w3-border" style="width:400px;" >
	</div>
	<div style="float:right;">
		<button name="member_management" id="member_management"  class="w3-input w3-border" style="width:100px;">검색</button>
	</div>
	<div>
	<table id="userListTable"> 
	 	<thead>
	 		
	 	</thead>
	 	<tbody  class="member_list">
	 		<!-- 임의 값 넣기 -->
	 		<tr>
	 			<td style="padding:10px;">asada@naver.com</td>
	 			<td style="padding:10px;">김*호</td>
	 			<td style="padding:10px;"><input type="checkbox" id="" class="check_box_size" ></td>
	 		</tr>
	 		<tr>
	 			<td style="padding:10px;">asada@naver.com</td>
	 			<td style="padding:10px;">김*호</td>
	 			<td style="padding:10px;"><input type="checkbox" id="" class="check_box_size" ></td>
	 		</tr>
	 		<tr>
	 			<td></td>
	 			<td></td>
	 			<td></td>
	 		</tr>
	 	</tbody>
	</table>

	</div>
	<br><br>
	<button class="w3-input w3-border" id="member_out" name="member_out" style="width:100px; float:right" onclick="member_out();">방출</button>
	<script>
	function member_out(){
		var array = "";
		if(confirm("선수를 방출 하시겠습니까? ")){
			$("#userListTable").find(':checkbox').each(function(){
				array+= $(this).val();
				/* 체크박스의 값을 부여해서 하나하나 담아서 컨트롤러로 넘겨주면 될듯 */
			})
		}else{
			
		}
		
	}</script>
		<script>
	$(function(){
		$.ajax({
			url:"memberList.club",
			type:"get",
			success: function(data){
				console.log(data);
				
				var $tableBody = $("#userListTable tbody");
				
				$tableBody.html('');
				
				$.each(data, function(index,value){
					var $tr = $('<tr>');
					var $emailTd = $("<td>").text(value.유저 이메일);
					var $nameTd = $("<td>").text(value.유저 이름);
					var $checkTd = $("<td><input type='checkbox'/></td>");
					
					$tr.append($emailTd);
					$tr.append($nameTd);
					$tr.append($checkTd);
					$tableBody.append($tr);
					
				});
			},
			error: function(err){
				console.log("check박스 불러오기 실패");
				
			}
		});
	});

	</script>
</body> 
</html>