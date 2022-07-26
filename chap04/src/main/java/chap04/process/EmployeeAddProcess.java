package chap04.process;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.dataBase.DBConnector;

public class EmployeeAddProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println(request.getParameter("employee_id"));
		System.out.println(request.getParameter("last_name"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("hire_date"));
		System.out.println(request.getParameter("job_id"));
		
		int employee_id =  Integer.parseInt(request.getParameter("employee_id"));
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String hire_date = request.getParameter("hire_date");
		String job_id = request.getParameter("job_id");
		
		
		String sql = "INSERT INTO employees(employee_id,last_name,email,hire_date,job_id) " + "VALUES (?,?,?,?,?)";
		
		
		//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	
		
		try (				
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			
			pstmt.setInt(1, employee_id);
			pstmt.setString(2, last_name);
			pstmt.setString(3, email);
			
			// preparedStat의 setDate는 java.sql.Date를 요구한다
			// java.sql.Date의 static method 중 valueOf에 html에서 받은 날짜 형식을 그대로 넘기면
			// java.sql.Date의 인스턴스를 반환한다
			pstmt.setDate(4, Date.valueOf(hire_date));
		
			
			pstmt.setString(5, job_id);

			int row = pstmt.executeUpdate();
			
			System.out.println(row + "행이 추가되었습니다. " + "추가 완료!");
			
		} catch (SQLException e) {
			System.out.println("추가 불발!");
			e.printStackTrace();
		}
		
		
		return "redirect:/chap04/employee/list";
	}

}
