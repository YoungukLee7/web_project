package jspBoard.process;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.dao.UpdateBoardDAO;

public class UpdateBoardProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		System.out.println(request.getParameter("write_number"));
		System.out.println(request.getParameter("write_list"));
		System.out.println(request.getParameter("write_content"));
		
		String number = request.getParameter("write_number");
		String list = request.getParameter("write_list");
		String content = request.getParameter("write_content");
		
		
		new UpdateBoardDAO(number, list, content);
		
		return "/Bulletin";
	}

}
