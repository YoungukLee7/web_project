package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/session/attribute/delete")
public class SessionAttrebuteDeleteServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.getSession().removeAttribute(req.getParameter("key"));
		
		resp.sendRedirect("/chap02/session/index.jsp");
	}
}
