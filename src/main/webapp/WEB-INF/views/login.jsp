<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="login_chk" method="post">
		<table border="1px">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr> 
			<tr>
				<td>pw</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td><button type="submit">Login</button> </td>
			</tr>
		</table>
	</form>

</body>
</html>