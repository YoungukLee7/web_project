package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.dataBase.DBConnector;

public class EmployeeModify implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("수정하기");
		
		
		
		Enumeration params = request.getParameterNames();

		while(params.hasMoreElements()){

		String names = (String)params.nextElement();

		System.out.println("key: " + names);
		}
		
		
		
		System.out.println("employee_id: " + request.getParameter("employee_id"));
		System.out.println("first_name: " + request.getParameter("first_name"));
		System.out.println("last_name: " + request.getParameter("last_name"));
		System.out.println("email: " + request.getParameter("email"));
		System.out.println("phone_number: " + request.getParameter("phone_number"));
		System.out.println("hire_date: " + request.getParameter("hire_date"));
		System.out.println("job_id: " + request.getParameter("job_id"));
		System.out.println("salary: " + request.getParameter("salary"));
		System.out.println("commission_pct: " + request.getParameter("commission_pct"));
		System.out.println("manager_id: " + request.getParameter("manager_id"));
		System.out.println("department_id: " + request.getParameter("department_id"));
		
//		String sql = "UPDATE employees SET ?=? where ?=?";
//		
//		try (
//				Connection conn = DBConnector.getConnection();
//				PreparedStatement pstmt = conn.prepareStatement(sql);
//		){
//				pstmt.setString(1, "latte");
//				pstmt.setString(2, "latte");
//				pstmt.setString(3, "latte");
//				pstmt.setString(4, "latte");
//				pstmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		return "/employee/list";
	}

}
