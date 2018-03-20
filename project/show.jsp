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
	String nam = request.getParameter("frm");
	int no = Integer.parseInt(nam);
	ArrayList ar = new ArrayList();
	String us = null;
	int flag=0,count=0,id=0,us1=0;
	Connection conn = null;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/cancer","root","");
		String sql = "select * from form";
		Statement stmt=conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next())
		{
			id=rs.getInt("form_id");
               if(id==no)
               {
               		ar.add(rs.getString("age"));
					ar.add(rs.getString("sexp"));
					ar.add(rs.getString("fsc"));
					ar.add(rs.getString("preg"));
					ar.add(rs.getString("std"));
					ar.add(rs.getString("sch"));
					flag=1;
               }
			
		}
		if(flag!=1)
		{
			request.setAttribute("Error2","Try Again");
			%>
			<jsp:forward page="profile.jsp"></jsp:forward>
			<%
		}
		else
		{
			request.setAttribute("show",ar);
		    %>
			<jsp:forward page="final.jsp"></jsp:forward>
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