<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Employee List</title>
</head>
<body>
		<!-- �ش� ��ü�� �Ӽ��� Getter�� ������ EL�� ���ϰ� �ش� �Ӽ��� ���� ����� �� �ִ� -->

		<h3># Employees</h3>
		<!-- ���� �Ѱ�
		<c:forEach items="${employees }" var="employee">
			<li>${employee.first_name } ${employee.last_name }</li> <form action="./modify/select">																		
																	<input type="submit" name="first_name" value="${employee.first_name }" id="modifyBtn"/>
																		<label for="modifyBtn">����</label>
																	</form>
																	
																	<form action="./delete">
																		<input type="submit" name="first_name" value="${employee.first_name }" id="deleteBtn"/>
																		<label for="deleteBtn">����</label>
																	</form>
		</c:forEach>
		-->
		
	<!-- ����� Ǯ�� -->
	
	<ul>	
		<c:forEach items="${employees }" var="employee">
			<li>${employee.first_name } ${employee.last_name }
			(<a href="./modifyForm?emp=${employee.employee_id }">����</a>
			/ <a href="./delete/test?emp=${employee.employee_id }">����</a>) </li> 
		</c:forEach>
	</ul>	
	
</body>
</html>