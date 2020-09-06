package com.Persondata;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ProfileDB.ProfileDB;
import com.registerdatabase.Rigisterdatabase;


@WebServlet("/Persondata")
public class Persondata extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		int Phoneno=Integer.parseInt(request.getParameter("Phoneno")); 
		String country=request.getParameter("country");
		String state=request.getParameter("state");
		String Addss=request.getParameter("Addss");
		int Pincode=Integer.parseInt(request.getParameter("Pincode")); 
		
		ProfileDB Pro=new ProfileDB(email,Phoneno,country,state,Addss,Pincode);
		Pro.insertIntoDB();
		response.sendRedirect("userdetails.jsp");	
		
		


	}

	
}
