<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>���� ���</h1>
	</header>
	
	<section>
		<div>
			<div class="title">����id</div>
			<div class="title">�Ϸ�</div>
			<div class="title">����</div>
			<div class="title">����������</div>
			<div class="title">����������</div>
			<div class="title">ȸ��id</div>
		</div>
		
		<c:forEach var="item" items="${list }">
		<div>
			<div class="todo">${item.todo_id }</div>
			<div class="todo">
				<input type="checkbox">
			</div>
			<div class="todo">${item.todo }</div>
			<div class="todo">${item.due_date }</div>
			<div class="todo">${item.done_date }</div>
			<div class="todo">${item.user_id }</div>
		</div>
		</c:forEach>

	</section>

</body>
</html>