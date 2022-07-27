package chap04.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmployeeDelete implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("삭제하기");
		System.out.println(request.getParameter("first_name"));
		
		return "/employee/list";
	}

}
