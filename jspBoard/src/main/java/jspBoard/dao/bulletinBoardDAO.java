package jspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspBoard.database.DBConnector;
import jspBoard.model.bulletinBoard;
import jspBoard.model.loginBoard;

public class bulletinBoardDAO {
	
	public static List<bulletinBoard> getList() {
		
		List<bulletinBoard> list = new ArrayList<>();
		
		String sql = "SELECT * FROM bulletin_board";
		
		try (				
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				){
			while (rs.next()) {
				list.add(new bulletinBoard(rs));
			}
			System.out.println("게시글 연결 완료!" + list);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("게시글 연결 실패!");
		}
		
		return list;
	}
	
	public static void main(String[] args) {
		List<bulletinBoard> list =  new bulletinBoardDAO().getList();
		System.out.println(list.get(0).getWrite_list());
		System.out.println(list.get(0).getWrite_content());
	}
	
}

