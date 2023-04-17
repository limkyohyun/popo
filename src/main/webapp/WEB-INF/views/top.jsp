<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<style>
.navbar1{
padding-left: 560px;
}

</style>

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
<title>상단부</title>
</head>
<header>
<h1 align="center">
CGV(임시)
</h1>
</header>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>                        
		</button>
		<div class="navbar1">
	<a class="navbar-brand" href="main">HOME</a>
	</div>
	</div> 
	<div class="collapse navbar-collapse" id="myNavbar">
	<ul class="nav navbar-nav">
		<li class="active">
		</li>
		<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">영화<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="moviechartinput">영화자료입력</a></li>
				<li><a href="moviechartout">무비차트</a></li>
			</ul>
		</li>
		<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">극장<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="theaterin">CGV 극장</a></li>
			</ul>
		</li>
		<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">예매<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="moviechartddout">빠른 예매</a></li>
				<li><a href="">상영 스케줄</a></li>
			</ul>
		</li>
		<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">이벤트<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="eventinput">이벤트입력</a></li>
				<li><a href="eventout">SPECIAL</a></li>
			</ul>
		</li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<c:choose>
			<c:when test="${login==true && dto != null}">
				<li><a href="logout">${dto.id}님 환영합니다</a></li>
				<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="member_jo"><span class="glyphicon glyphicon-user"></span>회원가입</a></li>
				<li><a href="member_lo"><span class="glyphicon glyphicon-log-in"></span>로그인</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
	</div>
	</div>
</nav>
</html>