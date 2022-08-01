package jspBoard.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.process.AddboardProcess;
import jspBoard.process.BoardAddProcess;
import jspBoard.process.BoardProcess;
import jspBoard.process.BulletinProcess;
import jspBoard.process.DeleteBoardProcess;
import jspBoard.process.LoginCheckProcess;
import jspBoard.process.ModiBoardProcess;
import jspBoard.process.Process;
import jspBoard.process.UpdateBoardProcess;

public class MainServlet extends HttpServlet{
	
	HashMap<String, Process> url_mapping;
	
	@Override
	public void init() throws ServletException {
		url_mapping = new HashMap<>();
		// 로그인 화면
		url_mapping.put("/Board", new BoardProcess());
		// 로그인 체크 프로세스
		url_mapping.put("/Board/loginCheck", new LoginCheckProcess());
		// 게시판 화면
		url_mapping.put("/Bulletin", new BulletinProcess());
		// 글 쓰기 화면
		url_mapping.put("/AddBoard", new AddboardProcess());
		// 글 쓰기 프로세스
		url_mapping.put("/AddBulletin", new BoardAddProcess());
		// 글 수정 화면
		url_mapping.put("/ModiBoard", new ModiBoardProcess());
		// 글 수정 프로세스
		url_mapping.put("/UpdateBoard", new UpdateBoardProcess());
		// 글 삭제 화면
		url_mapping.put("/DeleteBoard", new DeleteBoardProcess());
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI().substring(req.getContextPath().length());
		
		Process process = url_mapping.get(uri);
		
		String nextPath;
		if (process != null) {
			nextPath = process.process(req, resp);
		} else {
			nextPath = "/WEB-INF/views/error.jsp";
		}
		req.getRequestDispatcher(nextPath).forward(req, resp);
	}

}
