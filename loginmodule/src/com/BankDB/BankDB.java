package com.BankDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class BankDB {
		private final String URL = "jdbc:mysql://localhost:3306/web";
		private final String USER_NAME="root";
		private final String PASSWORD="Anshul@123";
		
		private String email;;
		private String Bname;
		private String Branchname;
		private int ifc;
		private int accountno;
		
		

		public BankDB(String email,String Bname,String Branchname,int ifc,int accountno) {
			this.email=email;
			this.Bname=Bname;
			this.Branchname=Branchname;
			this.ifc=ifc;
			this.accountno=accountno;
		}
		
		public void insertIntoDB(){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(URL,USER_NAME,PASSWORD);    
				Statement st=con.createStatement();
				String sql="Insert into Bankdb values('" +email+ "','" +Bname+ "','" +Branchname+ "','" +ifc+ "','" +accountno+ "')";
				st.execute(sql);
				 con.close();  
				
			}
			catch(Exception e){ 
				e.printStackTrace();
		
		}

		
		
	}

}
