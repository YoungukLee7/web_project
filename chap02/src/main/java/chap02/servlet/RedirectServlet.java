package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/redirect/controller")
public class RedirectServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Redirect 서블릿에 왔다감.");
		System.out.println("name: " + req.getParameter("name"));
		System.out.println("age: " + req.getParameter("age"));
		
		// redirect : 클라이언트에게 새로운 요청을 보낼것을 응답한다
		// 새로운 요청이기 때문에 데이터를 가져오지 않는다
		resp.sendRedirect("../forward/page/page1.jsp");
		
		// 억지로 뒤에 써주면 가능
		//resp.sendRedirect("../forward/page/page1.jsp?name=lee&age=13");
	}
}
