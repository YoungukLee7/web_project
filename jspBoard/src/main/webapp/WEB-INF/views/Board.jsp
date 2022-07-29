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
	</form>
</body>
</html>