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
<style>

table, td {
border: 1px solid lightgray;
}




</style>
</head>
<body>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>순번</td>
		<td>삭제</td>
	</tr>
<c:forEach var="dto2" items="${list }">
	
	<tr>
		<td>${dto2.userid }</td>
		<td>${dto2.password }</td>
		<td>${dto2.n }</td>
		<td><a href="/delete2?userid=${dto2.userid }">삭제</a></td>
	</tr>

</c:forEach>	
<br>
<form action="/list">
	<input class="" type="submit" value="목록으로">
</form>
<br><br>

</table>
</body>
</html>