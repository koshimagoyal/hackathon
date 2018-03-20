<!DOCTYPE html>
<html>
<head>
	<title>Contact Us</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width", initial scale="1">
  <link rel="shortcut icon" href="logo.jpg" type="image/png" width="10px;" height="10px;">
	<link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="jquery.min.js"></script>
	<script src="bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
  <style type="text/css">
  .card {

      margin: auto;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  width: 500px;
}

.header {
    background-color: white;
    padding: 10px;
    font-size: 20px;
    border-bottom: solid;
}

.containr {
background-color: white;
   padding: 10px;
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<header>
	<nav class="navbar navbar-default" style="border-radius: 0px;">
  		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left" >
					<li><a href="home.jsp"><img src="logo.jpg" class="responsive" width="110px" height="80px" alt="Logo"></a></li>
				</ul>
      			<ul class="nav navbar-nav navbar-right" style="padding-top: 30px; padding-bottom: 20px; padding-right: 10px;">
        			<li>
        				<form class="form-inline" action="">
  <div class="form-group">
   
    <input type="email" class="form-control" placeholder="Email" id="email1">
  </div>
  <div class="form-group">
 
    <input type="password" class="form-control" placeholder="Password" id="pwd1">
  </div>
  <button type="submit" class="btn btn-default" style="background-color: #1E90FF;">Submit</button>
   <div class="form-group" style="padding-right: 20px; padding-left: 10px;">
  	<a href="#">Forgot Password?</a>
  </div>
</form>
        </li>
       </ul>
       </div>
      </div>
    </nav>
</header>

<div id="registration" class="container text-center" style="background-image: url(background.jpg); width: 100%; height:800px;">
 <%
        String sucess = (String)request.getAttribute("suc");
        if(sucess!=null)
        {%>
           <div class="alert alert-success">
  <strong><%out.print(sucess);%></strong> 
</div>
<%
        }
        String error3 = (String)request.getAttribute("Error3");
        if(error3!=null)
        {%>
          <div class="alert alert-danger">
            <%
          out.print(error3);
          %>
        </div><%
        }
        String error4 = (String)request.getAttribute("Error4");
        if(error4!=null)
        {%>
          <div class="alert alert-danger">
            <%
          out.print(error4);
          %>
        </div><%
        }

    %> 
  <div class="card">
      <div class="header">
          <h1 style="color: blue;"><font size="10px"><strong>CONTACT US</strong></font></h1>
        </div>
<div class="containr">
  <form name="contact" onsubmit="return validation()" method="post" action="contact.jsp" style="padding-left: 10px; padding-right: 10px;">
    <div class="form-group">
   <label><font size="3px"><span class="glyphicon glyphicon-user"></span></font><font size="5px">  Name: </font></label> 
    <input type="text" class="form-control" id="nam" name="nam" required="required">
  </div>
  <div class="form-group">
    <label><font size="4px"><span class="glyphicon glyphicon-envelope"></span></font><font size="5px">   Email: </font></label>
    <input type="email" class="form-control" id="email" name="email" required="required">
  </div>
  <div class="form-group">
    <label for="email"><font size="3px"><span class="glyphicon glyphicon-pencil"></span></font><font size="5px">   Message: </font></label>
    <textarea class="form-control" rows="5" id="comment"></textarea>
  <br>
  <button type="submit" style="background-color: #1E90FF;" class="btn btn-default">Submit</button>
  <br><br>
</form>
      </div>    
</div>

  </div>
</div>
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <div align="center">
  <a href="home.jsp"><p font size="4" style="display: inline-block; float: left; margin-left: 300px; color: #fff;"><b>Home</b></p></a>
  <a href="about.html"><p font size="4" style="display: inline-block; float: right;
  margin-right: 270px; color: #fff;"><b>About Us</b></p></a>
</div>
<br>
  <div align="center">
    <p font size="4" style="color: #fff;"><strong>Copyright@abc</strong></p>
  </div>
</footer>
</body>
</html>