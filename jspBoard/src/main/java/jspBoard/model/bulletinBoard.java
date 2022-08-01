package jspBoard.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class bulletinBoard {
	
	private Integer write_number;
	private String write_list;
	private String write_content;
	
	public bulletinBoard(ResultSet rs) throws SQLException{
		write_number = rs.getInt("write_number");
		write_list	= rs.getString("write_list"); 
		write_content	= rs.getString("write_content"); 
	}

	public Integer getWrite_number() {
		return write_number;
	}

	public void setWrite_number(Integer write_number) {
		this.write_number = write_number;
	}

	public String getWrite_list() {
		return write_list;
	}

	public void setWrite_list(String write_list) {
		this.write_list = write_list;
	}

	public String getWrite_content() {
		return write_content;
	}

	public void setWrite_content(String write_content) {
		this.write_content = write_content;
	}

	
	
	

}
