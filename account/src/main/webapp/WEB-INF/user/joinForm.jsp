<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>회원가입</h1>
<form action="/join" method="post">
	id: <input type="text" name="id"><br>
	<span style="color:red;">${message}</span><br>
	pw: <input type="password" name="pw"><br>
	name: <input type="text" name="name"><br>
	<input type="submit" value="회원가입"><br>
</form>

</body>
</html>