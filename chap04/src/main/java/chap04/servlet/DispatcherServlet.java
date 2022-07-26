package chap04.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.process.EmployeeListProcess;
import chap04.process.Process;

public class DispatcherServlet extends HttpServlet{
	
	HashMap<String, Process> url_mapping;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		url_mapping = new HashMap<>();
		url_mapping.put("/employee/list", new EmployeeListProcess());
		//url_mapping.put("/employee/add", new EmployeeAddProcess());
		//url_mapping.put("/employee/modify", new EmployeeUpdateProcess());
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		
		System.out.println("request uri: " + uri);
		// 진짜 uri를 꺼낸다 (chap04 없어짐)
		System.out.println("remove context path: " + uri.substring(req.getContextPath().length()));
		
		uri = uri.substring(req.getContextPath().length());
		
		// 사용자가 접속한 주소(URI)로 알맞은 처리(Process)를 꺼낸다
		Process process = url_mapping.get(uri);
		
		String nextPath;
		if (process != null) {
			nextPath = process.process(req, resp);
		} else {
			nextPath = "/WEB-INF/views/errorpage/not_found.jsp";
		}	
		req.getRequestDispatcher(nextPath).forward(req, resp);
	}
}
