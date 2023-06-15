<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginCheck" onsubmit="fnClick()">
		userid : <input type="text" id="userid" name="userid" required/><br>
		password : <input type="text" id="password" name="password" required/><br>
		<input type="submit" value="로그인">
		<br><br>
	</form>
	<form action="joinForm" method="Get">
		<input type="submit" value="회원가입">
	</form>

<script>
function fnClick(){
            let userid = document.getElementById("userid").value;
            let password = document.getElementById("password").value;
            if ((userid === ${dto2.userid}) 
            		&& (password === ${dto2.password}) ) {
             alert("환영합니다!");
             return true;
          /*    location.href = "http://naver.com"; */
            } else {
             alert("아이디 또는 비밀번호가 일치하지 않습니다.");
             return false;
            }
          }  

</script>


	
</body>
</html>