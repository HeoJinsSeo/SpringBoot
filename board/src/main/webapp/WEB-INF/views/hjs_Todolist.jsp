<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To do list</title>
</head>
<body>

<table border="1">
	<tr>
		<td>글번호</td>
		<td>To Do List</td>
		<td>삭제</td>
	</tr>
	
<c:forEach var="dto" items="${todolist }">
	<tr>
		<td>${dto.num }</td>
		<td>${dto.content }</td>
		<td><a href="delete2?num=${dto.num }"></a></td>
	</tr>
</c:forEach>
<form action="delete2" method="post">
	<input type="submit" value="삭제하기">
</form>	
</table>
</body>
</html>