<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Add New Employee</title>
</head>
<body>
		
		<h3># 새 사원 추가하기</h3>
		
		<form action="./employeeInsert" method="POST">
			employee_id 	: <input type="number" name="employee_id"/> <br>
			first_name		: <input type="text" name="first_name"/> <br>
			last_name 		: <input type="text" name="last_name"/> <br>
			email 			: <input type="text" name="email"/> <br>
			phone_number 	: <input type="text" name="phone_number"/> <br>
			hire_date 		: <input type="date" name="hire_date"/> <br>
			salary 			: <input type="number" name="salary"/> <br>
			commission_pct 	: <input type="number" step="0.01" name="commission_pct"/> <br>
			job_id			: <input type="radio" name="job_id" id="IT_PROG" value="IT_PROG"/> 
							  <label for="IT_PROG">IT_PROG</label> 
							  <input type="radio" name="job_id" id="ST_CLERK" value="ST_CLERK"/>
						  	  <label for="ST_CLERK">ST_CLERK</label> 
							  <input type="radio" name="job_id" id="SA_REP" value="SA_REP"/>
							  <label for="SA_REP">SA_REP</label> <br>
			department_id 	: <input type="radio" name="department_id" id="80" value="80"/> 
							  <label for="80">80</label> 
							  <input type="radio" name="department_id" id="90" value="90"/>
						  	  <label for="90">90</label> 
							  <input type="radio" name="department_id" id="100" value="100"/>
							  <label for="100">100</label> <br>
			<input type="submit" value="추가하기" />
		</form>
		
		

</body>
</html>