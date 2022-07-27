package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.dao.JobDAO;
import chap04.dataBase.DBConnector;
import chap04.model.Employee;

public class EmployeeModifyFormProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		int emp_id = Integer.parseInt(request.getParameter("emp"));
		
		String sql = "SELECT * FROM employees3 WHERE employee_id=?";
		
		// 이렇게 하는것을 방지하기 위해 2번 이상 쓸거 같으면 데이터베이스 불러오는 것을 따로 만들어 준다
		// DAO로 Job을 만들어 주었다
		//String sql2 = "SELECT DISTINCT job_id, job_title FROM jobs";
		request.setAttribute("jobs", JobDAO.getList());
		
		String sql3 = "SELECT DISTINCT department_id, department_name FROM departments";
		
		
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			
				pstmt.setInt(1, emp_id);
				
				try (						
						ResultSet rs = pstmt.executeQuery();
				){
					request.setAttribute("employee", rs.next() ? new Employee(rs) : null);
				}
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "/WEB-INF/views/employee/ModiForm.jsp";
	}

}
