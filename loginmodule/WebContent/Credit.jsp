<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-color: lightblue;
}
</style>
<body>
<%!
private final String url="jdbc:mysql://localhost:3306/web";
private final String USER_NAME="root";
private final String PASSWORD="Anshul@123";
%>
<h1><center>Credit details</center></h1>

<%
try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,USER_NAME,PASSWORD);
	Statement st=con.createStatement();
	String sql="select * from credit where Email=?";
	PreparedStatement stmt=con.prepareStatement(sql);  
	stmt.setString(1,session.getAttribute("username").toString());  
	ResultSet rs=stmt.executeQuery();  
	out.println("<html><body> <center><table border='1'><tr><th>UserName</th><th>Amount</th><th>Bank</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>"); 
	}
	out.println("</table></center></body></html>");
	 con.close();  
}
catch(Exception e){ 
	e.printStackTrace();
}		
%>


</body>
</html>