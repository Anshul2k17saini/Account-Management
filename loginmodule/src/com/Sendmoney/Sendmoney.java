package com.Sendmoney;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BankDB.BankDB;
import com.Senminus.Sendminus;


@WebServlet("/Sendmoney")
public class Sendmoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sendtoemail=request.getParameter("sendtoemail");
		int sendtoaccountno=Integer.parseInt(request.getParameter("sendtoAccountno")); 
		int amount=Integer.parseInt(request.getParameter("amount"));
		String Bname=request.getParameter("Bname");
		
		HttpSession session=request.getSession();
		String email=session.getAttribute("username").toString();
		
		Sendminus obj1=new Sendminus(email,sendtoemail,Bname,amount,sendtoaccountno);
		if(obj1.check(email))
		{
			obj1.insertIntodebit();
			obj1.insertIntocredit();
			obj1.Addtosendamount();
			obj1.minuemailammount();
			response.sendRedirect("welcom.jsp");	
		}
		else
		{
			PrintWriter out = response.getWriter();
		    out.println("Account has less Amount than you want to send Please add money in your account");
		}
		
		
		
		
		
		
		
	}

	

}
