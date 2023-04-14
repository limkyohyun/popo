<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//code.jauery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<script type="text/javascript">
$(function() {
	$("#test").click(function(){
		var id = $("#id").val();
		var vid = /^[a-zA-Z0-9]{4,12}$/;
		if(!vid.test(id)) {
			alert("아이디는 영문자,숫자만 허용");
			$("#id").focus();
			return;
		}
		var pw = $("#pw").val();
		var vpw = /^[a-zA-Z0-9]{4,16}$/;
		if(!vpw.test(pw)) {
			alert("비밀번호는 영문자,숫자만 허용");
			$("#pw").focus();
			return;
		}
		var pw2 = $("#pw2").val();
		var vpw2 = /^[a-zA-Z0-9]{4,16}$/;
		if(!vpw2.test(pw2)) {
			alert("비밀번호확인은 영문자,숫자만 허용");
			$("#pw2").focus();
			return;
		}
		var pw = $("#pw").val();
		var pw2 = $("#pw2").val();
		if(pw!=pw2) {
			alert("비밀번호와 비밀번호확인이 같아야함");
			$("#pw2").focus();
			return;
		}
		var phone = $("#phone").val();
		var vphone = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
		if(!vphone.test(phone)) {
			alert("전화번호는 010-OOOO-OOOO 형식만 허용");
			$("#phone").focus();
			return;
		}
		var birth = $("#birth").val();
		var vbirth = /^[0-9]{3,4}-[0-9]{1,2}-[0-9]{2}$/;
		if(!vbirth.test(birth)) {
			alert("생일은 날짜타입 허용");
			$("#birth").focus();
			return;
		}
		var job = $("#job").val();
		if(job=="") {
			alert("직업을 입력해주세요");
			$("#job").focus();
			return;
		}
		var email = $("#email").val();
		var vemail = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+/;
		if(!vemail.test(email)) {
			alert("메일은 abc@abc.com 형식");
			$("#email").focus();
			return;
		}
		$("#form1").submit();
	});
});
</script>
<title>회원가입창</title>
</head>
<body>
	<h3 align="center">회원가입</h3>
	<form action="uitestsave" method="post" id="form1">
		<table border="1" align="center">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="pw" id="pw"></td>
			</tr>
			<tr>
				<th>비밀번호확인</th>
				<td><input type="text" name="pw2" id="pw2"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="phone" id="phone"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="date" name="birth" id="birth" max="2050-12-31"
         min="1950-01-01"></td>
			</tr>
			<tr>
				<th>직업</th>
				<td>
					<select name="job" id="job">
						<option value="">선택</option>
						<option value="학생">학생</option>
						<option value="직장인">직장인</option>
						<option value="자영업">자영업</option>
						<option value="운동선수">운동선수</option>
						<option value="프로그래머">프로그래머</option>
						<option value="기타">기타</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					남자<input type="radio" name="gender" value="남자">
					여자<input type="radio" name="gender" value="여자">
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<th>자기소개</th>
				<td>
					<textarea rows="10" cols="30"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="검사후가입" id="test">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>