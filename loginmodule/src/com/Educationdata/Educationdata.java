package com.Educationdata;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EducationDB.EducationDB;
import com.ProfileDB.ProfileDB;

@WebServlet("/Educationdata")
public class Educationdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String Uniname=request.getParameter("Uniname");
		float Unicgpa=Float.parseFloat(request.getParameter("Unicgpa")); 
		String scname=request.getParameter("scname");
		float gradea=Float.parseFloat(request.getParameter("gradea"));
		float gradeb=Float.parseFloat(request.getParameter("gradeb"));
		
		 EducationDB Edu=new  EducationDB(email,Uniname,Unicgpa,scname,gradea,gradeb);
		 Edu.insertIntoDB();
		 response.sendRedirect("Educationdetails.jsp");	
	}

}
