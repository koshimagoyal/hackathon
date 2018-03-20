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
  width: 250px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  width: 400px;
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
  <script>
    function valid()
    {
      document.getElementById("form").submit();
      return true;
    }
    function validat()
    {
      
        var s = document.forms["form"]["sy"].value;
        var a = document.forms["form"]["age"].value;
        var h = document.forms["form"]["hy"].value;
        var r = document.forms["form"]["in"].value;
        var st = document.forms["form"]["sty"].value;
        var sj = document.forms["form"]["sp"].value;
        var p = document.forms["form"]["prg"].value;
        var d = document.forms["form"]["dxcy"].value;
        var g = document.forms["form"]["dhy"].value;
        var hj = document.forms["form"]["dxy"].value;

          if(s==1)
        {
          
          document.getElementById("spd").style.display="block";
          document.getElementById("spy").style.display="block";
        }
        else
        {
          document.getElementById("spd").style.display="none";
          document.getElementById("spy").style.display="none";
        }
        if(h==1)
        {
          document.getElementById("hyr").style.display="block";
        }
        else
        {
          document.getElementById("hyr").style.display="none";
        }
        if(r==1)
        {
            document.getElementById("ipy").style.display="block";
        }
        else
        {
            document.getElementById("ipy").style.display="none";
        }
        if(st==1)
        {
          document.getElementById("stcl").style.display="block";
          document.getElementById("stvc").style.display="block";
          document.getElementById("stcc").style.display="block";
          document.getElementById("stvpc").style.display="block";
          document.getElementById("sts").style.display="block";
          document.getElementById("stgh").style.display="block";
          document.getElementById("stpid").style.display="block";
          document.getElementById("sta").style.display="block";
          document.getElementById("sth").style.display="block";
          document.getElementById("sthb").style.display="block";
          document.getElementById("sthv").style.display="block";
          document.getElementById("snd").style.display="block";
          document.getElementById("sfd").style.display="block";
          document.getElementById("sld").style.display="block";
          document.getElementById("sno").style.display="block";
          document.getElementById("smc").style.display="block";
         

        }
        else
        {
          document.getElementById("stcl").style.display="none";
          document.getElementById("stvc").style.display="none";
          document.getElementById("stcc").style.display="none";
          document.getElementById("stvpc").style.display="none";
          document.getElementById("sts").style.display="none";
          document.getElementById("stgh").style.display="none";
          document.getElementById("stpid").style.display="none";
          document.getElementById("sta").style.display="none";
          document.getElementById("sth").style.display="none";
          document.getElementById("sthb").style.display="none";
          document.getElementById("sthv").style.display="none";
          document.getElementById("smd").style.display="none";
          document.getElementById("sfd").style.display="none";
          document.getElementById("sld").style.display="none";
          document.getElementById("sno").style.display="none";
          document.getElementById("smc").style.display="none";
        }
        
        
    }
    function submiss()
    {
      location.href="history.jsp";
    }
  </script>
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
        				<p><font color = "#ffffff" face = "georgia" size = "5">
Good
<script type="text/javascript">
var d = new Date()
var time = d.getHours()
if (time < 12)
{
document.write(" Morning ")
}
if (time >=12 && time<16)
{
document.write(" Afternoon ")
}
if (time >=16)
{
document.write(" Evening ")
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
        ArrayList arr = (ArrayList)request.getAttribute("his");
        if(arr!=null)
        {
           int size=arr.size();
          
          %>
      <script>
        $(document).ready(function(){
        $('#hisp').modal('show');
        });
      </script>
       <!-- Modal(fill details) -->
  <div class="modal fade" id="hisp" role="dialog" style="padding-top: 5%;">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: #1E90FF;">
          <button type="button" class="close" data-dismiss="modal">X</button>
          <h4 style="background-color: #1E90FF;"><span class="glyphicon glyphicon-lock"></span>Past Submissions</h4>
        </div>
        <div class="modal-body"><%
          if(size==0)
          {

               %>
            <div class="card">
              <div class="containr">
                <p>No form exists till now</p>
              </div>
            </div><%
          }
          else
          {
              for(int i=0;i<size;i++)
              {

            %>
           
                <%
                    out.write("<form action='show.jsp' method='post'>");
                      out.write("<button type='submit' style=' border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; background-color:  #1E90FF;' name='frm' value='"+arr.get(i)+"'>Form No "+arr.get(i)+"</button>");
                    out.write("</form>");
                %>
          
              <% 
          }
          }
          %>
          <br>
          <br>
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
          <%
        }
     
        
%>

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
        %>

  <p align="center" style="font-size: 50px;">
      <strong>Check your health details</strong>
  </p>

  <br>
    <div class="row" style="margin: auto;">
     
   <div class="circle col-sm-4 col-sm-push-1">
     <a href="" data-toggle="modal" data-target="#fill"><p align="center"><strong>Fill fresh details</strong></p> </a>
</div>

<div class="circle col-sm-4 col-sm-push-3">
    <a href="history.jsp"><p align="center"><strong>Past Submissions</strong></p></a>
</div>

    </div>
 
</div>


  <!-- Modal(fill details) -->
  <div class="modal fade" id="fill" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: #1E90FF;">
          <button type="button" class="close" data-dismiss="modal">X</button>
          <h4 style="background-color: #1E90FF;"><span class="glyphicon glyphicon-lock"></span>Fill Details</h4>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="store.jsp" name="form" id="form" onclick="validat()">
            <strong><p id="p1" style="color: red;"></p></strong>
             <div class="form-group">
              <label for="age"><font color="black">Age</font></label>
              <input type="number" class="form-control" name="age" id="age">
            </div>
            <div class="form-group">
              <label for="sex"><font color="black">No of sexual partners</font></label>
              <input type="number" class="form-control" name="sp" id="sp">
            </div>
            <div class="form-group">
              <label for="fsex"><font color="black">Age on First Sexual Intercourse</font></label>
              <input type="number" class="form-control" name="fsp" id="fsp">
            </div>
            <div class="form-group">
              <label for="preg"><font color="black">No of pregnancies</font></label>
              <input type="number" class="form-control" name="prg" id="prg">
            </div>
             <div class="radio" >
              <label  style="font-size: 15px; color: black; padding-right: 35px; padding-left: 0; margin: 0;"><strong><font color="black">Smokes:</font></strong></label>
       <input type="radio" name="sy" id="sy" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="sy" id="sy" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>
            <div class="form-group" name="spd" id="spd" style="display: none;">
              <label ><font color="black">Smokes(per year)</font></label>
              <input type="number" class="form-control" name="smd" value='0'>
            </div>
            <div class="form-group" name="spy" id="spy" style="display: none;">
              <label for="preg"><font color="black">Smokes(packs/year)</font></label>
              <input type="number" class="form-control" name="spdy" value='0'>
            </div>
            <div class="radio">
              <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px; padding-left: 0; margin: 0;"><strong><font color="black">Hormonal Contraceptive:</font></strong></label>
               <input type="radio" name="hy" id="hy" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="hy" id="hy" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>
            <div class="form-group" id="hyr" style="display: none;">
              <label><font color="black">Hormonal Contraceptive(usage per year)</font></label>
              <input type="number" class="form-control" name="hcp" value="0">
            </div>
             <div class="form-group" >
              <label style="font-size: 15px; color: black; padding-right: 35px; padding-left: 0; margin: 0;"><font color="black">IUD:</font></label>
               <input type="radio" name="in" id="in" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="in" id="in" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>
             <div class="form-group" name="ipy" id="ipy" style="display: none;">
              <label><font color="black">IUD(usage per year)</font></label>
              <input type="number" class="form-control" name="iupy" value="0">
            </div>
             <div class="form-group">
              <label style="font-size: 15px; color: black; padding-right: 35px; padding-left: 0; margin: 0;"><font color="black">STDs</font></label>
               <input type="radio" name="sty" id="sty" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="sty" id="sty" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>
            <div class="form-group" id="sno" style="display: none;">
              <label><font color="black">STDs: Number </font></label>
              <input type="number" class="form-control" name="sno" value="0">
            </div>
           <div class="form-group" id="stcl" style="display: none;">
              <label><font color="black">STDs:Condylomatosis </font></label>
              <input type="number" class="form-control" name="stcl" value="0">
            </div>
            <div class="form-group" id="stcc" style="display: none;">
              <label><font color="black">STDs:Cervical Condylomatosis  </font></label>
              <input type="number" class="form-control" name="stcc" value="0">
            </div>
             <div class="form-group" id="stvc" style="display: none;">
              <label><font color="black">STDs:Vaginal Condylomatosis  </font></label>
              <input type="number" class="form-control" name="stvc" value="0">
            </div>
             <div class="form-group" id="stvpc" style="display: none;">
              <label><font color="black">STDs:Vulvo-perineal Condylomatosis  </font></label>
              <input type="number" class="form-control" name="stvpc" value="0">
            </div>
             <div class="form-group" id="sts" style="display: none;">
              <label><font color="black">STDs:Syphilis </font></label>
              <input type="number" class="form-control" name="sts" value="0">
            </div>
             <div class="form-group" id="stpid" style="display: none;">
              <label><font color="black">STDs: Pelvic Inflammatory Disease </font></label>
              <input type="number" class="form-control" name="stpid" value="0">
            </div>
<div class="form-group" id="stgh" style="display: none;">
              <label><font color="black">STDs: Genital Herpes </font></label>
              <input type="number" class="form-control" name="stgh" value="0">
            </div>
            <div class="form-group" id="smc" style="display: none;">
              <label><font color="black">STDs:Molluscum Contagiosum </font></label>
              <input type="number" class="form-control" name="smc" value="0">
            </div>
          <div class="form-group" id="sta" style="display: none;">
              <label><font color="black">STDs:AIDS</font></label>
              <input type="number" class="form-control" name="sta" value="0">
            </div>
<div class="form-group" id="sth" style="display: none;">
              <label><font color="black">STDs:HIV </font></label>
              <input type="number" class="form-control" name="sth" value="0">
            </div>
            <div class="form-group" id="sthb" style="display: none;">
              <label><font color="black">STDs:Hepatitis B </font></label>
              <input type="number" class="form-control" name="sthb" value="0">
            </div>
<div class="form-group" id="sthv" style="display: none;">
              <label><font color="black">STDs:HPV </font></label>
              <input type="number" class="form-control" name="sthv" value="0">
            </div>
<div class="form-group" id="snd" style="display: none">
              <label><font color="black">STDs: Number of diagnosis </font></label>
              <input type="number" class="form-control" name="snd" value="0">
            </div>
            <div class="form-group" id="sfd" style="display: none">
              <label><font color="black">STDs: Time since first diagnosis(year)</font></label>
              <input type="number" class="form-control" name="sfd" value="0">
            </div>
            <div class="form-group" id="sld" style="display: none">
              <label><font color="black">STDs: Time since last diagnosis(year)</font></label>
              <input type="number" class="form-control" name="sld" value="0">
            </div>

            <div class="form-group">
              <label style="font-size: 15px; color: black; padding-right: 35px; padding-left: 0; margin: 0;"><font color="black">Dx:Cancer</font></label>
               <input type="radio" name="dxcy" id="dxcy" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="dxcy" id="dxcy" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>

<div class="form-group">
              <label style="font-size: 15px; color: black; padding-right: 60px; padding-left: 0; margin: 0;"><font color="black">Dx:CIN</font></label>
               <input type="radio" name="dcy" id="dcy" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="dcy" id="dcy" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; "><strong>No</strong></label>
            </div>


            <div class="form-group">
              <label style="font-size: 15px; color: black; padding-right: 57px; padding-left: 0; margin: 0;"><font color="black">Dx:HPV</font></label>
               <input type="radio" name="dhy" id="dhy" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="dhy" id="dhy" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>



            <div class="form-group">
              <label style="font-size: 15px; color: black; padding-right: 94px; padding-left: 0; margin: 0;"><font color="black">Dx</font></label>
               <input type="radio" name="dxy" id="dxy" value="1" style="height:25px; width:25px; vertical-align: middle;"> <label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 35px;"><strong>Yes</strong></label>
              <input type="radio" name="dxy" id="dxy" value="0" style="height:25px; width:25px; vertical-align: middle;"><label class="radio-inline"  style="font-size: 15px; color: black; padding-right: 20px;"><strong>No</strong></label>
            </div>


            <div class="form-group">
          <button type="button"  style="background-color: #1E90FF;" class="btn btn-default pull-right" onclick="return valid()">Send</button>
            </div>
          </form>
          <br>
        </div>
        <div class="modal-footer">
          <button type="submit" style="background-color: #1E90FF;" class="btn btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <button class="btn" style="background-color: #1E90FF;" data-toggle="modal" data-target="#myModal4">NEED HELP?</button>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Modal(help2) -->
  <div class="modal fade" id="myModal4" role="dialog">
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