<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css"><!--for google facebook icones we use this-->
    <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Welcom AM</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//this for not going back after logout from website for HTTp 1.1
   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("login.jsp");
   }
%>
  <nav class="navbar navbar-dark navbar-expand-sm big-primary fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" data-toggle="modal" data-target="#myModal" ><strong>${username}/EditData</strong></a>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar">
     <form action="Logout" class="navbar-form" id="nameform">
     </form>
      <button  type="submit" form="nameform" value="Submit" class="pull-right">Logout</button>
    </div>
  </div>
  
</nav>

<div class="jumbotron text-center">
   <h1>Welcom To Your Account ${username}</h1>
   <a href="video.jsp">new cars review video here</a>
<p> Bank Name </p>
<% 
try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","Anshul@123");
	Statement st=con.createStatement();
	String sql="select Bankname from bankdb where Email=?";
	PreparedStatement stmt=con.prepareStatement(sql);  
	stmt.setString(1,session.getAttribute("username").toString());  
	ResultSet rs=stmt.executeQuery();  
	
	out.println("<html><body>");
	while(rs.next())
	{
		out.println("<p>"+rs.getString(1)+"</p>"); 
	}
	out.println("</body></html>");
	 con.close();  
}
catch(Exception e){ 
	e.printStackTrace();
}		
%>
   
</div>
 </div>   
</div>
<style>
   .jumbotron{
    background-color:purple;
    color:white;
    padding: 100px 25px;//to put in correct size and width
   }
   .container-fluid {
    padding: 50px 50px;
    background-color:purple;
    }
   .bg-grey{
     background-color: #f6f6f6;
   }
   .carousel-control.right, .carousel-control.left {
  background-image: none;
  color: #f4511e;
}
.navbar-header{
  margin-left:20px;
  width:10%;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid purple ;
}
.modal-header
{ background-color:bg-grey; }

.button1:hover {
  background-color: purple;
  color: white;
}

.carousel-indicators li {
  border-color: #f4511e;
}

.carousel-indicators li.active {
  background-color: #f4511e;
}
.modal-header{
  background-color: purple;
  color:white;
}
hr.new4 {
  border: 1px solid black;
}
.img{
width:150px
}
.item h4 {
  font-size: 19px;
  line-height: 1.375em;
  font-weight: 400;
  font-style: italic;
  margin: 70px 0;
}

.item span {
  font-style: normal;
}
.navbar {
  margin-bottom: 0;
  background-color:black;
  z-index: 9999;
  border: 0;
  font-size: 12px !important;
  line-height: 1.42857143 !important;
  letter-spacing: 4px;
  border-radius: 0;
}
.update{/* Green */
  background-color:black; 
  color: white;
  padding: 15px 32px;
  display: inline-block;
  font-size: 10px;
}
button{
border-radius: 8px;
background-color: black; /* Green */
  color: DodgerBlue;
  font-size: 16px;
  padding: 5px;
  margin: 4px 2px;
}
</style>
<div id=contact class="container-fluid bg-grey text-black">
  <h2><strong>Debit Amount Details</strong></h2>
      <div class="row">
        <% 
try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,USER_NAME,PASSWORD);
	Statement st=con.createStatement();
	String sql="select * from debit where Email=?";
	PreparedStatement stmt=con.prepareStatement(sql);  
	stmt.setString(1,session.getAttribute("username").toString());  
	ResultSet rs=stmt.executeQuery();  
	out.println("<html><body><center><table border='1'><tr><th>UserName</th><th>Amount</th><th>Debited To</th></th><th>Bank</th></tr>");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>"); 
	}
	out.println("</table></center></body></html>");
	 con.close();  
}
catch(Exception e){ 
	e.printStackTrace();
}		
%>
    </div>
  </div>
<div id=contact class="container-fluid bg-grey text-black">
  <h2><strong>Credited Amount Details</strong></h2>
      <div class="row">
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
<hr class="new4">
    </div>
 <!--********* Model for user send money ******** -->
<button  class="button1" data-toggle="modal" data-target="#sendmoney" >Send Money</button>
<div id="sendmoney" class="modal fade" role="dialog"> 
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
               <div class="modal-header">
                   <h1>Send Money</h1>
              </div>
              <div class="modal-body">
                  <div class="container">
  <form class="form-horizontal" action="Sendmoney" method="get">
    <div class="form-group">
      <label class="control-label col-sm-2" >Send to Email:</label>
      <div class="col-sm-5" >
        <input type="email" class="form-control" id="email" placeholder="Enter Send to email" name="sendtoemail" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Send to Accountno:</label>
      <div class="col-sm-5">          
        <input type="number" class="form-control"  placeholder="Enter Send to Accountno" name="sendtoAccountno" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Send to Bank name:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control"  placeholder="Enter Send to Bankname:" name="Bname" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Send Amount</label>
      <div class="col-sm-5">
        <input type="number" class="form-control"  placeholder="Enter Send Amount" name="amount" required> 
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-info btn-lg" data-dismiss="modal">Close</button>
             </div>
        </div>
    </div>
 </div>
<!-------------------------------------------------------------------------------------------------------------------------------------------------->
<button class="button1" data-toggle="modal" data-target="#addmoney" >Add Money</button>
<hr class="new4">
<h1>Total Balance</h1>
<% 
try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","Anshul@123");
	Statement st=con.createStatement();
	String sql="select Amount from AmountDb where Email=?";
	PreparedStatement stmt=con.prepareStatement(sql);  
	stmt.setString(1,session.getAttribute("username").toString());  
	ResultSet rs=stmt.executeQuery();  
	
	out.println("<html><body>");
	while(rs.next())
	{
		out.println("<h2>"+rs.getInt(1)+"</h2>"); 
	}
	out.println("</body></html>");
	 con.close();  
}
catch(Exception e){ 
	e.printStackTrace();
}		
%>
<hr class="new4">
<div id="addmoney" class="modal fade" role="dialog"> 
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
               <div class="modal-header">
                   <h1>Add Money</h1>
              </div>
              <div class="modal-body">
                   <div class="container">
  <form class="form-horizontal" action="Addmoney" method="get">
    <div class="form-group">
      <label class="control-label col-sm-2" >Account no:</label>
      <div class="col-sm-5">          
        <input type="number" class="form-control"  placeholder="Enter Accountno" name="accountno" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Bank name:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control"  placeholder="Enter  IFC Code:" name="Bname" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Amount:</label>
      <div class="col-sm-5">
        <input type="text" class="form-control"  placeholder="Enter Amount" name="amount" required> 
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
         
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-info btn-lg" data-dismiss="modal">Close</button>
             </div>
        </div>
    </div>
 </div>
<!-------------------------------------------------------------------------------------------------------------------------------------------------->
 <!--********* Model for user id ******** -->
 
 <div id="myModal" class="modal fade" role="dialog"> 
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
               <div class="modal-header">
                    <img src="img/anshul4.jpg" alt="fuck off" class="img">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <input type="file" name="uploadimage">
                   <h4 class="modal-title">profile pic uploade with button</h4>
              </div>
              <div class="modal-body">
              <%!
private final String url="jdbc:mysql://localhost:3306/web";
private final String USER_NAME="root";
private final String PASSWORD="Anshul@123";
%>
<% 
try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,USER_NAME,PASSWORD);
	Statement st=con.createStatement();
	String sql="select * from login where uname=?";
	PreparedStatement stmt=con.prepareStatement(sql);  
	stmt.setString(1,session.getAttribute("username").toString());  
	ResultSet rs=stmt.executeQuery(); 
	out.println("<html><body>");
	while(rs.next())
	{
		out.println("<h3>Email:</h1>"+rs.getString(1)+"<hr><h3>First Name</h3>"+rs.getString(3)+"<hr><h3>Last Name</h3>"+rs.getString(4)+""); 
	}
	out.println("</body></html>");

	 con.close();  
}
catch(Exception e){ 
	e.printStackTrace();
}		
%>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-info btn-lg" data-dismiss="modal">Close</button>
                 <button  type="submit"  form="edit" class="btn btn-info btn-lg" >Edit Data</button>
                 <form action="userdetails.jsp" id="edit"> </form> 
             </div>
        </div>
    </div>
 </div>
 <!--********* Model for Edit data ******** -->

 
</body>
</html>