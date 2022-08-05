package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/session/attribute/modify")
public class SessionAttrebuteModifyServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 req.getSession().setAttribute(req.getParameter("key"), req.getParameter("value"));
		 
		 resp.sendRedirect("/chap02/session/index.jsp");
	}
	
}
