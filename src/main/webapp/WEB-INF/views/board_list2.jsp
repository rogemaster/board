<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
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
		<tr style="text-align: center;">
			<td>No</td>
			<td>제목</td>
			<td>작성자</td>
		</tr>
		<%
			List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
			
			for(int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td style="text-align: center;"><%=list.get(i).get("board_no") %></td>
			<td><a href="/springsp/board_detail?no=<%=list.get(i).get("board_no") %>"><%=list.get(i).get("title") %></a></td>
			<td style="text-align: center;"><%=list.get(i).get("create_id") %></td>
		</tr>
		<%
			}
		%>
	</table>
	
	<div style="margin-left: 200px; margin-top: 10px">
		<a href="/springsp/board_insert"><button type="button">글쓰기</button></a>
	</div>

</body>

<script type="text/javascript">

	

</script>
</html>