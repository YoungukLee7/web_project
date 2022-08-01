package jspBoard.process;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.dao.AddBoardDAO;

public class BoardAddProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String write_list = request.getParameter("write_list");
		
		String write_content = request.getParameter("write_content");
		
		System.out.println(write_list + write_content);
		
		AddBoardDAO add = new AddBoardDAO();
		
		add.getList(write_list, write_content);
		
		return "/Bulletin";
	}
	
	

}
