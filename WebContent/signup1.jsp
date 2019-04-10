<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String s = request.getParameter("Username");
String s1 = request.getParameter("E_mail");
String s2 = request.getParameter("Password");
String s3 = request.getParameter("Confirm Password");
String logtype = request.getParameter("log");
String name = "";

if(logtype.equals("c"))
{

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","abhi");
	PreparedStatement ps=c.prepareStatement("insert into ShoplistReg values(?,?,?,?)");
	ps.setString(1,s);
	ps.setString(2,s1);
	ps.setString(3,s2);
	ps.setString(4,s3);
	int rs=ps.executeUpdate();
	if(rs>0){
		response.sendRedirect("login.jsp");
	}
	else{
		response.sendRedirect("signup.jsp");
	}
}catch(Exception e){
	out.println(e);
}
}
else
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");

		Connection	con	=	DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","abhi");
		PreparedStatement	ps=con.prepareStatement("insert into VenderReg values(?,?,?,?)");
		ps.setString(1,s);
		ps.setString(2,s1);
		ps.setString(3,s2);
		ps.setString(4,s3);
		int rs=ps.executeUpdate();
		if(rs>0)
		{
			
		
			response.sendRedirect("venderindex.jsp");
		}
		else
		{
			response.sendRedirect("signup.jsp");
				
		}


	}
	catch(Exception	e)
	{
		System.out.println(e);	
	}
	
}


%>
</body>
</html>