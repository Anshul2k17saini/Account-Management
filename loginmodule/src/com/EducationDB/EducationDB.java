package com.EducationDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class EducationDB {
		private final String URL = "jdbc:mysql://localhost:3306/web";
		private final String USER_NAME="root";
		private final String PASSWORD="Anshul@123";
		
	
		private String Uniname;
		private String scname;
		private String email;
		private float gradea;
		private float gradeb;
		private float Unicgpa;
		

		public EducationDB(String email,String Uniname,float Unicgpa,String scname,float gradea,float gradeb) {
			this.email=email;
			this.Uniname=Uniname;
			this.scname=scname;
			this.gradea=gradea;
			this.gradeb=gradeb;
			this.Unicgpa=Unicgpa;
		}
		
		public void insertIntoDB(){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);    
				Statement st=con.createStatement();
				String sql="Insert into Educationdata  values('" +email+ "','" +Uniname+ "','" +Unicgpa+ "','" +scname+ "','" +gradea+ "','" +gradeb+ "')";
				st.execute(sql);
				 con.close();  
				
			}
			catch(Exception e){ 
				e.printStackTrace();
		
		}

		
		
		
	}

}
