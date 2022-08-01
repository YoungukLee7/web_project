package jspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jspBoard.database.DBConnector;

public class DeleteBoardDAO {
	
	public  DeleteBoardDAO(int number) {
		
		String sql = "DELETE FROM bulletin_board WHERE write_number = ?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				){
			pstmt.setInt(1, number);
			
			int row = pstmt.executeUpdate();
			
			System.out.println(row + " row(s) update.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
		
	
}
