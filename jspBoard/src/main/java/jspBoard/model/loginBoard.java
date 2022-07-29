package jspBoard.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class loginBoard {
	
	private Integer login_key;
	private String login_id;
	private String login_password;

	public loginBoard(ResultSet rs) throws SQLException {
		login_key			= rs.getInt("login_key");
		login_id			= rs.getString("login_id");
		login_password		= rs.getString("login_password");
	}

	public Integer getLogin_key() {
		return login_key;
	}

	public void setLogin_key(Integer login_key) {
		this.login_key = login_key;
	}

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getLogin_password() {
		return login_password;
	}

	public void setLogin_password(String login_password) {
		this.login_password = login_password;
	}
	
	
}
