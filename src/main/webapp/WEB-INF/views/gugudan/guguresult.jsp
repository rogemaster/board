<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List list = (List)request.getAttribute("rst");
	String str = "";
	for(int i = 0; i < list.size(); i++) {
		str += list.get(i);
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
	${rst }
	
	<ul></ul>
	
	<%=str %>
	
</body>
</html>