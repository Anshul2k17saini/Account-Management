package com.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {

	private final static String URL = "jdbc:mysql://localhost:3306/web";
	private final static String USER_NAME="root";
	private final static String PASSWORD="Anshul@123";
	private static Connection con;
	private static Statement st;
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);
			st = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}  
		
	}
	
	public static void insertDataForLogin(String uname, String pass, String name, String lname) throws SQLException 
	{
		String sql="Insert into Login values('" +uname+ "','" +pass+ "','" +name+ "','" +lname+ "')";
		st.execute(sql);
	}

}
