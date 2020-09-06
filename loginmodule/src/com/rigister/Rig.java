package com.rigister;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.registerdatabase.Rigisterdatabase;

@WebServlet("/Rig")
public class Rig extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String lname=request.getParameter("lname");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String repass=request.getParameter("repass");
		if(repass.equals(pass))
		{
			
			Rigisterdatabase register = new Rigisterdatabase(name,lname,uname,pass);
			register.insertIntoDB();
			response.sendRedirect("login.jsp");	
		}
		else
		{
			PrintWriter out = response.getWriter();
		    out.println("Re _Enter password is not Correct");
		    out.println("Enter Password Again");	
		}
		
	}

	

}
