package com.Senminus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Sendminus {
	private final String URL="jdbc:mysql://localhost:3306/web";
	private final String USERID="root";
	private final String PASSWORD="Anshul@123";
    
	private String email;
	private String sendtoemail;
	private String Bname;
	private int accountno;
	private int amount;
	
	
	public Sendminus(String email,String sendtoemail,String Bname,int amount,int accountno) {
		this.email=email;
		this.Bname=Bname;
		this.amount=amount;
		this.sendtoemail=sendtoemail;
		this.accountno=accountno;
	}
	
	public boolean check(String email)
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(URL,USERID,PASSWORD); 
			String sql="select * from AmountDb where Email=? and Amount>= ?";
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,email);
			st.setInt(2,amount);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			 con.close();  
			}catch(Exception e){ e.printStackTrace();}
				return false; 
			} 
	
	
	public void insertIntodebit(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(URL,USERID,PASSWORD);    
			Statement st=con.createStatement();
			String sql="Insert into debit values('" +email+ "','" +amount+ "','" +sendtoemail+ "','" +Bname+ "','" +accountno+ "')";
			st.execute(sql);
			 con.close();  
			
		}
		catch(Exception e){ 
			e.printStackTrace();}
	
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
	
		public void Addtosendamount(){
			try{
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection(URL,USERID,PASSWORD); 
				String sql="update AmountDb set Amount=Amount+? where Email=?";
				PreparedStatement st=con.prepareStatement(sql);
				st.setInt(1,amount);
				st.setString(2,sendtoemail);
				st.executeUpdate();
				con.close();  
			}
			catch(Exception e){ 
				e.printStackTrace();}
			
	}
		public void  minuemailammount(){
			try{
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection(URL,USERID,PASSWORD); 
				String sql="update AmountDb set Amount=Amount-? where Email=?";
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
	
	



