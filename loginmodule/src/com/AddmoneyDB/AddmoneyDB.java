package com.AddmoneyDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class AddmoneyDB {
      
	private final String URL="jdbc:mysql://localhost:3306/web";
	private final String USERID="root";
	private final String PASSWORD="Anshul@123";
    
	private String email;
	private String Bname;
	private int accountno;
	private int amount;
	
	
	public AddmoneyDB(String email,String Bname,int amount,int accountno) {
		this.email=email;
		this.Bname=Bname;
		this.amount=amount;
		this.accountno=accountno;
	}
	public void insertIntocredit(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(URL,USERID,PASSWORD);    
			Statement st=con.createStatement();
			String sql="Insert into credit values('" +email+ "','" +amount+ "','" +Bname+ "')";
			st.execute(sql);
			 con.close();  
			
		}
		catch(Exception e){ 
			e.printStackTrace();}
		
}
	public void Addtoamount(){
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(URL,USERID,PASSWORD); 
			String sql="update AmountDb set Amount=Amount+? where Email=?";
			PreparedStatement st=con.prepareStatement(sql);
			st.setInt(1,amount);
			st.setString(2,email);
			st.executeUpdate();
			con.close();  
		}
		catch(Exception e){ 
			e.printStackTrace();}
		
}
	
	
	
	
}
