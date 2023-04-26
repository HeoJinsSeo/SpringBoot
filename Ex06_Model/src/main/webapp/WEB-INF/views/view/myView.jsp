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

<% 
	out.println("Model(Sub) : Hello World");
	int a = 10; // 어디에도 담지 않아서 el에서 사용할 수 없다
%>
앞${a }뒤<br>  <!-- a가 담기지 않음 -->
앞<%= a %>뒤   <!--a를 담고 싶을 때  -->
<br>

${ObjectTest}

<br>

${lists}

<br>
<br>

<!--prefix="c"의 c와 동일한 c  -->
<c:forEach var="mylist" items="${lists}">
    ${mylist} <br> 
</c:forEach>

<br>
<br>
당신의 이름은 ${name}입니다   

    
</body>
</html>
