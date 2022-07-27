<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Select List</title>
</head>
<body>
		
		<c:forEach items="${first_names }" var="i">
			<li>${i.first_name }</li>
		
			<form action="../modify" method="POST">
		
				employee_id : <input type="number" name="employee_id" placeholder="${i.employee_id }" autocomplete="off"/> <br>
				first_name : <input type="text" name="first_name" placeholder="${i.first_name }" autocomplete="off"/> <br>
				last_name : <input type="text" name="last_name" placeholder="${i.last_name }" autocomplete="off"/> <br>
				email : <input type="text" name="email" placeholder="${i.email }" autocomplete="off"/> <br>
				phone_number : <input type="text" name="phone_number" placeholder="${i.phone_number }" autocomplete="off"/> <br>
				hire_date : <input type="date" name="hire_date" placeholder="${i.hire_date }" autocomplete="off" id="Date"/> 
							<label for="Date">${i.hire_date }</label> <br>
				job_id : <input type="text" name="job_id" placeholder="${i.job_id }" autocomplete="off"/> <br>
				salary : <input type="number" name="salary" placeholder="${i.salary }" autocomplete="off"/> <br>
				commission_pct : <input type="number" step="0.01" name="commission_pct" placeholder="${i.commission_pct }" autocomplete="off"/> <br>
				manager_id : <input type="number" name="manager_id" placeholder="${i.manager_id }" autocomplete="off"/> <br>
				department_id : <input type="number" name="department_id" placeholder="${i.department_id }" autocomplete="off"/> <br>
			
				<input type="submit" value="수정하기" />
			</form>		
		
		</c:forEach>
</body>
</html>