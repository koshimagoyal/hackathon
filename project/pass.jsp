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
	String name = (String)session.getAttribute("user");
	String pass = request.getParameter("pwd");
	String fname=null,lname=null,nam=null;
	Connection conn = null;
	int flag=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/cancer","root","");
		String sql = "select * from registration";
		Statement stmt=conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next())
		{
			nam = rs.getString("mno");
			if(name.equals(nam))
			{
				fname=rs.getString("fname");
				lname=rs.getString("lname");
				break;
			}
		}
		String s = "update registration set pass='"+pass+"' where mno='"+nam+"'";
			int action = conn.createStatement().executeUpdate(s);
			conn.setAutoCommit(true);
			session.setAttribute("user",nam);
			session.setAttribute("msg",fname);
				session.setAttribute("msg1",lname);
				%>
				<jsp:forward page="reset.jsp"></jsp:forward>
				<% 
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
    
%>
</body>
</html>