<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ �� ������</title>
</head>
<body>
		<h3># �Ƿ��ִ� attribute�� �̸����� �ش� ��Ʈ����Ʈ�� ����� �� �ִ�</h3>
		
		<p>��Ʈ����Ʈ�� ����� ��ü�� toString()�� ȣ���� �� �������� ����Ѵ�</p>
		
		<!-- ��¹�� 1 -->
		${product}
		
		<!-- ��¹�� 2 -->
		<%=request.getAttribute("product") %>

</body>
</html>