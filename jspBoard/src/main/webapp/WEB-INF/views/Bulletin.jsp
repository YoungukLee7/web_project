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
<title>게시판</title>
</head>
<body>

	<button onclick="location.href='./AddBoard'">글 쓰기</button>

	<table border="1">
		<tr>
			<th>
				글 목록
			</th>
			<th>
				글 상세 내용
			</th>
			<th>
				수정 / 삭제
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
												
				<button onclick="location.href='./ModiBoard?write_number=<%=list.get(i).getWrite_number() %>'">수정</button>
				<button onclick="location.href='./DeleteBoard?write_number=<%=list.get(i).getWrite_number() %>'">삭제</button>
			</td>
		</tr>

		<%
		}
		%>
		
		
	</table>
</body>
</html>









