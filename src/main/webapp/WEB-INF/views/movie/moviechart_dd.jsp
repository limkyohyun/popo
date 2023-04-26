<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>

<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />



<!--  예매 (사용자) 
<c:choose>

	<c:when test="${param.re  sult == 'loginfail'}">
		<script type="text/javascript">
		Swal.fire({
			position: 'center',
			icon: 'error',
			title: '아이디 혹은 비밀번호가 틀림',
			showConfirmButton: false,
			timer: 1500
		})
		</script>
	</c:when>
</c:choose>


-->
<!DOCTYPE html>
<html>
<style>
		.seat {
			display: inline-block;
			width: 30px;
			height: 30px;
			border: 1px solid black;
			margin: 5px;
			text-align: center;
			line-height: 30px;
			font-size: 10px;
			cursor: pointer;
		}
		.selected {
			background-color: yellow;
		}

</style>

<head>
<meta charset="UTF-8">


	<!-- 구글 폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
	
<title>KOREA BOX</title>


	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/CSS/reserve/reserveuser.css"/>
   <!-- 파비콘 설정-->
   <link rel="shortcut icon" href="${path}/resources/img/movie_favicon.ico" type="image/x-icon">



</head>

<body>
		<form name="form1" id="form1" action="movieticketsave", method="post">
	<div id="list" align="center">
  <input type="hidden" name="time" value="">
  <input type="hidden" name="pay" value="">
  <input type="hidden" name="seat" value="">
  
		<table class = "table" style="height: 300px;">
					<h2>CGV 영화예매</h2>&emsp; 
		<input type="text" name="id" id="id" value="${dto.id}" hidden>
			<tr >
				<td id="selectdate" width="600px;">
				예약날자
				<input type="date" name ="day">
				</td>
			</tr>
			<tr>
				
				<td id="movie" >
				영화
				<select name="mname" id="mname">
           		 <c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
                <option class="price" value="${list[i].mname}">${list[i].mname}</option>
                        </c:forEach>
            </select>
				</td>
			</tr>
			
			<tr>
				
				<td id="movietime">
				상영시간
				<input type="checkbox" id="time"  name="time" value="10">10시
				<input type="checkbox" id="time" name="time" value="11">11시
				<input type="checkbox" id="time" name="time" value="12">12시
				<input type="checkbox" id="time" name="time" value="13">13시
				<input type="checkbox" id="time" name="time" value="14">14시
				<input type="checkbox" id="time" name="time" value="15">15시
				<input type="checkbox" id="time" name="time" value="16">16시
				<input type="checkbox" id="time" name="time" value="17">17시
				</td>
			</tr>
			<tr>
				
				<td id="peopleCnt">
				인원선택
				<select name="count" id="count" onchange="changeSelection()">
				<option value="1" selected>---선택---</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				</select>
				</td>
			</tr>
			<tr>
				<td id="seat">
	<h1>좌석 예매</h1>
	<p>원하는 좌석을 선택해주세요.</p>
	<div id="seat-map">
		<div class="seat">A1</div>
		<div class="seat">A2</div>
		<div class="seat">A3</div>
		<div class="seat">A4</div>
		<div class="seat">A5</div>
		<div class="seat">A6</div>
		<div class="seat">A7</div>
		<div class="seat">A8</div>
		<div class="seat">A9</div>
		<div class="seat">A10</div>
	</div>
	
	<div id="seat-map">
		<div class="seat">A1</div>
		<div class="seat">A2</div>
		<div class="seat">A3</div>
		<div class="seat">A4</div>
		<div class="seat">A5</div>
		<div class="seat">A6</div>
		<div class="seat">A7</div>
		<div class="seat">A8</div>
		<div class="seat">A9</div>
		<div class="seat">A10</div>
	</div>
	
		<div id="seat-map">
		<div class="seat">B1</div>
		<div class="seat">B2</div>
		<div class="seat">B3</div>
		<div class="seat">B4</div>
		<div class="seat">B5</div>
		<div class="seat">B6</div>
		<div class="seat">B7</div>
		<div class="seat">B8</div>
		<div class="seat">B9</div>
		<div class="seat">B10</div>
	</div>
	
		<div id="seat-map">
		<div class="seat">C1</div>
		<div class="seat">C2</div>
		<div class="seat">C3</div>
		<div class="seat">C4</div>
		<div class="seat">C5</div>
		<div class="seat">C6</div>
		<div class="seat">C7</div>
		<div class="seat">C8</div>
		<div class="seat">C9</div>
		<div class="seat">C10</div>
	</div>
	
		<div id="seat-map">
		<div class="seat">D1</div>
		<div class="seat">D2</div>
		<div class="seat">D3</div>
		<div class="seat">D4</div>
		<div class="seat">D5</div>
		<div class="seat">D6</div>
		<div class="seat">D7</div>
		<div class="seat">D8</div>
		<div class="seat">D9</div>
		<div class="seat">D10</div>
	</div>
				
				</td>
			</tr>
			<tr>
			
				<td id="pay">
				결제금액 <span id="costs">0</span>원
				</td>
			</tr>
			
			<tr>
			<td colspan="2">
		<button type="button" onclick="submitForm()">예약하기</button>
		</td>
		</tr>
		</table>
	</form>


	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${path}/resources/JS/reserve/reserveuser.js"></script>
	<script>
	
	
		var selectedSeats = [];
		let costs = document.querySelector('#costs'); // 가격
		var maxSeats;
		
		function changeSelection(){
			var count = document.getElementById("count");
		    
		    // 선택한 option의 value, 텍스트
		     maxSeats = count.options[count.selectedIndex].value;
		     costs.textContent = maxSeats * 10000;
		}
		
		function selectSeat(seat) {
			if (selectedSeats.length < maxSeats || seat.classList.contains("selected")) {
					// 최대 선택 가능한 좌석 수보다 적거나, 이미 선택한 좌석일 경우에는 선택 가능
				seat.classList.toggle("selected");
				var index = selectedSeats.indexOf(seat.innerHTML);
				if (index === -1) {
					selectedSeats.push(seat.innerHTML);
				} else {
					selectedSeats.splice(index, 1);
				}
				document.getElementById("count").innerHTML = selectedSeats.length;
			} else {
				alert("한 번에 최대 " + maxSeats + "개까지 선택 가능합니다.");
			}
		}

		function bookSeats() {
			if (selectedSeats.length === 0) {
				alert("좌석을 선택해주세요.");
			} else {
				alert("선택한 좌석: " + selectedSeats.join(", "));
			}
		}
		var seats;
		seats = document.getElementsByClassName("seat");
		for (var i = 0; i < seats.length; i++) {
			seats[i].addEventListener("click", function() {
				selectSeat(this);
			});
		}
		
		
		// form1이라는 form의 submit 버튼을 클릭할 때 호출되는 함수
		function submitForm() {
			if (!selectedSeats || selectedSeats.length === 0) {
			    alert("좌석을 선택해주세요.");
			    return;
			  }

		    // form1의 id, day, mname, time, count 값을 가져옴
		    var id = document.getElementById("id").value;
		    var day = document.getElementsByName("day")[0].value;
		    var mname = document.getElementsByName("mname")[0].value;
		    var time = "";
		    var timeInputs = document.getElementsByName("time");
		    for (var i = 0; i < timeInputs.length; i++) {
		        if (timeInputs[i].checked) {
		            time += timeInputs[i].value;
		        }
		    }
		    var seat = selectedSeats.join(",");
		    var pay = costs.textContent;
		    
		    // form1에 hidden으로 값을 설정
  document.getElementById("id").value = id;
  document.getElementsByName("day")[0].value = day;
  document.getElementsByName("mname")[0].value = mname;
  document.getElementsByName("time")[0].value = time;
  document.getElementsByName("pay")[0].value = pay;
  document.getElementsByName("seat")[0].value = seat;
      
		    // form1을 submit
		    document.getElementById("form1").submit();
		}


	</script>



</body>
</html>
<!-- 	<script>alert("로그인이 필요합니다"); location.href="../login"</script> -->