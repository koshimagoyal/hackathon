<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.sql.*" %>
<%
String result;

// Recipient's email ID needs to be mentioned.
   String to = request.getParameter("email3");
   String msg=null,msg1=null;
Connection conn = null;
   int flag=0;
   try
   {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/cancer","root","");
      String sql = "select *from registration";
      Statement stmt=conn.createStatement();
      ResultSet rs = stmt.executeQuery(sql);
      while(rs.next())
      {
         String nam = rs.getString("email");

         if(to.equals(nam))
         {
             msg = rs.getString("fname");
             msg1 = rs.getString("lname");
            flag=1;
         }
      }
      if(flag!=1)
      {
         request.setAttribute("Error4","email id do not match");
            %>
            <jsp:forward page="home.jsp"></jsp:forward>
            <%
      }
      else
      {
          
   
   // Sender's email ID needs to be mentioned
   String from = "koshimagoyal97@gmail.com";
   // Assuming you are sending email from localhost
   String host = "smtp.gmail.com";
session.setAttribute("email",to);
session.setMaxInactiveInterval(120);
   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);
   properties.setProperty("mail.smtp.port", "587");
   properties.setProperty("mail.smtp.auth", "true");
   properties.setProperty("mail.smtp.starttls.enable", "true");

   Authenticator auth = new Authenticator(){
   public PasswordAuthentication getPasswordAuthentication()
   {
      return new PasswordAuthentication("koshimagoyal97@gmail.com","radhe krishna");
   }};

   // Get the default Session object.
   Session mailSession = Session.getInstance(properties,auth);

   try {
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      
      // Set From: header field of the header.
      message.setFrom(new InternetAddress("koshimagoyal97@gmail.com"));
      
      // Set To: header field of the header.
      message.setRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Forgot Password");
      
      String body = "http://localhost:8080/hackathon/forgot.jsp?email="+to;
      // Now set the actual message
      message.setText("http://localhost:8080/hackathon/forgot.jsp");
      

      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   } catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message...."+mex;
   }
      }
      request.setAttribute("result",result);
      request.setAttribute("msg",msg);
      request.setAttribute("msg1",msg1);


   }
   catch(Exception e)
   {
      out.print(e);
   }
  
%>

<html>
   <head>
      <title><%
  out.print((String)request.getAttribute("msg")+" "+(String)request.getAttribute("msg1"));%></title>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width", initial scale="1">
  <link rel="shortcut icon" href="logo.jpg" type="image/png" width="10px;" height="10px;">
   <link rel="stylesheet" href="bootstrap-3.3.7\dist\css\bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
   <script src="jquery.min.js"></script>
   <script src="bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
   </head>
   
   <body>
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
      
     
  <div class="alert alert-success">
         <% 
            out.println((String)request.getAttribute("result") + "\n");
         %>
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