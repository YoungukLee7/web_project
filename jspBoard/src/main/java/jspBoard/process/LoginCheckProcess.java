package jspBoard.process;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspBoard.model.loginBoard;
import jspBoard.dao.loginBoardDAO;

public class LoginCheckProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		List<loginBoard> loginlist = loginBoardDAO.getList(id,password);
		
		System.out.println("쓴 아이디: " + request.getParameter("id"));
		System.out.println("쓴 비밀번호: " + request.getParameter("password"));
		
//		System.out.println("DB 아이디: " + loginlist.get(0).getLogin_id());
//		System.out.println("DB 비밀번호: " + loginlist.get(0).getLogin_password());
		
		HttpSession session = request.getSession();
		
		if (loginlist.isEmpty() == true) {
			System.out.println("로그인 실패!");
			session.setAttribute("login", false);
		} else {
			System.out.println("로그인 성공!");
			session.setAttribute("login", true);
			
			Cookie cookie = new Cookie(id, request.getParameter("password"));
			cookie.setHttpOnly(true);
			response.addCookie(cookie);
		}
		
		return "/Board";
		
	}

}
