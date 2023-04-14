<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
  </head>
<body>
<!-- 
포스터, 영화 제목, 감독, 배우, 개봉 날자
 -->
 <div class="container">
  <div class="row">
    <div class="col-md-8" style="text-align:left; " >
     <h2> 무비차트</h2>
    </div>
    <div class="col-md-4" style="text-align:right;">
      <h5>현재 상영작</h5>
    </div>
    </div>
    <div class="row">
        <div class="col">
        <hr>
        </div>
    </div>
  </div>
 
 
 
 
 <div class="container text-center">
 
 <div class="row">

  <c:forEach items="${list2}" var="my">
    <div class="col-md-3">
    <div class="card" style="width: 100%; height:100%; float: left;">
         <a href="detail?mname=${my.mname}"><img src="/pro/image/${my.mposter}" class="card-img-top" style="width: 200px; height: 300px; ma" alt="...">
         </a>
          <div class="card-body">
            <h5 class="card-title">
            <a href="detail?mname=${my.mname}">${my.mname}</a></h5>
            <p class="card-text">
              감독 : ${my.director}<br>
              <c:set var="gerne1" value="${my.gerne}"></c:set>
              <c:set var="length" value="${fn:length(gerne1)}" />
              <c:set var="gerne2" value="${fn:substring(gerne1,0, length-1)}" />
              ${gerne2}<br>
              
              <c:set var="day" value="${my.day}"></c:set>
              ${fn:substring(day, 0, 10)} 개봉
              &emsp;
            </p>
            <div style="margin-bottom: 15px">
			<a href=" ?mname=${list[i].mname}"><button type="button" class="btn btn-danger">예매하기</button></a>
            <a href="moviemodify?mname=${my.mname}"><button type="button" class="btn btn-primary">수정</button></a>
 			<a href="moviedelete?mname=${my.mname}"><button type="button" class="btn btn-primary">삭제</button></a>
 			&emsp;
          </div>
          </div>
        </div>
           </div>
           </c:forEach>
           </div>   
           </div>

<form action="moviechartsearchsave" method="post" >
<table border="1" align="center">  	
	<tr>
	<td colspan="2">
	검색
	</td>
	</tr>
	<tr>	  
	  <td>
	     <select name="item">
	     	<option value="mname">영화</option>
	     	<option value="director">감독</option>
	     	<option value="gerne">장르</option>
	     </select>
	  </td>
	  <td>	
	    <input type="text" name="value">
	  </td>
	
	<tr>	  
	  <td colspan="2">
	  <input type="submit"  value="검색하기">
	  <input type="reset"  value="취소">
	  </td>
	</tr>
	
</table>
</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

