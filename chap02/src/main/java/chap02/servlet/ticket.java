package chap02.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.constant.DirectMethodHandleDesc.Kind;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/ticket")
public class ticket extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Post방식 요청이 도착했습니다!!");
		
		System.out.println(req.getParameter("kind"));
		
		System.out.println(req.getParameter("count1"));
		System.out.println(req.getParameter("count2"));
		System.out.println(req.getParameter("count3"));
		
		System.out.println(req.getParameter("kind1"));
		
		System.out.println(req.getParameter("count11"));
		System.out.println(req.getParameter("count21"));
		System.out.println(req.getParameter("count31"));

		//------------------------------------------------------------------
		
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>영수증</title>");
		
		// 한글 나오게 하기
		out.print("<meta charset=\"EUC-KR\">");		
		
		out.print("<style>");
		out.print("table { background-color: white; color: black;}");
		out.print("</style>");
		
		out.print("</head>");
		out.print("<body>");
		out.print("<table border=\"1\">");
		
		out.print("<tr>");
		out.print("<th rowspan=\"3\">주간권</th>");
		out.print("<th>대인</th>");
		out.print("<th>청소년</th>");
		out.print("<th>소인/경로</th>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>" + req.getParameter("count1") + "</td>");
		out.print("<td>" + req.getParameter("count2") + "</td>");
		out.print("<td>" + req.getParameter("count3") + "</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>" + Integer.parseInt(req.getParameter("count1")) * 45000 + "</td>");
		out.print("<td>" + Integer.parseInt(req.getParameter("count2")) * 38000 + "</td>");
		out.print("<td>" + Integer.parseInt(req.getParameter("count3")) * 35000 + "</td>");
		out.print("</tr>");
		
		out.print("</table>");		
			
		out.print("<table border=\"1\">");
		
		out.print("<tr>");
		out.print("<th rowspan=\"3\">야간권</th>");
		out.print("<th>대인</th>");
		out.print("<th>청소년</th>");
		out.print("<th>소인/경로</th>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>" + req.getParameter("count11") + "</td>");
		out.print("<td>" + req.getParameter("count21") + "</td>");
		out.print("<td>" + req.getParameter("count31") + "</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>" + Integer.parseInt(req.getParameter("count11")) * 36000 + "</td>");
		out.print("<td>" + Integer.parseInt(req.getParameter("count21")) * 33000 + "</td>");
		out.print("<td>" + Integer.parseInt(req.getParameter("count31")) * 31000 + "</td>");
		out.print("</tr>");
		
		out.print("</table>");
		
		out.print("</body>");
		out.print("</html>");
		
		
	}
}
