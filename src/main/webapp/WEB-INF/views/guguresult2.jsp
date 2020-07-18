<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = (String)request.getAttribute("rst2");
	String rst = "";
	for(int i = 0; i < 10; i++) {
		rst += num + " x " + i + " = " + Integer.parseInt(num) * i + "<br>";
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Gugudan Result</h1><br>
	<%=rst %>

</body>
</html>