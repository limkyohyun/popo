<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="stllcutsave" method="post" enctype="multipart/form-data">
<table border="1" align="center">
<h2>영화 자료입력</h2>

<tr>
<th>영화제목</th>
<td>
<input type="text" name="mname">
</td>
</tr>


<tr>
<th>영화포스터</th>
<td>
<input multiple="multiple" type="file" name="mposter">
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