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
		<span style="color:blue;">${message}</span><br>
		<input type="submit" value="로그인">
		<br><br>
	</form>
	<form action="joinForm" method="Get">
		<input type="submit" value="회원가입">
	</form>

	
</body>
</html>