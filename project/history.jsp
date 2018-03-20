<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
    <%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String user = (String)session.getAttribute("user");
	ArrayList ar = new ArrayList();
	String us = null;
	int flag=0,count=0,id=0,us1=0;
	Connection conn = null;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/cancer","root","");
		String sql = "select *from registration";
		Statement stmt=conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next())
		{

			 us = rs.getString("mno");
			 if(us.equals(user))
			 {
			 	id = rs.getInt("ID");
				flag=1;
				break;
			 }
		}
			sql = "select * from form";
		stmt=conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next())
		{

			 us1 = rs.getInt("user_id");
			 if(id==us1)
			 {
			 	ar.add(rs.getInt("form_id"));
			 	flag=1;
			 }
		}
			
			request.setAttribute("his",ar);
			%>
			<jsp:forward page="profile.jsp"></jsp:forward>
			<%
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
		
%>
</body>
</html>