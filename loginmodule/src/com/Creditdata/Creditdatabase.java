package com.Creditdata;
import java.sql.*; 
public class Creditdatabase {
	 private final String url="jdbc:mysql://localhost:3306/web";
	 private final String USER_NAME="root";
	 private final String PASSWORD="Anshul@123";

	 
	 
	 private  String email;
	 private  String bankn;
	 private  int moneyc;
	 

	public Creditdatabase(String bankn,String email,int moneyc) {
		super();//as if we not use this when wee create object it we call default constructor
		this.bankn=bankn;
		this.email=email;
		this.moneyc=moneyc;
		
	}
	public void Creditdb()
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,USER_NAME,PASSWORD);
			Statement st=con.createStatement();
			String sql="select * from Credit";
			st.execute(sql);
			 con.close();  
		}
		catch(Exception e){ 
			e.printStackTrace();
		}		
		
	}

}
