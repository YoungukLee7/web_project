package jspBoard.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
	
	private static String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	private static String id = "hr";
	private static String password = "1234";

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("JDBC Loading Success..");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("JDBC Loading Fail...");
		}
	}
	
	public static Connection getConnection() {
		try {
			return DriverManager.getConnection(url,id,password);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		System.out.println(DBConnector.getConnection());
	}
	
}
