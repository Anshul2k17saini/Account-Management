package com.Amountdata;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.AmountDB.AmountDB;


@WebServlet("/Amountdata")
public class Amountdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		int accountno=Integer.parseInt(request.getParameter("accountno"));
		String Bname=request.getParameter("Bname");
		AmountDB t=new AmountDB(email,Bname,accountno);
		if(t.check(email))
		{
			
			t.insertIntoDB();
			response.sendRedirect("Rigister.jsp");	
			
		}
		else
		{
			response.sendRedirect("login.jsp");
		}


	}

	
}
