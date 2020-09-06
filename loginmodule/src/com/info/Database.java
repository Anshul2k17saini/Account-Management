package com.info;

import java.sql.*;

public class Database {
	private final String URL = "jdbc:mysql://localhost:3306/web";
	private final String USER_NAME="root";
	private final String PASSWORD="Anshul@123";
	
	private int phonno;
	private String country;
	private String Email_id;
	private String Address;
	
	public Database(int phonno,String country,String Email_id,String Address){
		super();
		this.phonno=phonno;
		this.country=country;
		this.Email_id=Email_id;
		this.Address=Address;
		

}
	public void insertDB()
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);    
			Statement st=con.createStatement();
			String sql="Insert into info values('" +phonno+ "','" +country+ "','" +Email_id+ "','" +Address+ "')";
			st.execute(sql);
			 con.close();  
		}
		catch(Exception e){ 
			e.printStackTrace();
		}			
	}  
}
