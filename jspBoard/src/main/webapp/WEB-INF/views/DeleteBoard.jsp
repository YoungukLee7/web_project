<%@page import="jspBoard.dao.DeleteBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ����</title>
</head>
<body>
	
		<%	
		int number = Integer.parseInt(request.getParameter("write_number"));
		
		new DeleteBoardDAO(number);
		%>
		
		<a href="javascript:history.back();">���� �������� �̵�</a>


</body>
</html>