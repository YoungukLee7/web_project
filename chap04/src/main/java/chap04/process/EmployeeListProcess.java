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

public class EmployeeListProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<Employee> employees = new ArrayList<>();
		
		String sql = "SELECT * FROM employees3";
		
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
				while (rs.next()) {
					employees.add(new Employee(rs));
					
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 꺼낸 데이터를 실어 놓는다.
		request.setAttribute("employees", employees);
		
		// 다음으로 어떤 페이지로 가야 하는지 정하고 URL을 리턴한다
		return "/WEB-INF/views/employee/list.jsp";
	}

	public static void main(String[] args) {
		new EmployeeListProcess().process(null, null);
	}
}
