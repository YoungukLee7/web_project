package jspBoard.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModiBoardProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		return "/WEB-INF/views/ModiBoard.jsp";
	}

}
