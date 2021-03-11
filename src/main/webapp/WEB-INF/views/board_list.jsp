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

	<table border="1px" width="1000px" style="margin-left: 200px">
		<tr style="text-align: center;">
			<td>No</td>
			<td>제목</td>
			<td>작성자</td>
		</tr>
		<c:forEach items="${list }" var="list">
			<tr>
				<td style="text-align: center;">${list.board_no }</td>
				<td><a href="/springsp/board_detail?no=${list.board_no }"> ${list.title }</a></td>
				<td style="text-align: center;">${list.create_id }</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<div style="margin-left: 200px; margin-top: 10px">
		<a href="/springsp/board_insert"><button type="button">글쓰기</button></a>
	</div>

</body>

<script type="text/javascript">

	

</script>
</html>