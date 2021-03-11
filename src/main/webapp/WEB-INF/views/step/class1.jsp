<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<button type="button" value="2" onclick="gugudan(event)">2단</button>
	<button type="button" value="3" onclick="gugudan(event)">3단</button>
	<button type="button" value="4" onclick="gugudan(event)">4단</button>
	<button type="button" value="5" onclick="gugudan(event)">5단</button>
	<button type="button" value="6" onclick="gugudan(event)">6단</button>
	<button type="button" value="7" onclick="gugudan(event)">7단</button>
	<button type="button" value="8" onclick="gugudan(event)">8단</button>
	<button type="button" value="9" onclick="gugudan(event)">9단</button>
	
	<div>
		<p id="gugudan"></p>
	</div>
	<!-- <table>
		<tr id="gugudan"></tr>
	</table> -->
</body>
<script type="text/javascript">
	function gugudan(event) {
		var dan = {"dan" : event.target.value};
		console.log(event.target.value);
		$('#gugudan').text('');

		$.get("/gugudan", dan, function(res) {
			console.log(res);
			gugudanView(res);
		})
		
	}

	function gugudanView(res) {
		for(var i = 0; i < res.gugudanList.length; i++) {
			$('#gugudan').append(res.gugudanList[i] + "<br>");
		}
	}
</script>
</html>