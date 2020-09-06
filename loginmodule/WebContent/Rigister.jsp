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
<title>Register</title>
</head>
<style>
body {
  background-color: DodgerBlue;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid DodgerBlue ;
  font-size: 22px
  
}

.button1:hover {
  background-color: DodgerBlue;
  color: white;

}
.logiinbox{
   width: 400px;
   height: 600px;
   background:LightGray;
   color: black;
   top:50%;
   left:50%;
   position:absolute;
   transform: translate(-50%,-50%);
   box-sizing: border-box;
   padding:80px 50px;


 }
</style>
<body>
<div class="logiinbox">
 <center><h1>Fill Form To Register</h1></center>
  <form action="Rig" method="get">
           <center>
             <p>First Name</p><input type="text" size="30" name="name" required><br>
            <p>Last last name</p>
            <input  type="text" name="lname" size="30" required><br>
            <p>Enter Email_id</p>
            <input type="email" name="uname" size="30" required><br>
            <p>Enter Password</p>
            <input type="password" name="pass" size="30" required><br>
            <p>Enter same Password</p>
            <input type="password" name="repass" size="30" required><br>
            <input class="button1" type="submit" value="Sign in" >
            <button class="button1" data-toggle="modal" data-target="#addmoney" >Add Bank detais</button>
            </center>
     </form>
 </div>
<div id="addmoney" class="modal fade" role="dialog"> 
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
               <div class="modal-header">
                   <h1>Add Money</h1>
              </div>
              <div class="modal-body">
                   <div class="container">
  <form class="form-horizontal" action="Amountdata" method="get">
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
      <label class="control-label col-sm-2" >Account no</label>
      <div class="col-sm-5" >
        <input type="number" class="form-control" id="email" placeholder="Enter email" name="accountno" required>
      </div>
    </div>
    <input type="hidden" name="namePage" value="sourcePage" />
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <input type="checkbox" name="check" required>
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
</body>
</html>