<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(request.getSession().getAttribute("result").equals("ok")) {
	%>
			<%=request.getSession().getAttribute("id") %>님 로그인에 성공했습니다.	
			
	<%} else { %>
		
		로그인에 실패 하였습니다.<br>
		다시 시도 하시겠습니까?<br>
		<a href="/springsp/login"><button>로그인</button></a>
		
	<%} %>
	
	
</body>
</html>