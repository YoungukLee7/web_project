package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/gugudan")
public class GugudanServlet extends HttpServlet{

	/*
 	/chap01/servlet/gugudan으로 접속하는 클라이언트에게 
 	예쁜 구구단 표를 응답하는 서블릿을 만들어보시오
	 */
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 한글 나오게 하기
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>멋진 구구단</title>");
		
		// 한글 나오게 하기
		out.print("<meta charset=\"EUC-KR\">");		
		
		out.print("<style>");
		out.print("table { background-color: gold; color: white;}");
		out.print("td,th { border: solid yellow 3px}");
		out.print("</style>");
		
		out.print("</head>");
		out.print("<body>");
		out.print("<table>");
		out.print("<tr>");
		for (int i = 2; i <= 9; i++) {
			out.print("<th>" + i + "단</th>");
		}
		out.print("</tr>");
		
		out.print("<tr>");
		for (int i = 1; i <= 9; i++) {
			for (int j = 2; j <= 9; j++) {
				out.print("<td>" + j + "X" + i + "=" + j*i + "</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");		
		out.print("</body>");
		out.print("</html>");
		
	}
}
