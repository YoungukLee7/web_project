package jspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jspBoard.database.DBConnector;
import jspBoard.model.bulletinBoard;

public class AddBoardDAO {

	public static List<bulletinBoard> getList(String write_list, String write_content) {
		
		List<bulletinBoard> list = new ArrayList<>();
		
		String sql = "INSERT INTO bulletin_board VALUES (Board_number_seq.nextval,?,?)";
		
		try (
				Connection conn = DBConnector.getConnection();		
				PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setString(1, write_list);
			pstmt.setString(2, write_content);
			
			int row = pstmt.executeUpdate();
			
			System.out.println(row + "행이 추가되었습니다. " + "추가 완료!");
		} catch (SQLException e) {
			System.out.println("추가 불발!");
			e.printStackTrace();
		}
		
		return list;
	}
	
}
