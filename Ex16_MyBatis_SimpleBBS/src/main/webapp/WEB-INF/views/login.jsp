<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginCheck">
		id : <input type="text" name="userid"  id="useridInput" /><br>
		pw : <input type="text" name="password"><br>
		<input type="submit" value="로그인">
		<br><br>
	</form>
	<form action="joinForm" method="Get">
		<input type="submit" value="회원가입">
	</form>
	
	
<script>
  function validateForm() {
    var userid = document.getElementById("useridInput").value;
    
    if (userid === null || userid.trim() === "") {
      alert("Please enter a valid userid.");
      return false; // 폼 제출을 중지합니다.
    }
    
    return true; // 폼 제출을 계속합니다.
  }
</script>
</body>
</html>