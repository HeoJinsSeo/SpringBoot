<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>식비지출</h1>
<form action="/list" method="post">
<div class="table2">
<table border="1">
	<tr>
		
		<td></td>
		<td>날짜</td>
 		<td>지출내역</td>
		<td>지출액</td>
		<td>총합계</td>
		<td>누적합계</td>
	    <td></td>
	</tr>
<%-- <c:forEach var="fooddto" items="${list }"> --%>

	<tr>
		<td>${dto.food_id.nextval }</td>
		<td><input type="date" name="date"></td>
		<td><input type="text" name="title"></td>
		<td><input type="text" name="expenditure"></td>
		<td>총합계</td> 
		<td>누적합계</td>
		<td></td>
	</tr>
<!-- </c:forEach> -->	
</table>
</div>
<input type="submit" value="등록"><br>
</body>
</html>