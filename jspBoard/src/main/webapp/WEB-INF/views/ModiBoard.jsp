<%@page import="jspBoard.dao.SelectBulletinDAO"%>
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
		
		String list = SelectBulletinDAO.getList(number).get(0).getWrite_list();
		String content = SelectBulletinDAO.getList(number).get(0).getWrite_content();
	%>
	
	<form action="./UpdateBoard" method="POST">
		�� ��ȣ : <input type="text" name="write_number" readonly value="<%=number %>"/> <br> 
		�� ��� ���� : <input type="text" name="write_list" value="<%=list %>"/> <br> 
		�� �� ���� ����: <input type="text" name="write_content" value="<%=content %>"/> <br> 
		<input type="submit" value="�� ����" />
	</form>

</body>
</html>