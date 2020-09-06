package com.contact;
import java.text.SimpleDateFormat; 
import java.util.Date; 

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Contactdb.Contactdatabase;
import com.SendEmail.SendEmail;

@WebServlet("/Contact")
public class Contact extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Phoneno=request.getParameter("Phoneno"); 
		String comments=request.getParameter("comments");
		String Email=request.getParameter("email");
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		Date date = new Date();  
		String time=formatter.format(date);
		Contactdatabase obj1=new Contactdatabase(Phoneno,comments,Email,time);
		obj1.contactdb();
		//SendEmail obj2 =new SendEmail(Email,comments);
		//obj2.mail();
		response.sendRedirect("login.jsp");
		
	}

}
