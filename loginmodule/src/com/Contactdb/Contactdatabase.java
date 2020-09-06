package com.Contactdb;

import java.sql.*;
public class Contactdatabase {
	private final String URL = "jdbc:mysql://localhost:3306/web";
	private final String USER_NAME="root";
	private final String PASSWORD="Anshul@123";
	
	private String Phoneno;
	private String Email;
	private String comments;
	private String time;
	
	public Contactdatabase(String Phoneno,String comments,String Email,String time) {
		this.Phoneno = Phoneno;
		this.Email = Email;
		this.time = time;
		this.comments = comments;
	}
	public void contactdb()
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);    
			Statement st=con.createStatement();
			String sql="Insert into contact values('" +Email+ "','" +comments+ "','" +time+ "','" +Phoneno+ "')";
			st.execute(sql);
			 con.close();  
		}
		catch(Exception e){ 
			e.printStackTrace();
		}	
	}
	
	
	
	

}
