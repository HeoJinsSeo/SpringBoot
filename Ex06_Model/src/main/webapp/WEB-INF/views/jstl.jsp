<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
set, if, choose, forEach, out<br>
<h3>c:set</h3>
스코프scope에 등록<br>  <!-- c:set은 주머니에 담는 역활 -->
<c:set var="id" value="아이디"></c:set>
<c:set var="pw" value="비밀번호" />
el : ${id }<br>
<hr>
java에 있는 변수를 el에서 사용할 수 있도록 해보기
<% 
 	int a = 20;
%>
<c:set var="a2" value="<%= a %>" />
a2 : ${a2 }
</body class="<%= a %>">
</html>