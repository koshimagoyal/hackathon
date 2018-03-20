<!DOCTYPE html>
<html>
<head>
	<title>Login Again</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width", initial scale="1">
  <link rel="shortcut icon" href="logo.jpg" type="image/png" width="10px;" height="10px;">
	<link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="jquery.min.js"></script>
	<script src="bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<header>
	<nav class="navbar navbar-default" style="border-radius: 0px;">
      <div class="container-fluid">
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-left" style="padding-top: 10px; padding-bottom: 10px;">
          <li><a href="home.jsp"><img src="logo.jpg" class="responsive" width="110px" height="80px" alt="Logo"></a></li>
        </ul>
            <ul class="nav navbar-nav navbar-right" style="padding-top: 30px; padding-bottom: 20px; padding-right: 10px;">
              <li>
                <form class="form-inline" action="login.jsp" method="post">
  <div class="form-group">
   
    <input type="email" class="form-control" placeholder="Email" id="email1" name="emaillog" required="required">
  </div>
  <div class="form-group">
 
    <input type="password" class="form-control" placeholder="Password" id="pwd1" name="passlog" required="required">
  </div>
  <button type="submit" class="btn btn-default" style="background-color: #1E90FF;">Submit</button>
   <div class="form-group" style="padding-right: 20px; padding-left: 10px;">
    <a href="" data-toggle="modal" data-target="#forgot">Forgot Password?</a>
  </div>
</form>
              </li>
            </ul>
          </div>
        </div>
    </nav>
</header>
<!-- Modal(forgot password) -->
  <div class="modal fade" id="forgot" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: #1E90FF;">
          <button type="button" class="close" data-dismiss="modal">X</button>
          <h4 style="background-color: #1E90FF;"><span class="glyphicon glyphicon-lock"></span>Forgot Password</h4>
        </div>
        <div class="modal-body">
          <form role="form" action="for.jsp" method="post" id="formto" name="formto">
            <strong><p id="p3" style="color: red;"></p></strong>
            <div class="form-group">
              <label for="email">Email Id</label>
              <input type="email" class="form-control" id="emailto" name="email3" placeholder="email@example.com">
            </div>
            <div class="form-group">
          <button type="button" style="background-color: #1E90FF;" class="btn btn-default pull-right" onclick="return validate()">Send</button>
            </div>
          </form>
          <br>
        </div>
        <div class="modal-footer">
          <button type="submit" style="background-color: #1E90FF;" class="btn btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <button class="btn" style="background-color: #1E90FF;" data-toggle="modal" data-target="#myModal3">NEED HELP?</button>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Modal(help2) -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: #1E90FF;">
          <button type="button" class="close" data-dismiss="modal">X</button>
          <h4 style="background-color: #1E90FF;"><span class="glyphicon glyphicon-question-sign"></span>HELP</h4>
        </div>
        <div class="modal-body">
          <form role="form"> 
            <div class="form-group">
              <p>Enter email id used at the time of signup.</p>
            </div>
          </form>
          <br>
        </div>
        <div class="modal-footer">
          <button type="submit" style="background-color: #1E90FF;" class="btn btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
        </div>
      </div>
    </div>
  </div>
  

<div id="registration" class="container text-center" style="background-image: url(background.jpg); width: 100%; height:850px;">

  <div class="alert alert-success">
  <strong>Success!</strong> Your password has been reset. Login Again
</div>
  </div>
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <div align="center">
  <a href="about.html"><p font size="4" style="display: inline-block; float: left; margin-left: 300px; color: #fff;"><b>About Us</b></p></a>
  <a href="contact.html"><p font size="4" style="display: inline-block; float: right;
  margin-right: 270px; color: #fff;"><b>Contact Us</b></p></a>
</div>
<br>
  <div align="center">
    <p font size="4" style="color: #fff;"><strong>Copyright@abc</strong></p>
  </div>
</footer>
</body>
</html>