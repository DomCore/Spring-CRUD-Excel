<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="UTF-8">
	<title>Title</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/style_main.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/chat.css">
	<link rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/104946/animate.min.css">
	<script src="${pageContext.request.contextPath}/static/assets/js/script.js" type="text/javascript"></script>
	<link href="${pageContext.request.contextPath}/static/styles/3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/assets/css/style.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/static/scripts/1.js"></script>
	<script src="${pageContext.request.contextPath}/static/scripts/2.js"></script>
	<script src="${pageContext.request.contextPath}/static/assets/js/script_main.js"></script>
	<script src="${pageContext.request.contextPath}/static/scripts/stomp.min.js"></script>

</head>
<body>
<!--<ol class="cabin fuselage">-->
<!--    <li class="row row&#45;&#45;1">-->
<!--        <ol class="seats" type="A">-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="1A"/>-->
<!--                <label for="1A">1A</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="1B"/>-->
<!--                <label for="1B">1B</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="1C"/>-->
<!--                <label for="1C">1C</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="1A2"/>-->
<!--                <label for="1A2">1A2</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="1B2"/>-->
<!--                <label for="1B2">1B2</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="1C2"/>-->
<!--                <label for="1C2">1C2</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="2A"/>-->
<!--                <label for="2A">2A</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="2B"/>-->
<!--                <label for="2B">2B</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="2C"/>-->
<!--                <label for="2C">2C</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="2A2"/>-->
<!--                <label for="2A2">2A2</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="2B2"/>-->
<!--                <label for="2B2">2B2</label>-->
<!--            </li>-->
<!--            <li class="seat">-->
<!--                <input type="checkbox" id="2C2"/>-->
<!--                <label for="2C2">2C2</label>-->
<!--            </li>-->
<!--        </ol>-->
<div class="chat_window">
	<div class="top_menu">
		<div class="buttons">
			<div class="button close"></div>
			<div class="button minimize"></div>
			<div class="button maximize"></div>
		</div>
		<div class="title">Chat</div>
	</div>
	<ul class="messages"></ul>
	<div class="bottom_wrapper clearfix">
		<div class="message_input_wrapper">
			<input id="message_input_value" class="message_input" placeholder="Type your message here..." />
		</div>
		<button class="send_message" onclick="sendMessage();">

		</button>

		<button onclick="connect()">Connect to chat</button>
		<button onclick="sendMessage()" class="text">Send</button>
		<button onclick="disconnect()">Disconnect from chat</button>
	</div>
</div>
<div id="message_template" class="message_template">
	<li class="message"><div class="avatar"></div>
		<div class="text_wrapper">
			<div class="text"></div>
		</div></li>
	</ol>
</body>
</html>