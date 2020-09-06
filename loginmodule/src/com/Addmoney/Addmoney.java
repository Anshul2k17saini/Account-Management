package com.Addmoney;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.AddmoneyDB.AddmoneyDB;
import com.Senminus.Sendminus;

@WebServlet("/Addmoney")
public class Addmoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int accountno=Integer.parseInt(request.getParameter("accountno")); 
		int amount=Integer.parseInt(request.getParameter("amount"));
		String Bname=request.getParameter("Bname");
		HttpSession session=request.getSession();
		String email=session.getAttribute("username").toString();
		AddmoneyDB obj1=new AddmoneyDB(email,Bname,amount,accountno);
		obj1.insertIntocredit();
		obj1.Addtoamount();
		response.sendRedirect("welcom.jsp");	
	}

}
