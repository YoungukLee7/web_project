package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.dataBase.DBConnector;
import chap04.model.Employee;

public class EmployeeModifySelect implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("수정할 것 선택하기");
		System.out.println(request.getParameter("first_name"));
		
		String first_name = request.getParameter("first_name");
		
		ArrayList<Employee> first_names = new ArrayList<>();
		
		String sql = "SELECT * FROM employees3 WHERE first_name = '" + first_name + "'";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
			
			while (rs.next()) {
				first_names.add(new Employee(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("first_names", first_names);


		return "/WEB-INF/views/employee/selectList.jsp";
	}

}
