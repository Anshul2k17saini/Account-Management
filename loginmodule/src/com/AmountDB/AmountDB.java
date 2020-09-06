package com.AmountDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class AmountDB {

	private final String URL = "jdbc:mysql://localhost:3306/web";
	private final String USER_NAME="root";
	private final String PASSWORD="Anshul@123";
	
	
	private String Bname;
	private String email;
	private int accountno;
	private int Amount=50000;
	

	public AmountDB(String email,String Bname,int accountno) {
		this.email=email;
		this.Bname=Bname;
		this.accountno=accountno;
		
	}
	public boolean check(String email)
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD); 
			String sql="select * from Login where uname=?";
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,email);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			 con.close();  
			}catch(Exception e){ e.printStackTrace();}
		return false; 
			}  
	
	
	
	public void insertIntoDB(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);    
			Statement st=con.createStatement();
			String sql="Insert into AmountDb values('" +email+ "','" +Bname+ "','" +accountno+ "','" +Amount+ "')";
			st.execute(sql);
			 con.close();  
			
		}
		catch(Exception e){ 
			e.printStackTrace();
	
	}


}
}
