<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
포스터, 영화 제목, 감독, 배우, 개봉 날자
 -->
 <c:forEach items="${list2}" var="my">
<div class="container text-center">
  <div class="row">
    <div class="col-sm-2" style="align:left"><img src="/pro/image/${my.mposter}" width="150px"> </div>
    <div class="col-sm-10" style="text-align: left;">	
    
    <h3>${my.mname}</h3> 

    <hr>
     감독 :${my.director} / 배우 :${my.actor}<br>
     
     장르 :
	<c:set  var="gerne1" value="${my.gerne}"></c:set>
	<c:set var = "length" value = "${fn:length(gerne1)}"/>
	 <c:set var = "gerne2" value = "${fn:substring(gerne1,0, length-1)}" />
	 ${gerne2} / 상영시간 : ${my.time}분 <br>
	 
	 <c:set  var="day" value="${my.day}"></c:set>
	개봉 : ${fn:substring(day, 0, 10)} <br><br><br>
    
    <a href="moviechardd?mname=${my.mname}" class="btn btn-danger" style="margin-bottom: 20px">예매하기</a>
    
    </div>
  </div>
  <div class="row">
    <div class="col-sm-7" >
<br>

    <div class="btn-group" role="group" aria-label="Basic mixed styles example" style="margin-bottom: 20px">
  <a href=""><button type="button" class="btn btn-primary">주요정보</button></a>
  <a href="#tag1"><button type="button" class="btn btn-primary">상세내용</button></a> 
 <a href="#tag2"><button type="button" class="btn btn-primary">스틸컷</button></a>
</div><br>	
	<hr style="margin-top: 10px">
    <h3 id="tag1">상세내용</h3>	
    <hr>
    
      <div><pre> ${my.show}</pre> </div>
    <hr>
    <h3 id="tag2">스틸컷</h3>
    <hr>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="/pro/image/${my.stillposter1}" alt="" style="width:100%;">
      </div>

      <div class="item">
        <img src="/pro/image/${my.stillposter2}" alt="" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="/pro/image/${my.stillposter3}" alt="" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <div class="col-sm-5">
    <img src="/pro/image/이벤트 포스터.jpg"><br>
    <img src="/pro/image/이벤트 포스터2.png"><br>
    </div>
  </div>
  </div>
 </c:forEach>

</body>
</html>