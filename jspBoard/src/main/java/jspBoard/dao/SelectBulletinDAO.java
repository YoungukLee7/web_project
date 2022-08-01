package jspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspBoard.database.DBConnector;
import jspBoard.model.bulletinBoard;

public class SelectBulletinDAO {

	
	public static List<bulletinBoard> getList(int number) {
		
		List<bulletinBoard> list = new ArrayList<>();
		
		String sql = "SELECT * FROM bulletin_board where write_number = ?";
		
		try (				
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setInt(1, number);
			
			try (
					ResultSet rs = pstmt.executeQuery();			
			){				
				if (rs.next()) {
					list.add(new bulletinBoard(rs));
				}
			} 
			
			System.out.println("게시글 연결 완료!" + list);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("게시글 연결 실패!");
		}
		
		return list;
	}
}
