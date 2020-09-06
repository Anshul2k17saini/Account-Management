package com.data;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.Database;
import com.registerdatabase.Rigisterdatabase;

@WebServlet("/Data")
public class Data extends HttpServlet {   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	 int phonno= Integer.parseInt(request.getParameter("phonno"));
     String country =request.getParameter("country");
     String Email_id=request.getParameter("Email_id");
     String Address =request.getParameter("Address");
      Database reg = new Database(phonno,country,Email_id,Address);
	  reg.insertDB();
	  response.sendRedirect("welcom.jsp");	
		
	}

	
}
