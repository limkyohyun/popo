<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="moviechartsave" method="post" enctype="multipart/form-data">
<table border="1" align="center">
<h2>영화 자료입력</h2>
<tr>
<th>영화제목</th>
<td>
<input type="text" name="mname">
</td>
</tr>


<tr>
<th>상영시간</th>
<td>
<input type="text" name="time">
</td>
</tr>

<tr>
<th>개봉일</th>
<td>
<input type="date" name="day">
</td>
</tr>

<tr>
<th>장르</th>
<td>
<input type="checkbox" name ="gerne" value="코미디,">코미디
<input type="checkbox" name ="gerne" value="호러,">호러
<input type="checkbox" name ="gerne" value="애니메이션,">애니메이션
<input type="checkbox" name ="gerne" value="탐정,">탐정
<input type="checkbox" name ="gerne" value="판타지,">판타지
<input type="checkbox" name ="gerne" value="멜로,">멜로
</td>
</tr>


<tr>
<th>상세내용</th>
<td>
<textarea rows="20" cols="20" name="show"></textarea>
</td>
</tr>

<tr>
<th>영화포스터</th>
<td>
<input type="file" name="mposter">
</td>
</tr>

<tr>
<th>영화스틸컷1</th>
<td>
<input type="file" name="stillposter1">
</td>
</tr>

<tr>
<th>영화스틸컷2</th>
<td>
<input type="file" name="stillposter2">
</td>
</tr>

<tr>
<th>영화스틸컷3</th>
<td>
<input type="file" name="stillposter3">
</td>
</tr>

<tr>
<th>영화스틸컷4</th>
<td>
<input type="file" name="stillposter4">
</td>
</tr>

<tr>
<th>영화스틸컷5</th>
<td>
<input type="file" name="stillposter5">
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