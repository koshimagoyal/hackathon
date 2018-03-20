<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String fname = request.getParameter("nam");
	String email = request.getParameter("email");
	String pas = request.getParameter("comment");
	String mnw=null;
	int flag=0,count=-1;
	Connection conn = null;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/cancer","root","");
		String  sql = "insert into contact(name,email,message) values('"+fname+"','"+email+"','"+pas+"')";
		Statement stmt=conn.createStatement();
		
			int action = conn.createStatement().executeUpdate(sql);
			conn.setAutoCommit(true);
			if(action>=1)
			{
				request.setAttribute("suc","Your response has been submitted");
				%>
			<jsp:forward page="contact1.jsp"></jsp:forward>
			<%
			
			}
			else
			{	
			request.setAttribute("Error3","Cannot save data");
			%>
			<jsp:forward page="contact1.jsp"></jsp:forward>
			<%
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>