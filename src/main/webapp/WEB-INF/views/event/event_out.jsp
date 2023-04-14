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
    <div class="col-md-8" style="text-align:left;">
     <h2> 이벤트</h2>
    </div>
    <div class="col-md-4" style="text-align:right;">
      <h5>현재 진행중</h5>
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
    <c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
    <div class="col-md-4">
	<div class="card" style="width:100%;">
    <a href="eventdetail?ebun=${list[i].ebun}"><img src="/pro/image/${list[i].eposter}" class="card-img-top" style="width: 350px; height: 230px;" ></a>
  <div class="card-body">
    <h5 class="card-title">${list[i].ename}</h5>
    <p class="card-text">
    
              <c:set var="stday" value="${list[i].startday}"></c:set>
              ${fn:substring(stday, 0, 10)} ~ 
              <c:set var="edday" value="${list[i].endday}"></c:set>
              ${fn:substring(edday, 0, 10)}
    </p>
            <div style="margin-bottom: 15px">
            <a href="eventmodify?ename=${list[i].ename}"><button type="button" class="btn btn-primary">수정</button></a>
 			<a href="eventdelete?ename=${list[i].ename}"><button type="button" class="btn btn-primary">삭제</button></a>
 			&emsp;
          </div>
  </div>
</div>
    </div>
     </c:forEach>
  </div>
</div>



<form action="eventsearchsave" method="post" >
<table border="1" align="center">  	
	<tr>
	<td colspan="2">
	검색
	</td>
	</tr>
	<tr>	  
	  <td>
	     <select name="item">
	     	<option value="ename">제목</option>
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