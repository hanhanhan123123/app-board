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
	<div style="display: flex; justify-content: space-between; width: 100%">
		<c:choose>
			<c:when test="${sessionScope.logon }">
				<div style="padding: 10px 20px; display: flex; align-items: center; gap:10px">
					<b>${logonUser.nick }</b>
				</div>
				<div>
					<a href="/user/logout">로그아웃</a>
				</div>
			</c:when>
			<c:otherwise>
				<div style="padding: 10px 20px;">
					<a href="/user/login">로그인</a>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<div>
		<h1>게시판</h1>
		<div align="right">
			<a href="/board/create">글쓰기</a>
		</div>
		<div align="left">
			<a href="/index?arr=writed">등록순</a> |
			<a href="/index?arr=views">조회순</a> |
			<a href="/index?arr=likes">추천순</a>
		</div>
		<div class="root">
			<table>
				<tr>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회</th>
					<th>추천</th>
				</tr>
				<c:forEach items="${list }" var="li">
						<tr>
							<td><a href="/board/detail?boardId=${li.boardId }">${li.title }</a></td>
							<td width="15%">${li.writer }</td>
							<td width="15%">${li.writed }</td>
							<td width="10%">${li.views }</td>
							<td width="10%">${li.likes }</td>
						</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>