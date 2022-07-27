package chap04.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmployeedeleteTest implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("테스트 딜리트");
		
		return null;
	}

}
