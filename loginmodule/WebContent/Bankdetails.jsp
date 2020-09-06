<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Edit Data</title>
</head>
<body>
<!-- this is applied so that stranger cant't get access to this url directly -->
<% 
   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("login.jsp");
   }
%>
<style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px} 
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
</style>
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Edit Details Welcom ${username}</h4>
      <ul class="nav nav-pills nav-stacked" >
        <li><a href="userdetails.jsp">Profile_details</a></li>
        <li><a href="Educationdetails.jsp">Education_details</a></li>
        <li  class="active"><a href="Bankdetails.jsp">Bank_details</a></li>
      </ul><br>
    </div>
<div class="col-sm-9" >
       <h1>Education_details</h1>
       <hr>
       <h2>Fill Form To Edit</h2>
       <div class="container">
  <form class="form-horizontal" action="Bankdata" method="get">
    <div class="form-group">
      <label class="control-label col-sm-2" >Email:</label>
      <div class="col-sm-5" >
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Bank name:</label>
      <div class="col-sm-5" >
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="Bname" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Branch name:</label>
      <div class="col-sm-5" >
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="Branchname" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >IFC code</label>
      <div class="col-sm-5" >
        <input type="number" class="form-control" id="email" placeholder="Enter email" name="ifc" required>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" >Account no</label>
      <div class="col-sm-5" >
        <input type="number" class="form-control" id="email" placeholder="Enter email" name="accountno" required>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <input type="checkbox" name="check" required>
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
</div>       
</body>
</html>