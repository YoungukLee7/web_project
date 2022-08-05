package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/attrebute/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println(req.getParameter("user_id"));
		System.out.println(req.getParameter("user_password"));

		String userId = req.getParameter("user_id");
		String userPassword = req.getParameter("user_password");
		
		HttpSession session = req.getSession();
		
		// 로그인 여부
		if ("admin".equals(userId) && "1234".equals(userPassword)) {
			session.setAttribute("login", true);
		} else {
			session.setAttribute("login", false);			
		}
		req.getRequestDispatcher("/attrebute/view/login_result_page.jsp")
		.forward(req, resp);
	}

}
