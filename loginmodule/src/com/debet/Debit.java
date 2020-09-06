package com.debet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.debitdb.Debitdatabase;


@WebServlet("/Debit")
public class Debit extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bankn= request.getParameter("bankn");
		String email=request.getParameter("email");
		int moneyd=Integer.parseInt(request.getParameter("moneyd"));
		String sendto= request.getParameter("sendto");
		Debitdatabase obj=new Debitdatabase(bankn,email,moneyd,sendto);
		obj.Debitdb();
		response.sendRedirect("welcom.jsp");
		
	}

} 