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
				<th>���̵�</th>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<th>��й�ȣ</th>
				<td><input type="password" name="password" /></td>
				<td><input type="submit" value="�α���" /></td>
			</tr>
		</table>
		
		<% if (session.getAttribute("login") != null 
		&& ((boolean)session.getAttribute("login")) == true) { %>
		<div>���� �α��� ���Դϴ�.<a href="#" onclick="location.href='../Bulletin'">�Խ������� ����</a></div>
		<% } else { %>
		<div>�α����� �ʿ��մϴ�.</div>
		<% } %>
	</form>
	
	
</body>
</html>