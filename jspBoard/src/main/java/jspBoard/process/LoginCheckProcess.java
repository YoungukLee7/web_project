package jspBoard.process;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.dao.loginBoardDAO;
import jspBoard.model.loginBoard;

public class LoginCheckProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		List<loginBoard> loginlist = loginBoardDAO.getList();
		
		System.out.println("쓴 아이디: " + request.getParameter("id"));
		System.out.println("쓴 비밀번호: " + request.getParameter("password"));
		
		System.out.println("DB 아이디: " + loginlist.get(0).getLogin_id());
		System.out.println("DB 비밀번호: " + loginlist.get(0).getLogin_password());
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		int i = 0;
		while (i <= loginlist.size()) {
			// 문자열은 보이는 것이 같아도 주소가 달라 == 말고 equals로 비교해야 한다.
			if (id.equals(loginlist.get(i).getLogin_id()) && password.equals(loginlist.get(i).getLogin_password())) {
				System.out.println("로그인 성공!");
				break;
			} else {
				System.out.println("로그인 실패!!");
			}
			i++;
		}
		
		
		return "/WEB-INF/views/Board.jsp";
	}

}
