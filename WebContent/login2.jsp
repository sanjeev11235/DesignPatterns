<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here</title>
</head>
<body>
<%
String v1=request.getParameter("Username");
String v2=request.getParameter("Password");


//System.out.println(v1);
//System.out.println(v2);
//System.out.println(v3);
//System.out.println(v4);
String logtype = request.getParameter("log");
		//out.println(logtype);
		
		String name = "";
if(logtype.equals("c"))
		{

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/s", "root","abhi");
	PreparedStatement ps=c.prepareStatement("select * from ShopListReg where email=? and password=?");
	ps.setString(1,v1);
	ps.setString(2,v2);
	
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		String Username=rs.getString("Username");
		session.setAttribute("Username", Username);
		response.sendRedirect("index.jsp");
		
	}
	else
	{
		response.sendRedirect("signup.jsp");
	}
		
	
}
catch(Exception e)
{
	out.println(e);
}
		}
else
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/s", "root","abhi");
		PreparedStatement ps=c.prepareStatement("select * from VenderReg where email=? and password=?");
		ps.setString(1,v1);
		ps.setString(2,v2);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			String Username=rs.getString("Username");
			session.setAttribute("Username", Username);
			response.sendRedirect("venderindex.jsp");
			
		}
		else
		{
			response.sendRedirect("signup.jsp");
		}
			
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
}




%>



</body>
</html>