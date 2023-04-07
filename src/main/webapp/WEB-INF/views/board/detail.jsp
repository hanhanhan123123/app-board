<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD</title>
<link rel="stylesheet" href="/resource/css/style.css?${millis }">
</head>
<body>
	<div style="border-bottom: solid 1px black">
		<h1>${board.title }</h1>
		조회수${board.views } | 추천${board.likes }
		<br/>
		${board.writer } | ${board.writed }
	</div>
	<div>
		${board.content }
	</div>
</body>
</html>