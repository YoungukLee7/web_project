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
		<!-- 해당 객체의 속성에 Getter가 있으면 EL로 편리하게 해당 속성을 꺼내 사용할 수 있다 -->

		<h3># Employees</h3>
		<!-- 내가 한것
		<c:forEach items="${employees }" var="employee">
			<li>${employee.first_name } ${employee.last_name }</li> <form action="./modify/select">																		
																	<input type="submit" name="first_name" value="${employee.first_name }" id="modifyBtn"/>
																		<label for="modifyBtn">수정</label>
																	</form>
																	
																	<form action="./delete">
																		<input type="submit" name="first_name" value="${employee.first_name }" id="deleteBtn"/>
																		<label for="deleteBtn">삭제</label>
																	</form>
		</c:forEach>
		-->
		
	<!-- 강사님 풀이 -->
	
	<ul>	
		<c:forEach items="${employees }" var="employee">
			<li>${employee.first_name } ${employee.last_name }
			(<a href="./modifyForm?emp=${employee.employee_id }">수정</a>
			/ <a href="./delete/test?emp=${employee.employee_id }">삭제</a>) </li> 
		</c:forEach>
	</ul>	
	
</body>
</html>