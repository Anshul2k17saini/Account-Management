package com.ProfileDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ProfileDB {
	private final String URL = "jdbc:mysql://localhost:3306/web";
	private final String USER_NAME="root";
	private final String PASSWORD="Anshul@123";
	
	private int Phoneno;
	private String country;
	private String state;
	private String email;
	private String Addss;
	private int Pincode;

	public ProfileDB(String email,int Phoneno,String country,String state,String Addss,int Pincode) {
		this.email=email;
		this.Phoneno=Phoneno;
		this.country=country;
		this.state=state;
		this.Addss=Addss;
		this.Pincode=Pincode;
	}
	
	public void insertIntoDB(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);    
			Statement st=con.createStatement();
			String sql="Insert into persondata values('" +email+ "','" +Phoneno+ "','" +country+ "','" +state+ "','" +Addss+ "','" +Pincode+ "')";
			st.execute(sql);
			 con.close();  
			
		}
		catch(Exception e){ 
			e.printStackTrace();
	
	}

}
}
