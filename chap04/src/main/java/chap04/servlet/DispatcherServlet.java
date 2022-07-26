package chap04.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.process.AddForm;
import chap04.process.EmployeeAddFormProcess;
import chap04.process.EmployeeAddProcess;
import chap04.process.EmployeeInsert;
import chap04.process.EmployeeListProcess;
import chap04.process.Process;

public class DispatcherServlet extends HttpServlet{
	
	HashMap<String, Process> url_mapping;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		url_mapping = new HashMap<>();
		url_mapping.put("/employee/list", new EmployeeListProcess());
		
		// 여러개의 주소들을 등록해 놓을 수 있다
		url_mapping.put("/addForm", new AddForm());
		url_mapping.put("/employeeInsert", new EmployeeInsert());
		
		// 강사님이 푼 것
		url_mapping.put("/employee/add_form", new EmployeeAddFormProcess());
		url_mapping.put("/employee/add", new EmployeeAddProcess());
		
		
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
			
			if (nextPath.startsWith("redirect:")) {
				resp.sendRedirect(nextPath.substring("redirect:".length()));
				return;
			}
		} else {
			nextPath = "/WEB-INF/views/errorpage/not_found.jsp";
		}	
		req.getRequestDispatcher(nextPath).forward(req, resp);
	}
}
