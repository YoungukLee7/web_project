package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

@WebServlet("/attrebute/scope")
public class ScopeServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 세션 객체 (세션 당 1개)
		HttpSession session = req.getSession();
		// 어플리케이션 객체 (서버 당 1개)
		ServletContext application = req.getServletContext();
		
		application.setAttribute("car", "Audi");
		session.setAttribute("car", "BNW");
		// 요청 객체 (요청 당 1개)
		req.setAttribute("car", "Hyundai");
		
		req.getRequestDispatcher("/attrebute/view/car.jsp").forward(req, resp);
	}
}
