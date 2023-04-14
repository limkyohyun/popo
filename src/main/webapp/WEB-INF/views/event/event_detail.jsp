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
    <div class="col">
  스페셜이벤트 ${my.ename}
  <p align="right"> <c:set var="stday" value="${my.startday}"></c:set>
              ${fn:substring(stday, 0, 10)} ~ 
              <c:set var="edday" value="${my.endday}"></c:set>
              ${fn:substring(edday, 0, 10)}</p>
              <p align="right">조회수 ${my.readcnt}</p>
    </div>
    <div class="col">
    <img src="/pro/image/${my.eposterdetail}" width="100%;">
    </div>

</div>
  </div>  
 </c:forEach>

</body>
</html>