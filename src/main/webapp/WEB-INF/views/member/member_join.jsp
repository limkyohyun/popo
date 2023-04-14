<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//code.jauery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code,jwuery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<script type="text/javascript">
$(function(){
   $("#check").click(function(){
      var id = $("#id").val();
      var vid = /^[a-zA-Z0-9]{4,10}$/;
      if(id==""){
         alert("아이디를 입력하시오");
         $("#id").focus();
         return;
      }
      if(!vid.test(id)){
         alert("아이디는 대소문자,숫자 4~10글자만 가능");
         $("#id").focus();
         return;
      }
      var idcheck =$("#idcheck").attr("idcheck");
      if(idcheck=="" || idcheck=="N") {
         alert("아이디 중복검사 해주세요!");
         $("#idcheck").focus();
         return;
      }
      var pw = $("#pw").val();
      var vpw = /^[a-zA-Z0-9]{4,16}$/;
      if(!vpw.test(pw)) {
         alert("패스워드는 영문자,숫자 4-16자까지 허용");
         $("#pw").focus();
         return;
      }
      var pw2 = $("#pw2").val();
      var vpw2 = /^[a-zA-Z0-9]{4,16}$/;
      if(!vpw2.test(pw2)) {
         alert("비밀번호확인은 영문자,숫자 4-16자까지 허용");
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
      var name = $("#name").val();
      var vname = /^[가-힣]{2,4}$/;
      if(!vname.test(name)){
         alert("이름은 2~4글자만 가능");
         $("#name").focus();
         return;
      }
      var jumin=$("#jumin").val();
      var vjumin=/^[\d]{6}-[\d]{7}$/;
      if(!vjumin.test(jumin)){
         alert("주민번호는 900101-1010101 형식으로 입력");
         $("#jumin").focus();
         return;
      }
      var vphone =/^[\d]{3}-[\d]{4}-[\d]{4}$/;
		var phone=$("#phone").val();
		if(phone=="")
		{
		alert("전화번호가 공백이면 안됩니다!!");
		$("#phone").focus();
		return false;
		}
		if(!vphone.test(phone)){
			alert("전화번호는 000-0000-0000 형식으로 입력!");
			$("#phone").focus();
			return false;
		}
      var address=$("#address").val();
      var vaddress=/^[가-힣]$/;
      if(address==""){
         alert("주소를 입력하시오");
         $("#address").focus();
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
   $("#idcheck").click(function() {
      var id = $("#id").val();
      $.ajax({
         type:"post",
         async:true,
         url:"idcheck",
         dataType:"text",
         data:{"id":id},
         success:function(cnt) {
            if(cnt==0) {
               $('#idcheck').attr('idcheck','Y');
               alert("사용가능한 아이디")
            }
            else {
               $('#idcheck').attr('idcheck','N');
               alert("중복된 아이디")
            }
         }
      });
   });
});
</script>
<title>Insert title here</title>
</head>
<body>
<h3 align="center">회원가입</h3>
   <form action="membersave" method="post" id="form1">
      <table border="1" align="center">
         <tr>
            <th>아이디</th>
            <td>
               <input type="text" name="id" id="id">
               <input type="button" value="중복검사" id="idcheck" idcheck="">
            </td>
         </tr>
         <tr>
            <th>패스워드</th>
            <td><input type="text" name="pw" id="pw"></td>
         </tr>
         <tr>
            <th>패스워드 확인</th>
            <td><input type="text" name="pw2" id="pw2"></td>
         </tr>
         <tr>
            <th>이름</th>
            <td><input type="text" name="name" id="name"></td>
         </tr>
         <tr>
            <th>주민번호</th>
            <td><input type="text" name="jumin" id="jumin"></td>
         </tr>
         <tr>
            <th>핸드폰번호</th>
            <td><input type="text" name="phone" id="phone"></td>
         </tr>
         <tr>
            <th>거주지</th>
            <td><input type="text" name="address" id="address"></td>
         </tr>
         <tr>
            <th>이메일</th>
            <td>
               <input type="text" name="email" id="email">
            </td>
         </tr>
         <tr>
            <td colspan="2" align="center">
               <input type="button" value="검사 후 전송" id="check">
               <input type="reset" value="초기화">
            </td>
         </tr>
      </table>
   </form>
</body>
</html>