package com.registerdatabase;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.db.DBConnect;

public class Rigisterdatabase {
		
	private String name;
	private String lname;
	private String uname;
	private String pass;
	

	public Rigisterdatabase(String name, String lname, String uname, String pass) {
		super();
		this.name = name;
		this.lname = lname;
		this.uname = uname;
		this.pass = pass;
	}
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

	public void insertIntoDB()
	{
		try {
			DBConnect.insertDataForLogin(uname, pass, name, lname);
		} catch (SQLException e) {
			e.printStackTrace();
		}			
	}  
	

}
