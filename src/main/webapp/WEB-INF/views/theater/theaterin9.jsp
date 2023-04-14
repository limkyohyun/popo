<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>title</title>
  <!-- Bootstrap cdn 설정 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  <!-- Tab을 구성할 영역 설정-->
  <div align="center" style="margin:10px;">
    <!-- Tab 영역 태그는 ul이고 클래스는 nav와 nav-tabs를 설정한다. -->
    <ul class="nav nav-tabs">
      <!-- Tab 아이템이다. 태그는 li과 li > a이다. li태그에 active는 현재 선택되어 있는 탭 메뉴이다. -->
      <li class="active"><a href="#home" data-toggle="tab">서울</a></li>
      <!-- a 태그의 href는 아래의 tab-content 영역의 id를 설정하고 data-toggle 속성을 tab으로 설정한다. -->
      <li><a href="#profile" data-toggle="tab">경기</a></li>
      <li><a href="#messages" data-toggle="tab">인천</a></li>
      <li><a href="#settings" data-toggle="tab">강원</a></li>
    </ul>
    <!-- Tab이 선택되면 내용이 보여지는 영역이다. -->
    <!-- 태그는 div이고 class는 tab-content로 설정한다. -->
    <div class="tab-content">
      <!-- 각 탭이 선택되면 보여지는 내용이다. 태그는 div이고 클래스는 tab-pane이다. -->
      <!-- active 클래스는 현재 선택되어 있는 탭 영역이다. -->
      <div class="tab-pane fade in active" id="home">
      					<div class="area">
						<ul>
						<li>
						<a title="CGV강남" href="theaterin"class="btn">CGV강남</a></li>
						<li><a title="CGV강변" href="theaterin2"class="btn">CGV강변</a></li>
						<li><a title="CGV건대입구" href="theaterin3"class="btn">CGV건대입구</a></li>
						<li><a title="CGV구로" href="theaterin4"class="btn">CGV구로</a></li>
						<li><a title="CGV대학로" href="theaterin5"class="btn">CGV대학로</a></li>

						</ul>
						
						</div>
						</div>
      
      <!-- id는 고유한 이름으로 설정하고 tab의 href와 연결되어야 한다. -->
      <div class="tab-pane fade" id="profile">
						<div class="area">
						<ul>
						<li><a title="CGV경기광주" href="theaterin6"class="btn">CGV경기광주</a></li>
						<li><a title="CGV고양행신" href="theaterin7"class="btn">CGV고양행신</a></li>
						<li><a title="CGV광교" href="theaterin8"class="btn">CGV광교</a></li>
						<li><a title="CGV광교상현" href="theaterin9"class="btn">CGV광교상현</a></li>
						<li><a title="CGV광명역" href="theaterin10"class="btn">광명역</a></li>
						</ul>
						</div>
					
      
      </div>
      <!-- fade 클래스는 선택적인 사항으로 트랜지션(transition)효과가 있다.
      <!-- in 클래스는 fade 클래스를 선언하여 트랜지션효과를 사용할 때 in은 active와 선택되어 있는 탭 영역의 설정이다. -->
      <div class="tab-pane fade" id="messages">


</div>
      <div class="tab-pane fade" id="settings">Settings 메뉴</div>
    </div>
  </div>
  
	<div class="wrap-theater">
		<h3><img src="image/h3_theater.gif" alt="THEATER"></h3>
		<div class="sect-theater">
			<h4 class="theater-tit"><span>CGV광교</span></h4>
			<div class="wrap-theaterinfo">
				<div class="box-image">
					<div id="theater_img_container" class="thumb-image">
					<img src="image/cgv9.jpg" alt="CGV광교 극장">
					</div>
				</div>
				<div class="box-contents">
					<div class="theater-info">
						<strong class="title">
							"경기도 수원시 영통구 하동 1017-2 갤러리아백화점 10층"
							<br>
							"경기도 수원시 영통구 광교중앙로 124 갤러리아백화점 광교점 10층"
							<a href="http://localhost:8787/ysys/map8#">위치/주차 안내</a>
						</strong>
						<span class="txt-info">
							<em>1544-1122</em>
							<em>6관 / 1,478석</em>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>