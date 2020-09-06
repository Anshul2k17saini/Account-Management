<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="google-signin-client_id" content="839578818077-d2v33d0i0qfhp142o7ev8hmvsgsgk09j.apps.googleusercontent.com">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css"><!--for google facebook icones we use this-->
    <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
<title>AM Home</title>
</head>
<body>
     <nav class="navbar navbar-dark navbar-expand-sm big-primary fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button class="buttone1" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"><strong>Menu</strong>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" data-toggle="modal" data-target="#myModal" href="#Login"><strong>Login/Signup</strong></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#Addphone">Add Phone no</a></li>
        <li><a href="#contact">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center">
   <h1>Account Management</h1>
  <p>We are here to help you</p>
  <p>We manage everything be stress free</p>                  
</div>
<div class="container-fluid bg-primary text-white">
<h2><span>What Our Customers Say</span></h2>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol> 
   <div class="carousel-inner" role="listbox">
    <div class="item active">
    <h4>"This company is the best.I am proud to be the part of this company"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>
    </div>
    <div class="item">
      <h4>"One word... WOW!I am lucky to be a apart of this company"<br><span style="font-style:normal;">John Doe, Salesman, Rep Inc</span></h4>
    </div>
    <div class="item">
      <h4>"Could I... BE any more happy with this company?"<br><span style="font-style:normal;">Chandler Bing, Actor, FriendsAlot</span></h4>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
 </div>   
</div>
<style>
body {
  background-color:Black;
}
   .jumbotron{
    background-color:DodgerBlue;
    color:white;
    padding: 100px 25px;//to put in correct size and width
   }
   .container-fluid {
    padding: 50px 50px;
    }
   .bg-grey{
     background-color: #f6f6f6;
   }
   .carousel-control.right, .carousel-control.left {
  background-image: none;
  color: #f4511e;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid DodgerBlue ;
}

.button1:hover {
  background-color: DodgerBlue;
  color: white;
}

.carousel-indicators li {
  border-color: #f4511e;
}

.carousel-indicators li.active {
  background-color: #f4511e;
}
.modal-title{
  color: black;
  font-size: 40px;
}

.item h4 {
  font-size: 19px;
  line-height: 1.375em;
  font-weight: 400;
  font-style: italic;
  margin: 70px 0;
}
.modal-content{
  background-color:bg-grey;
  color: black;
  
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
.update{ 
  color: white;
  padding: 15px 32px;
  display: inline-block;
  font-size: 10px;
}
.fa {
  padding: 20px;
  font-size: 30px;
  width: 90px;
  text-decoration: none;
  margin: 5px 2px;
}
.fa:hover {
  opacity: 0.7;
}

.fa-google {
  background: #dd4b39;
  color: white;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}
.fa-linkedin {
  background: #007bb5;
  color: white;
}
.fa-youtube {
  background: #bb0000;
  color: white;
}
.abc{
   background: #bb0000;
  color: white;
}
input[type=text] {
  color:black;
}
input[type=password] {
  color:black;
}
</style>  
<!-- Container (About Section) -->
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
  </div>
</div>
<div  class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div>
      <h2>Our Values</h2>
      <h4><strong>MISSION:</strong> Our mission to make in india</h4>      
      <p><strong>VISION:</strong> vision is to increase economi</p>
    </div>
  </div>
</div>
<div class="container-fluid bg-grey text-white" id=about>
   <div class="row">
    <div class="col-sm-10">
      <span><h2> About Our Sponsers Are here you go</h2>></span>
       <div class="update">
            <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus fa-google "></i> Google</a>   
            <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i> Facebook</a>
            <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i> Linked in</a>
            <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i> Twitter</a>
            <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube"></i> Youtube</a>
        </div>

    </div>
   </div>

</div>  

<div id=contact class="container-fluid bg-grey text-black">
  <h2>CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <span><p>Please give user Contact details.</p></span>
    </div>
    <div class="col-sm-7">
      <div class="row">
      <form action="Contact" method="get">
        <div class="col-sm-6 form-group">
          <input class="form-control"  name="Phoneno" placeholder="Phoneno" type="number" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control"  name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <input class="form-control" id="comments" name="comments" placeholder="Comment" rows="5" required>
      <div class="row">
        <div class="col-sm-12 form-group">
           <input class="button1"  type="submit" value="submit">
        </div>
      </div>
      </form>
    </div>
  </div>
</div>
  <!-- Modal -->
<div id=Addphone class="container-fluid bg-primary">
   <h2>Phone no</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours,fill the contact details above.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> New Delhi,India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
    </div>
<center>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-**********************************************-->
      <div class="modal-content" >
        <div class="modal-header">

          <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h5 class="modal-title">LOGIN</h5>
        </div>
        <div class="modal-body">
          <h2>
             <form action="Login" method="post">
            Enter Username<input class="form-control" class="col-xs-4" type="text" name="uname"required><br>
            Enter Password<input  class="form-control"class="col-xs-3" type="password" name="pass" required><br>
            <input class="button1" type="submit" value="SIGN UP">
      </form>
     <form action="Rigister.jsp">
     <input class="button1" type="submit" value="SIGN IN">
     </form>      
      </h2>  
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</div> </center> 
</body>
</html>