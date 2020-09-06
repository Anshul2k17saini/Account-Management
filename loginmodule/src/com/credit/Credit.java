package com.credit;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Creditdata.Creditdatabase;
import com.debitdb.Debitdatabase;


@WebServlet("/Credit")
public class Credit extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bankn= request.getParameter("bankn");
		String email=request.getParameter("email");
		int moneyc=Integer.parseInt(request.getParameter("moneyc"));
		Creditdatabase obj=new Creditdatabase(bankn,email,moneyc);
		obj.Creditdb();
		response.sendRedirect("welcom.jsp");
		
	}
}
