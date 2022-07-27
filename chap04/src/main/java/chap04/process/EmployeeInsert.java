package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.dataBase.DBConnector;



public class EmployeeInsert implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request.getParameter("employee_id"));
		System.out.println(request.getParameter("first_name"));
		System.out.println(request.getParameter("last_name"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("phone_number"));
		System.out.println(request.getParameter("hire_date"));
		System.out.println(request.getParameter("job_id"));
		System.out.println(request.getParameter("salary"));
		System.out.println(request.getParameter("commission_pct"));
		System.out.println(request.getParameter("department_id"));
		
		int employee_id =  Integer.parseInt(request.getParameter("employee_id"));
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String hire_date = request.getParameter("hire_date");
		String job_id = request.getParameter("job_id");
		int salary = Integer.parseInt(request.getParameter("salary"));
		Double commission_pct = Double.valueOf(request.getParameter("commission_pct"));
		int department_id = Integer.parseInt(request.getParameter("department_id"));
		
		
		String sql = "INSERT INTO employees3 " + "VALUES (?,?,?,?,?,?,?,?,?,100,?)";
		
		try (				
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			conn.setAutoCommit(false);
			
			pstmt.setInt(1, employee_id);
			pstmt.setString(2, first_name);
			pstmt.setString(3, last_name);
			pstmt.setString(4, email);
			pstmt.setString(5, phone_number);
			pstmt.setString(6, hire_date);
			pstmt.setString(7, job_id);
			pstmt.setInt(8, salary);
			pstmt.setDouble(9, commission_pct);
			pstmt.setInt(10, department_id);
			
			pstmt.executeUpdate();
			conn.commit();
			
			System.out.println("추가 완료!");
			
		} catch (SQLException e) {
			System.out.println("추가 불발!");
			e.printStackTrace();
		}
		
		
		return "/addForm";
	}

}
















