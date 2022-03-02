package kr.co.farmstory1.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	private static DBConfig instance = new DBConfig();
	
	public static DBConfig getInstance() {
		return instance;
	}
	
	private DBConfig() {}
	
	private final String HOST = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
	private final String USER = "jhmcos13";
	private final String PASS = "1234";
	//private final String HOST = "jdbc:mysql://localhost:3306/";
	//private final String USER = "root";
	//private final String PASS = "1234";
	
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		return conn;
	}
}