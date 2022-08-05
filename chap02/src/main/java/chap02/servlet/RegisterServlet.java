package chap02.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/register")
public class RegisterServlet extends HttpServlet{
	
	// doGet : 해당 서블릿으로 GET방식 요청이 도착했을 때 처리되는 곳
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Get방식 요청이 도착했습니다!!");
		
		System.out.println("사용자가 보낸 데이터1(Get): " + req.getParameter("name"));
		System.out.println("사용자가 보낸 데이터2(Get): " + req.getParameter("age"));
		System.out.println("사용자가 보낸 데이터3(Get): " + req.getParameter("blood"));
	}
	
	// doPost : 해당 서블릿으로 Post방식 요청이 도착했을 때 처리되는 곳
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Post방식 요청이 도착했습니다!!");
		
		// checkbox등으로 하나의 파라미터에 여러 값이 오는 경우 getParameterValues()를 사용한다
		System.out.println("취미를 getParameter()로 받기: " + req.getParameter("hobby"));
		System.out.println("취미를 getParameterValues()로 받기: " 
							+ Arrays.toString(req.getParameterValues("hobby")));
	}
	
	// service : 요청방식과 관계없이 먼저 처리되는 곳
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Service가 처리되었습니다!!");
		
		System.out.println("사용자가 보낸 데이터1(Service): " + req.getParameter("name"));
		System.out.println("사용자가 보낸 데이터2(Service): " + req.getParameter("age"));
		
		// 부모 클래스의 service가 원래 하던 일 : service 처리 후 알맞은 처리 메서드로 보내는 일
		super.service(req, resp);
	}
}
