package jspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jspBoard.database.DBConnector;

public class UpdateBoardDAO {
	
	public UpdateBoardDAO(String write_number , String write_list, String write_content) {		
		String sql = "UPDATE bulletin_board SET write_list = ?,write_content = ? where write_number = ?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setString(1, write_list);
			pstmt.setString(2, write_content);
			pstmt.setString(3, write_number);
			
			int row = pstmt.executeUpdate();
			
			System.out.println(row + " row(s) update.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}


