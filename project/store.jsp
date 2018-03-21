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
	String user = (String)session.getAttribute("user");
	String sp = request.getParameter("sp");
	String fsp = request.getParameter("fsp");
	String prg = request.getParameter("prg");
	String sy = request.getParameter("sy");
	String smd = request.getParameter("smd");
	String age = request.getParameter("age");
	String spdy = request.getParameter("spdy");
String hy = request.getParameter("hy");
	String hcp = request.getParameter("hcp");
	String iny = request.getParameter("iny");
	String iupy=request.getParameter("iupy");
	String sty = request.getParameter("sty");
	String stcl = request.getParameter("stcl");
	String stcc = request.getParameter("stcc");
	String stvpc = request.getParameter("stvpc");
	String stvc = request.getParameter("stvc");
	String sts = request.getParameter("sts");
	String stpid = request.getParameter("stpid");
	String stgh = request.getParameter("stgh");
String sta = request.getParameter("sta");
	String sth = request.getParameter("sth");
	String sthb = request.getParameter("sthb");
	String sthv = request.getParameter("sthv");
	String snd = request.getParameter("snd");
	String sfd = request.getParameter("sfd");
	String sld = request.getParameter("sld");
	String dxcy = request.getParameter("dxcy");
	String dcy = request.getParameter("dcy");
	String dhy = request.getParameter("dhy");
	String dxy = request.getParameter("dxy");
	String us = null;
	int flag=0,count=0,id=0;
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
			 if(user.equals(us))
			 {
			 	id = rs.getInt("ID");
				flag=1;
				break;
			 }
		}
		if(flag!=1)
		{
			request.setAttribute("Error","Try Again");
			%>
			<jsp:forward page="profile.jsp"></jsp:forward>
			<%
		}
		else
			{
				sql = "insert into form(age,sp,fsp,prg,sy,smd,spdy,hy,iny,iupy,sty,stcl,stcc,stvpc,stvc,sts,stpid,stgh,sta,sth,sthb,sthv,snd,sfd,sld,dxcy,dcy,dhy,dxy,hcp,user_id) values('"+age+"','"+sp+"','"+fsp+"','"+prg+"','"+sy+"','"+smd+"','"+spdy+"','"+hy+"','"+iny+"','"+iupy+"','"+sty+"','"+stcl+"','"+stcc+"','"+stvpc+"','"+stvc+"','"+sts+"','"+stpid+"','"+stgh+"','"+sta+"','"+sth+"','"+sthb+"','"+sthv+"','"+snd+"','"+sfd+"','"+sld+"','"+dxcy+"','"+hcp+"','"+dcy+"','"+dhy+"','"+dxy+"','"+id+"')";
		
			int action = conn.createStatement().executeUpdate(sql);
			conn.setAutoCommit(true);
			if(action>=1)
			{
				%>
			<jsp:forward page="<jsp:forward page="http://127.0.0.1:5000/?age=<%= age%>&sex_part=<%=sp%>&f_s_i=<%=fsp%>&n_o_preg=<%=prg%>&smokes=<%=sy%>&smokes_year=<%=smd%>&smokes_pack=<%=spdy%>&hormonal_contra=<%=hcp%>&hormonal_year=<%=hy%>&iud<%=iny%>&iud_year<%=iupy%>&std=<%sty%>&std_n=<%=stcl%>&std_co=<%=stcc%>&std_cer=<%=stvpc%>&std_va=<%=stvc%>&std_vulvo=<%=sts%>&std_syp=1&std_pid=<%=stpid%>&std_geni=<%=stgh%><%=stgh%>&std_mollu=0&std_aids=<%=sta%>&std_hiv=<%=sth%>&std_hepa=<%=sthb%>&std_hpv=<%=sthv%>&no_std=<%=snd%>&f_diag=<%=sfd%>&l_diag=<%=sld%>&dx_cancer=<%=dxcy%>&dx_cin=<%=dcy%>&dx_hpv=<%=dhy%>&dx=<%=dxy%>"></jsp:forward>
			<%
			
			}
			else
			{	
			request.setAttribute("Error3","Cannot save data");
			%>
			<jsp:forward page="profile.jsp"></jsp:forward>
			<%
			}
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>