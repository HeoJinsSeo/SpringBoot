<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id: ${dto.id }<br>
writer: ${dto.writer }<br>
title: ${dto.title }<br>
<textarea>
${dto.content }
</textarea>
<br>
<a href="/list">목록으로</a><br>
<a href="/modifyForm?id=${dto.id }">수정하기</a><br>
<a href="/delete?id=${dto.id }">삭제하기</a><br>

</body>
</html>