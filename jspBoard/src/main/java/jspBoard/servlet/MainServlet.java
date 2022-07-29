package jspBoard.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.process.BoardProcess;
import jspBoard.process.LoginCheckProcess;
import jspBoard.process.Process;

public class MainServlet extends HttpServlet{
	
	HashMap<String, Process> url_mapping;
	
	@Override
	public void init() throws ServletException {
		url_mapping = new HashMap<>();
		url_mapping.put("/Board", new BoardProcess());
		url_mapping.put("/Board/loginCheck", new LoginCheckProcess());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI().substring(req.getContextPath().length());
		
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
