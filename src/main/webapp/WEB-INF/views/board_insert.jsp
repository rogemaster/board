<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="save" method="post">
		<table border="1px" width="1000px" style="margin-left: 200px">
			<tr>
				<td>제목</td>
				<td><input type="text" name="inputtitle"id="titleid" style="width: 700px"> </td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea id="contentid" name="inputcontent" style="width: 700px; height: 700px"></textarea></td>
			</tr>
			<tr>
				<td><a href="/springsp/board_list"><button id="cancelid" >취소</button></a></td>
				<td><input type="text" value="등록" onclick="board_save()"></td>
			</tr>
		</table>
	</form>
</body>

<script type="text/javascript">
	function board_save() {
		document.getElementById("save").action = "board_save";
		document.getElementById("save").submit();
	}

</script>
</html>