<%@page import="jspBoard.model.bulletinBoard"%>
<%@page import="java.util.List"%>
<%@page import="jspBoard.model.bulletinBoard"%>
<%@page import="jspBoard.dao.bulletinBoardDAO"%>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
</head>
<body>

	<button onclick="location.href='./AddBoard'">�� ����</button>

	<table border="1">
		<tr>
			<th>
				�� ���
			</th>
			<th>
				�� �� ����
			</th>
			<th>
				���� / ����
			</th>
		</tr>
		<%
		List<bulletinBoard> list = bulletinBoardDAO.getList();

		for (int i = 0; i < list.size(); i++) {
		%>

		<tr>
			<td>
				<%=list.get(i).getWrite_list() %>
			</td>
			<td>
				<%=list.get(i).getWrite_content() %>
			</td>
			<td>
												
				<button onclick="location.href='./ModiBoard?write_number=<%=list.get(i).getWrite_number() %>'">����</button>
				<button onclick="location.href='./DeleteBoard?write_number=<%=list.get(i).getWrite_number() %>'">����</button>
			</td>
		</tr>

		<%
		}
		%>
		
		
	</table>
</body>
</html>









