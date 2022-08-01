<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board</title>
</head>
<body>

	<form action="./Board/loginCheck" method="POST">
		<table border='1'>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" /></td>
				<td><input type="submit" value="로그인" /></td>
			</tr>
		</table>
		
		<% if (session.getAttribute("login") != null 
		&& ((boolean)session.getAttribute("login")) == true) { %>
		<div>현재 로그인 중입니다.<a href="#" onclick="location.href='../Bulletin'">게시판으로 가기</a></div>
		<% } else { %>
		<div>로그인이 필요합니다.</div>
		<% } %>
	</form>
	
	
</body>
</html>