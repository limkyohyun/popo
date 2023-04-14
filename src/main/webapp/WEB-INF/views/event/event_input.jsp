<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="eventsave" method="post" enctype="multipart/form-data">
<table border="1" align="center">
<h2>이벤트 자료입력</h2>
<tr>
<th>이벤트제목</th>
<td>
<input type="text" name="ename">
</td>
</tr>

<tr>
<th>이벤트기간시작</th>
<td>
<input type="date" name="startday">
</td>
</tr>

<tr>
<th>이벤트기간마감</th>
<td>
<input type="date" name="endday">
</td>
</tr>


<tr>
<th>이벤트포스터</th>
<td>
<input type="file" name="eposter">
</td>
</tr>

<tr>
<th>상세포스터</th>
<td>
<input type="file" name="eposterdetail">
</td>
</tr>


<tr>
<td colspan="2">
<input type="submit" value="전송">
<input type="reset" value="취소">
</td>
</tr>

</table>
</form>
</body>
</html>