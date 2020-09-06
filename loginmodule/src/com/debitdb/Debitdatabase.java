package com.debitdb;
import java.sql.*; 

public class Debitdatabase {
	
 private final String url="jdbc:mysql://localhost:3306/web";
 private final String USER_NAME="root";
 private final String PASSWORD="Anshul@123";

 
 
 private  String email;
 private  String bankn;
 private  int moneyd;
 private  String sendto;
 
	public Debitdatabase(String bankn,String email,int moneyd,String sendto) {
		super();//as if we not use this when wee create object it we call default constructor
		this.bankn=bankn;
		this.email=email;
		this.moneyd=moneyd;
		this.sendto=sendto;
	}
	public void Debitdb()
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,USER_NAME,PASSWORD);
			Statement st=con.createStatement();
			String sql="Insert into debit values('" +email+ "','" +moneyd+ "','" +sendto+ "','" +bankn+ "')";
			st.execute(sql);
			 con.close();  
		}
		catch(Exception e){ 
			e.printStackTrace();
		}		
		
	}
	

}
