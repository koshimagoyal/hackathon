<!DOCTYPE html>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<html>
<head>
	<title><%String msg = (String)session.getAttribute("msg");
  String msg1 = (String)session.getAttribute("msg1");
  if(msg!=null&&msg1!=null)
  out.print(msg+" "+msg1);%></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width", initial scale="1">
  <link rel="shortcut icon" href="logo.jpg" type="image/png" width="10px;" height="10px;">
	<link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="jquery.min.js"></script>
	<script src="bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
  
  <style type="text/css">

    .circle {
  width: 500px;
  height: 500px;
  border-radius: 50%;
  font-size: 50px;
  color: #fff;
  line-height: 500px;
  text-align: center;
  background:#1E90FF;
   opacity: 0.7;
    filter: alpha(opacity=30);

}
    .card {

      margin: auto;
  width: 600px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
}

.header {
    background-color: white;
    padding: 5px;
    font-size: 30px;
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
				<ul class="nav navbar-nav navbar-left" style="padding-top: 10px; padding-bottom: 10px;">
					<li><a href="home.jsp"><img src="logo.jpg" class="responsive" width="110px" height="80px" alt="Logo"></a></li>
				</ul>
      			<ul class="nav navbar-nav navbar-right" style="padding-top: 30px; padding-bottom: 20px; padding-right: 10px;">
        			<li>
        				<p><font color = "#ffffff" face = "georgia" size = "5">
Good
<script type="text/javascript">
var d = new Date()
var time = d.getHours()
if (time < 12)
{
document.write(" morning ")
}
if (time >=12 && time<18)
{
document.write(" afternoon ")
}
if (time >=18)
{
document.write(" evening ")
}
</script>
<% 
  
  if(msg!=null&&msg1!=null)
  out.print(msg+" "+msg1);
   %>
  

</font>
</p>
</li>
<li style="padding-left: 10px; padding-right: 20px;">
  <button type="button" class="btn btn-default" style="background-color: #1E90FF;"><a href="exit.jsp">Log Out</a></button>
</form>
</li>
</ul>
       </div>
      </div>
    </nav>
</header>

<div class="container text-center" style="background-image: url(profile.jpg); width: 100%; height: 730px;">
   
  <%
        String error = (String)request.getAttribute("Error");
        if(error!=null)
        {%>
          <div class="alert alert-danger">
            <%
          out.print(error);
          %>
        </div><%
        }
        String error2 = (String)request.getAttribute("Error2");
        if(error2!=null)
        {%>
          <div class="alert alert-danger">
            <%
          out.print(error2);
          %>
        </div><%
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

        ArrayList arr = (ArrayList)request.getAttribute("show");
        %>

<div class="container" style="width: 100%; height: 200px;"> 
  <div class="card">
    <div class="header">
      <p><font size="10px" color="blue"><b>Form Details</b></font></p>    </div>
    <div class="containr">
 
              <table width='500px' align='center'>
               <tr>
               <td align="left"><font size='5px' color="black">Age</font></td>
                <td align="left"><font size='5px' ><%= arr.get(0) %></font></td>
                <br>
             </tr>
              <tr>
                <td align="left"><font size='5px' color="black">No of Sexual Partners</font></td>
                  <td align="left"><font size='5px' ><%= arr.get(1) %></font></td>
                  </tr>
                   <tr>
                <td align="left"><font size='5px' color="black">Age on first Sexual Intercourse</font></td>
                  <td align="left"><font size='5px'><%= arr.get(2) %></font></td>
                  </tr>
                   <tr>
                <td align="left"><font size='5px' color="black">No of Pregnancies</font></td>
                  <td align="left"><font size='5px'><%= arr.get(3) %></font></td>
                  </tr>
                   <tr>
                <td align="left"><font size='5px' color="black">STDs:Time since diagonsis</font></td>
                  <td align="left"><font size='5px'><%= arr.get(4) %></font></td>
                  </tr>
                   <tr>
                <td align="left"><font size='5px' color="black">Schiller</font></td>
                  <td align="left"><font size='5px' ><%= arr.get(5) %></font></td>
                  </tr>
                </table>
                  
 <br><br>
 <button style="background-color: #1E90FF;" class="btn btn-default" onClick="history.go(-1);return true;">Back</button>
 <br>
</div>
    </div>
  </div>
  </div>
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <div align="center">
  <a href="about.html"><p font size="4" style="display: inline-block; float: left; margin-left: 300px;"><b>About Us</b></p></a>
  <a href="contact.html"><p font size="4" style="display: inline-block; float: right;
  margin-right: 270px;"><b>Contact Us</b></p></a>
</div>
<br>
  <div align="center">
  	<p font size="4"><strong>Copyright@abc</strong></p>
  </div>
</footer>
</body>
</html>