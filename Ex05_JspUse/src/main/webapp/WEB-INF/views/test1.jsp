<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import = "java.util.ArrayList"
%>

<%! 
	String name = "";
	
	void test() {
		
	}

%>

<!-- html 주석 -->
<%-- --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	let aaa = 100;
</script>

<%
	// 자바 주석
	/* 그대로 사용 가능 */
	int a = 10;
	System.out.println(a);
	test();
	
	ArrayList list = new ArrayList();
	
	// html에 적어주는 역활
	out.println("<h1>hello world"+ a +"</h1>");

	for(int i = 0; i<5; i++) {
%>		
		<p>ppp</p>
<%		
	}		
 
	for(int i = 0; i<5; i++){
    out.println("<p>ppp</p>");
	}

%>

a의 값은 : <%= a %>


<%--
a의 값은 : <%= member.getName() %>
--%>

</body>
</html>