<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 align="center">로그인</h3>
<form action="logincheck" method="post">
<table border="1" align="center">
	<tr>
		<th>아이디</th>
			<td>
				<input type="text" name="id">
			</td>
	</tr>
	<tr>
		<th>패스워드</th>
			<td>
				<input type="text" name="pw">
			</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인">
			<a href="member_jo"><input type="button" value="회원가입"></a>
		</td>
	</tr>
</table>
</form>
</body>
</html>