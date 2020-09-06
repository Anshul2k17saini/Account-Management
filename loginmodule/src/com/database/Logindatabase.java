package com.database;
import java.sql.*;  

public class Logindatabase
{
	String url = "jdbc:mysql://localhost:3306/web";
	String username="root";
	String password="Anshul@123";
	String sql="select * from Login where uname=? and pass=?";
	public boolean check(String uname,String pass)
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(url,username,password);    
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,pass);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			 con.close();  
			}catch(Exception e){ e.printStackTrace();}
		return false; 
			}  
	
		
	}
	
