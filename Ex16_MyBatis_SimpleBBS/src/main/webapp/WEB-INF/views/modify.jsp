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
<form action="/modify" method="post">
    id: ${dto.id }<br>
<!-- 	writer : <input type="text" name="writer"><br>
	title : <input type="text" name="title"><br> -->
	content
	<textarea name="content" cols="50" rows="10">
		
	</textarea>
	<input type="submit" value="저장하기">

</form>
<br>
</body>
</html>