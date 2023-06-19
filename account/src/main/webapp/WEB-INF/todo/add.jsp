<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>할일 추가</h1>
	<form action="/add" method="post">
		
		할일 : <input type="text" name="todo"><br>
		마감일 : <input type="date" name="due_date"><br>
		<input type="submit" value="등록"><br>

</form>
</body>
</html>