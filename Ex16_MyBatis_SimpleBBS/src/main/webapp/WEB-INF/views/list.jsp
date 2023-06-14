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

* {
margin: auto;
}

h1, 
.sub2, 
#a1, 
.sub1,
.sub3 {
 display: grid;
 place-items: center;
}

.table2 {

 
}

table {
border: none;
width: 450px;
}

td {
text-align: center;
border: 2px solid #03c75a;
background-color: #03c75a;
color: white;
}

a {

color: white;
text-decoration: none;
}



.sub1, .sub2, #a1, .sub3 {
width: 100px;
height: 30px;
color: #03c75a;
border: none;
background-color: white;

}

.sub1:hover, .sub2:hover, #a1:hover, .sub3:hover {
cursor: pointer;
background-color: #008100;
color: white;
}

.line {
  position: relative;
}

.line::after {
  content: "";
  position: absolute;
  bottom: 50%;
  left: 0;
  width: 100%;
  height: 1px;
  background-color: white;
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.3s ease;
}

.line.completed::after {
  transform: scaleX(1);
}
</style>
</head>
<body>
<div class="wrap">
<br><br>
<h1>To Do List</h1>
<br>
<form action="/login">
	<input class="sub2" type="submit" value="로그아웃">
</form>
<br><br>	
<!-- 
<form action="/testIf">
<select name="type">
	<option value="w">작성자</option>
	<option value="t">제목</option>
</select>
<input type="text" name="keyword" placeholder="검색어를 입력하세요">
<input type="submit" value="검색">
</form>
<br><br> -->
<a id="a1" href="/writeForm">일정등록</a>
<br><br>
<form action="/testForeach"  class="form">
	<input class="sub1" type="submit" value="선택조회">
<br><br>	
<%-- <c:if test="${not empty dto.title}"> --%>
<!-- <form action="/list" method="Get">
<input type="text" name="keyword" placeholder="제목을 입력하세요" >
<button type="submit" value="검색하기" >검색하기</button> -->

<%-- <ul>
    <c:forEach var="item" items="${SimpleBbsDto}">
      <c:if test="${not empty dto.title}" && test="${item eq dto.title}">
        
        <form action="/list" method="Get">
		<input type="text" name="keyword" placeholder="제목을 입력하세요" >
		<button type="submit" value="검색하기" >검색하기</button>
        
        <li>${dao.testIf(dto)}</li>
	  </c:if>
    </c:forEach>
  </ul>
</form> --%>
<%-- </c:if>  --%>

<div class="table2">
<table border="1">
	<tr>
		<!-- <td></td> -->
<!-- 		<td>작성자</td>
		<td>제목</td> -->
		<td>To Do List</td>
		<td></td>
		<td></td>
	    <td></td>
	</tr>
<c:forEach var="dto" items="${list }">

	<tr>
		<%-- <td>${dto.id }</td> --%>
<%-- 		<td>${dto.writer }</td>
		<td><a href="/view?id=${dto.id }">${dto.title }</a></td> --%>
		<td class="line" id="content"><a href="/view?id=${dto.id }">${dto.content }</a></td> 
		<td class="chk">
		<input type="checkbox" name="chk" value="${dto.id }">
		</td>
		<td><a href="#" onclick="completeItem(event)">완료</a></td>
		<td><a href="/delete?id=${dto.id }">삭제</a></td>
	</tr>
</c:forEach>	
</table>
</div>
</form>
<br><br>
<form action="/userlist2?id=${dto2.userid }">
	<input class="sub3" type="submit" value="회원정보">
</form>
</div>
<script>
function completeItem(event) {
  event.preventDefault(); // 링크 기본 동작 취소

  var row = event.target.closest('tr'); // 현재 행(tr) 요소 가져오기
  var contentCell = row.querySelector('.line'); // 내용 셀(td.line) 요소 가져오기

  contentCell.classList.toggle('completed'); // completed 클래스 토글
}
</script>
</body>
</html>