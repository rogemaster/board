<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" width="1000px" style="margin-left: 200px">
		<tr>
			<td>제목</td>
			<td style="width: 700px">${detail.title }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td style="width: 700px; height: 700px">${detail.content }</td>
		</tr>
		<tr>
			<td><a href="/springsp/board_list"><button id="boardlist">목록</button></a></td>
		</tr>
	</table>
</body>
</html>