<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">예약날자</th>
      <th scope="col">영화이름</th>
      <th scope="col">시간</th>
      <th scope="col">좌석</th>
      <th scope="col">결제금액</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
    <tr>
    
      <th scope="row">1</th>
      <td>${list[i].day}</td>
      <td>${list[i].mname}</td>
      <td>${list[i].time}</td>
      <td>${list[i].seat}</td>
      <td>${list[i].pay}</td>
    </tr>
    </c:forEach>

  </tbody>
</table>
</body>
</html>