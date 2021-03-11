<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Gugudan Test</h1><br>
	
	<input type="text" name="num" id="gugu">
	<button type="button" onclick="input()">버튼</button>
	
	<ul></ul>
	

</body>

<script type="text/javascript">

	function input() {
		var num = {"num" : document.getElementById("gugu").value};
		console.log(num);

		$.get("/gugucal3", num, function(rst) {
			console.log("resp" + rst);

			})
		}

</script>
</html>