<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="total" style="text-align: right;"></div>
	
	<div>
		<p id="sessionView"></p>
	</div>
</body>
<script type="text/javascript">

	window.onload = function() {
		$.get("/step3SessionCall", function(res) {
			sessionView(res);
		});
	}

	function sessionView(res) {
		for(var i = 0; i < res.sessionList.length; i++) {
			$('#sessionView').append(res.sessionList[i] + "<br>");
		}
		$('#total').text(res.cnt);
	}

</script>

</html>