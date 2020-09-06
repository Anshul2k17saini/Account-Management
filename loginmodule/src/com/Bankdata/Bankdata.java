package com.Bankdata;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BankDB.BankDB;



@WebServlet("/Bankdata")
public class Bankdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String Bname=request.getParameter("Bname");
		String Branchname=request.getParameter("Branchname");
		int ifc=Integer.parseInt(request.getParameter("ifc")); 
		int accountno=Integer.parseInt(request.getParameter("accountno")); 
		BankDB Pro=new BankDB(email,Bname,Branchname,ifc,accountno);
		Pro.insertIntoDB();
		response.sendRedirect("Bankdetails.jsp");	
		
		
		
		
	}

	
}
