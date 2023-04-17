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

	<c:when test="${param.result == 'loginfail'}">
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


	<%-- 날짜 선택하는 모달창
	<div id="dateChk" class="modal">
		<!-- <form class="modal-content animate" id="frmWrite" name="frmWrite" Method="POST"> -->
		<!-- <input type="hidden" id="aaa" value="${list}"/> -->
		<div class="modal-content animate">
			<div class="container">
				<h3 class="title">날짜 선택</h3>
				<span class="close" title="Close Modal">&times;</span>	<!-- 닫기버튼 -->
				
				<div class="d01 btn_group_write">  <!-- 날짜 선택 a태그 -->
				</div>
			</div>
		</div>
		<!-- </form> -->
	</div>
	 --%><!--  가장 먼저 뜸 -->
	 
	 
		<%-- 좌석 선택하는 모달창
	<div id="seatChk" class="seatModal">
		<!-- <form class="modal-content animate" id="frmWrite" name="frmWrite" Method="POST"> -->
		<!-- <input type="hidden" id="aaa" value="${list}"/> -->
		<div class="seatModal-content animate">
			<div class="container">
				<h3 class="title">좌석 선택</h3>
				<div id="seatscreen">스크린</div>
				<span class="close" title="Close Modal">&times;</span>	<!-- 닫기버튼 -->
				
				<div id="seatimg">
					<table id="table">

					</table>
					<div id="done"><button id="seatdone" onsubmit="return false">좌석 선택 완료</button></div>

				</div>
			</div>
		</div>
		<!-- </form> -->
	</div>
	
		
		<div>
			<div><p></p></div>
		</div>
		--%>

		
	<div id="list" align="center">
			<h2>KOREA BOX 예매하기</h2>
		<table class = "table" style="height: 300px;">
			<tr >
				<td width="200px" style="text-align: center;">날짜</td>
				<td id="selectdate" width="600px;"></td>
			</tr>
			<tr>
				<td style="text-align: center;">영화</td>
				<td id="movie" >
				<select name="pickMovie" id="movie">
           		 <c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
                <option class="price" value="10000">${list[i].mname}</option>
                        </c:forEach>
            </select>
				</td>
			</tr>
			
			<tr>
				<td style="text-align: center;" >상영시간</td>
				<td id="movietime">
				<input type="checkbox" name="time" value="10시">10시
				<input type="checkbox" name="time" value="11시">11시
				<input type="checkbox" name="time" value="12시">12시
				<input type="checkbox" name="time" value="13시">13시
				<input type="checkbox" name="time" value="14시">14시
				<input type="checkbox" name="time" value="15시">15시
				<input type="checkbox" name="time" value="16시">16시
				<input type="checkbox" name="time" value="17시">17시
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">인원선택</td>
				<td id="peopleCnt">
				<select name="count" id="count" onchange="changeSelection()">
				<option value="" selected>---선택---</option>
				<option value="2" >2</option>
				<option value="3" >3</option>
				<option value="4" >4</option>
				<option value="5" >5</option>
				<option value="6" >6</option>
				</select>
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">좌석선택</td>
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
	<button onclick="bookSeats()">확인하기</button>
				
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">결제금액</td>
				<td id="pay">
				<span id="costs">0</span>원
				</td>
			</tr>
		</table>
		
<%-- 		<div>
			<div>날짜선택 <span id="selectdate"></span></div>
		</div>
		<hr>
		<div>
			<div>영화</div>
			<img alt="" src="${pageContext.request.contextPath }/resources/CSS/test/pp.jpg" width="100px" height="100px">
			<span id="moviename">영화이름</span>
		</div>
			 --%>
		
	<br>
	<br>
	<br>
	<div id="successbtn"></div>
	</div>
	


	
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

		var seats = document.getElementsByClassName("seat");
		for (var i = 0; i < seats.length; i++) {
			seats[i].addEventListener("click", function() {
				selectSeat(this);
			});
		}
	</script>



</body>
</html>
<!-- 	<script>alert("로그인이 필요합니다"); location.href="../login"</script> -->