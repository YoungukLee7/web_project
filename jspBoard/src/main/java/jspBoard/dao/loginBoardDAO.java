package jspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspBoard.database.DBConnector;
import jspBoard.model.loginBoard;

public class loginBoardDAO {
	
	public static List<loginBoard> getList() {
		
		List<loginBoard> list = new ArrayList<>();
		
		String sql = "SELECT * FROM loginBoard";
		
		try (				
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
				while (rs.next()) {
					list.add(new loginBoard(rs));
				}
				System.out.println("로그인 연결 완료!" + list);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("로그인 연결 실패!");
		}
		
		return list;
		
	}
	
}
